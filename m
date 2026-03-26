Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 391F33BED3C
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 23:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774568094; cv=none; b=P8maBGKeutmaak9WXZYIKsBvfoSMZtEY+XyD9BTiWztQQ3+OUIkJKBVpupjTRZk+HbyYLAmZ3WFSMfSq2djJfkr7nv+c21gMSs3wtGu9KL0yecpaE/32RQxrzbwwRGcvTqsAoiTbrYmCPFcD0Eq5PL/iqI4m8yD0kifHmwb8ftY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774568094; c=relaxed/simple;
	bh=URJYgZjUsDIkbuKOpxZ6m/yYfHQBQ4VUyThDKpFX45Y=;
	h=To:Subject:From:Message-Id:Date; b=lsf9R9m+3TSDPPS9qU1nhMtGh4TPg6y7XCRozOh4vb4nGxggikBsG1nkAdJ1LsuceIjTC8Amtt6LKgO0YbIpAgiG7xIHogUpUTPPTAfvapWcPy6kM8Lpln5+czfa6TZXy53NvTKmUlz7BEbbCwfm33Ixkn5vN1SKmk5iKlwT9gk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R87xM4TQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R87xM4TQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD378C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 23:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774568093;
	bh=URJYgZjUsDIkbuKOpxZ6m/yYfHQBQ4VUyThDKpFX45Y=;
	h=To:Subject:From:Date:From;
	b=R87xM4TQm3LO77HfXtZZWGNINcdafhqEtwxPWCUD9n/mOczfu8n+x6Gecry/Cp5c/
	 SKa9Q1huhoQo94RbFClyGdPvt7dDaBsRBpMBu8VN+mJviftjayy/A3vByifrBeSVx0
	 8r12HU/RdYgaA+yhU6i4wJKPYgHqzRvj1oHsXW5B9vLY+DF0UNrhI+S4df2SN5ix2K
	 roY9dWcrMryewKRDTMex7OdRj9aUJQhuvAFl/O1zKRcxSkAz+XrfkQ0bFygiALOE/w
	 8H53EaBt57zHpfade1R6o9bbJR0R1QLHk5/Rxgw3oGtb6kZ80N3g1gCIWhFAieITQU
	 MbMcsReDTl7OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D3D10AB82F
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 23:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177456809358.27109.1130340045916341023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f820a67d855237a3e505fae3c27f1f68ffa5f7650b9c6b7d93495b152b372e3f
Date: Thu, 26 Mar 2026 23:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774568093
