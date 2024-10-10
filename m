Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3826E1922E0
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728525954; cv=none; b=Aynm/yqv9VKJiAc2rvS/fMLYpC2SZ4Q1OHdjwdvL3o6nnsNJfiN7SpmEXzgX0JPtVQOlrcQ0SLRLZd/sRh+E0QCQMbyWnZsG3QIhaZ2A8+qr9uUVkvI3di4hHiJp3hNsmMlCVCrXOT1Wks1GkoMOiIetqZFba7SZN59dbcwGKss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728525954; c=relaxed/simple;
	bh=2pTL7zjsv8D3xlLU/PF76jZ+kUrI2C2QliMzafr6YJk=;
	h=To:Subject:From:Message-Id:Date; b=FMgMeiiELc69I9kbyA/Vfcq0LG7qqgXDnfcuzNkpPgpWSnoXvsjL0uqjbX/IigUhtnP/g3JxveRX9kSEE043pe//CurnSq7pBbxn2i++9E8ZGLgJ1ycQtDh1ACmoMpag+318J8AsCIydJ+OoDE+dEZ1H7mHG8/4tLiXNHNCFlNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qf7abnny; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qf7abnny"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0B91C4CEDA
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728525953;
	bh=2pTL7zjsv8D3xlLU/PF76jZ+kUrI2C2QliMzafr6YJk=;
	h=To:Subject:From:Date:From;
	b=qf7abnnyRiz6cOOf7tC3S0p8j72iLA+9+Y2/HhLdacFiF0qvTWPlJa65qjiVVjGik
	 zzSRaC4w1WThqgc1WV/t/w2oW3sYtx2a8hffY7SVONS+jN97MqYKwzq7rgxfZXJxiU
	 mNTpZSZYpixVd279MWwmtXWgycaCZTeJg9FNyZxmwRtEyLpfI+BEUjW4WjNgW/Pa8A
	 ZzsgJBYIg1G24PmtdqGqumTGiAcTppOKh+rzZAwTTuVRGus8B4f5/jVHWw124EozAe
	 X8Qe88+AtKaUsfj8hozPxKHb+jMVS4qYNQRpS3bmD1BcK1MB1szcbscBSbwJ21dues
	 TFtuobH0z8gYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99BA1CEDDA9
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172852595361.21629.7038668648888472029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 511632388a94a6214e13b53aa56b9231e874e70bee68635a89e6bb417a6a7cf2
Date: Thu, 10 Oct 2024 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728525953
