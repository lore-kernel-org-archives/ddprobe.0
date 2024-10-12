Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 155101494BF
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728772554; cv=none; b=sQusT7+/rgz9uL6rMMZKWWpFcogBRcDWYMVR7i4Awd9UMcRCFj/UN6FQDLyguH/UMp10mVce2qEoXHM3yn6oCSD4wysulvzYz0r/bmXmkOC0zAAmuhppWOAGgEq7PPyAQcyesWeyqVpDaUNJyRGAz1nTWC33ZVOYHwNfbUOEzo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728772554; c=relaxed/simple;
	bh=U0+f+ptoM0CLkwIszmhM8vhsUOe9UdLd+oyRyMh3aSQ=;
	h=To:Subject:From:Message-Id:Date; b=a/AZ//qFF93B5YB7HYxBED9GskoDbxVdh1JGhG0Zh87Fb8lxyOU6g+ySDAUK8WJVlZ226mXwNWf9UAc4YGfZdHZ3QYY/wy5s353trjzzvXhHtP5KQUR9WdDIGP6D8H79+dHXWblgYWjtsrBWvjDvIfHLXVOUnkLm4N4tJcPPms4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AqJZlJY/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AqJZlJY/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE4EC4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728772553;
	bh=U0+f+ptoM0CLkwIszmhM8vhsUOe9UdLd+oyRyMh3aSQ=;
	h=To:Subject:From:Date:From;
	b=AqJZlJY/grU0djaoivtwmCwzNKQTCVDebl+bpUg2AaUsLULJuz/WIRdMRM85Y46qY
	 YInVtK13ePeKOiJx3hu1h0mVA8K82LTTVzj6Lo86F0NeMRsyDTmqdulLdbKi2ACMO2
	 wDXYFz/PAdJztP2caohssr7I8tu4JoqlqIVy2A1YUnJZtwWNDezU7Nxc+tT9GS78MD
	 FhRKihoFeiIwxkBKXkByhyPoqCjAvjP7qNUl6VjbPu74cjzSsT1yAb0W4lXmKO+D0L
	 KucjXcy5s2BroxqRvXmRdyDHBCI12UZq+zOJgU1TSeVHowOoxDbDR3AX94j98iop4k
	 42T4mtc4goZvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A88ECF2587
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172877255361.18465.5209015597224264075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dba95181527aef1d21d448dedb258dc669cc461bd78167220a1a9a893c4fea16
Date: Sat, 12 Oct 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728772553
