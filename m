Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52F4D363C46
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789050634; cv=none; b=bz45HSaar2vGRp91x7LrlpkrmYBp4lKgB2hkoswdX7s8ylqDZm/lkGTPzWW9WpqzMWhx1zYiXIWOnKGO4z7X+99KwT2tDz4ZPnra4AAc2QFk0e5Qn80qM6iFmIGu2wl0eE3uuRZOefXgkTgD4t9A2/IhjSWToXbAPX83LsF+1Wc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789050634; c=relaxed/simple;
	bh=uy+nW50CHSV0chGsIG6vRlQ3jvk4jJvDO82QPFo4048=;
	h=To:Subject:From:Message-Id:Date; b=FlvGWq09MMUqMJvwr/QrrZaV0xQNo1/G2W5YAQy+D9BInMy5rTcrqO2eBiYP60/CwKStcG/uAzKyet26ZejCtcfIKRngtOHhiNZ5GP8QOvBfAfw9A7zORGj31cP3NabIOG/bZjHkKjUsGG7AYZ6fJ3JuU2NtRrmouzgrXeoZM6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dd+fzy5V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dd+fzy5V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D05B8C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789050633;
	bh=uy+nW50CHSV0chGsIG6vRlQ3jvk4jJvDO82QPFo4048=;
	h=To:Subject:From:Date:From;
	b=dd+fzy5VKRbRpbHFpX/lzF9TFGmW3WHDN8/apT2oBHMDhBmTWwMtermIIEBAW+akn
	 Y2aOpwBVhYngMBYMFk81nWraPhVrNx6LjSzGl9qDWEBRTObxvlwAAVrxa9D/sb6A4r
	 QEOubbPwacItdLrPZtKst8jCdUQVFHLsCODeG1jZvfc4j3UXwU94tIgvl+CbgrANNP
	 lQCOOYRuzyGDYTJLnw3wvSnZWesNhgDQNBVfJrlcdwAI4Ui6n6mqv5Q/lVXZu1sEfy
	 RFxTN0DL8s+AXUnhiTGOv+vsu0jjaENb+PkE8eQ3Auham0FRfMxsS/C+aIAEaVhzar
	 In8eN/nm5TRFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B566CC79F9F
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178905063373.25742.9336327049407110920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03e01b32d900a0eddc4887982d7c12d1827051123326f42dbb0e0b7acdfe9d82
Date: Thu, 10 Sep 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789050633
