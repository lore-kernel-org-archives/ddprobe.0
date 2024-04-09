Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DD2D4F20E
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 01:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712627297; cv=none; b=dXQMnWY1+236IsWCrM5GTafUSS4eJbILxsSADWDYmqmxNy6wXPpxJ1wrDHuf/0cLQ99P5PAcDRZJApCaX8lZCV+jVva+goYlgvVaJxQW4Gi6u5UXwExaNY9nm4DYZNlDp6rj33rtEfILXcgWRReHRwZhzpxCgIXRQd7z+NmXmWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712627297; c=relaxed/simple;
	bh=OYsIO7jrsKU5vAWiKjdRiks2zfhubHIfb17bbWtnxAE=;
	h=To:Subject:From:Message-Id:Date; b=MdqIjs39vSqH7OunasSKTHltG9adAgsRaq41C1q6Qzr9bHuG3r2w2UX135V/xqeyRT05iGybfv4F8Vk9VRea4W1UVTcJMCZb2tWfjxE52vJ2wvvhDZ7PneXZy9USwow5kMgenC5myI1ZvbHzdgnzCBlxKtodlWmHzmHwaO/NtAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=afIWtVZF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="afIWtVZF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8862CC433F1
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 01:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712627296;
	bh=OYsIO7jrsKU5vAWiKjdRiks2zfhubHIfb17bbWtnxAE=;
	h=To:Subject:From:Date:From;
	b=afIWtVZFWyA5GDTq2tSXK/3nziLF4wjF5PXL9aA6H/IFxG/h92Ff5I34b28WhUcqu
	 cabs8GUC1rMq9pCmqumB/IBqo5Q/ro0DRtOw06hrga4z0ib2C0Nas3YN7uO7GoLnX1
	 oUSCsmCL8CjAtBnG1miVbKogJmPSh0fl9p+Q3AJKaSwYPor9ABKJtbAmd/O+x048O2
	 IbUG9AmDn7h8hVECwsWYa+y0UYUvkPVZX1tsOquZKGWVApllab3lFzz57lh82XC8H9
	 qmap2Hdadh8UkJxGUmoiZqLm5igIE8KdvL3nDTBW3LwRTcHsrFrO5FIm7TNhWWv7o2
	 d8a2lxaKM2ynQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 754E1C67861
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 01:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171262729646.14866.2155661023183149949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 532f371ebaa55c32bb60a9ef0f362bf7771be472e5906eb4b34aed998242b82d
Date: Tue, 09 Apr 2024 01:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712627296
