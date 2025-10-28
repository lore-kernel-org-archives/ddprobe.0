Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 185A33328E5
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761663594; cv=none; b=oRiT/x6MfNbUI1dsyH783NUEGauIGRQwKgCVTuMkpBZJfoLRA6hzvnoNiItIpGUKP84UoQJAG7VgABqsC8QdWgqgKsWpD3mVuN9qZfkYmAj1tpQCA20gz93361bdZQ0YO78lhGGCBUUhi/uhoMgh6esRokMVoPiUutNZQ6Qv6vY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761663594; c=relaxed/simple;
	bh=/p1IJztdgvUl3sf2OkfUeSBdeRteKbSk2EgOxefp5RU=;
	h=To:Subject:From:Message-Id:Date; b=RjI+7tOyBhRfjp2hX4ugEbZrUSKGJ6RDYwA/vVJCMEK5x1E17Y+xHq/fKRhJRySHYk0vouSHYKrOuBKojme6HYcNvXaVJyNmrREsR6Edd9QmzsK0rjbzIqEqU48xQjfDR7VxWqOit4n/36tUvCRm5Z5k4XoTN97/acroobl+F0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XSJwIUpa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XSJwIUpa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA14C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761663593;
	bh=/p1IJztdgvUl3sf2OkfUeSBdeRteKbSk2EgOxefp5RU=;
	h=To:Subject:From:Date:From;
	b=XSJwIUpahM1Zn2tq/HbwzpLDg0lYnr0/zjPgn5mGa5qW7DqPI7GnFiH/JZWPEpwfz
	 E0zjgHVwCIH0xmVXkRqupb7Mdf513L2d64VNAGmsQoyfuhVuYFp5omdMcRAmdmj9tS
	 pWO1WRPvvad+u4cOwT0QVCQHZRHgUNmD81SIQ3NlnF829JxGLyHjJ0VRKMnRWS2KEi
	 7etp9Yjw35scpHU7wxEvs1/7r8sQhAWFj/OQejpeG41+km0IKAKMVQ1+mHE6Ko1NT2
	 oG7C5RurpFRVzrJW0slAklWbpxhdGpzly/GFhhCmYlfTGg/MPLljhKBFOSWjRYtTcG
	 K8lh2cJh8/4Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90276CCD1BF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176166359358.32348.11085843578953819944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b44242aefd811efab77adc2788776f7a99282466b0d1c68c07a182f3615ddaa1
Date: Tue, 28 Oct 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761663593
