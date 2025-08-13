Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19FB6301462
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755125994; cv=none; b=Uy2aMSerqADSbfVVt4ASMDAN3lq41GXL1ZBH9hLrSK9+sJzhoYKrPq8+L9rKA0QWlDe7aEvCWMgNzEFNc258MgEc2DHSxRnUagLI9HSqepUQNWnMfhHjmTXi4XVkDDPUBHYRCR9yYfri60L4bQ0yRdLFXhgt5U4yinrNiyP8jZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755125994; c=relaxed/simple;
	bh=x/i761c6JjqxPusEgRk6HKD4zDUhxcTkWZCDWHbxYbs=;
	h=To:Subject:From:Message-Id:Date; b=aHmkVqDD0ZgScEe6iy3Kf9gTQPz/I89I5bL38Pl8B+9NDklFAf2EPWhuoW5sQ1r07rGDCzQ0/4KWx9v7SY8C2VvBG53Kxue4gMyLGZpYvoY8OOMaP9Sqpeb3dgbwurfq2XhRuYuY7lXDwIpkKaUdnedEMiDNHZS0NCl+8+cz3CQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r95eTALx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r95eTALx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9409C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755125993;
	bh=x/i761c6JjqxPusEgRk6HKD4zDUhxcTkWZCDWHbxYbs=;
	h=To:Subject:From:Date:From;
	b=r95eTALxEEq2Ens7TZibUe/Q8J12lRQQplAZ01F5z4du4/H/ZSd/FfQqz/qQmKqot
	 CzCQummiXVu2JMwveWX7B7TdBSxtT4mq0jy4YnOCAIFuKS7vS3esZgV4FwKrOqddIG
	 m8gpz9m5gVEaythsD0HLa/vqiuGzv3H1y0d+wbawuDNXnXIUsMYwWyboHajyvn6Xr8
	 29PefDzqZpBzBwuQfYO2XUA3/VlyB+X47jA1R3AhiD13IvWArvjULRmkMk8RCX84zi
	 rRtKgTMmzuCV7mLCNoIgeoxZemqihan0bM3NuiY/K2YCNC6zFoADHutF4/gQlohwIj
	 ZOsORqIJybVeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9361DC87FCF
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175512599358.30089.109962120001072010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13ba9122be87bd4f18809fe010d29b0d40e7d0729bb0e141282b2eb1b54ea729
Date: Wed, 13 Aug 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755125993
