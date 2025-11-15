Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DA1C18EAB
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 19:20:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763234454; cv=none; b=OH01OfS0uWD3nFs9VI2t2WhuHufjUfWXKzM8lQ37bZMu0M7gM/sDzRwMvLEiBlfw6XZwe5zqcCI8Vtu0QF4O4/+GYO6Q5xLSQizcuz+rnWZ5s0SP+d83j45gH7pHXx+3D0MT74VKdVzgMyXTvKBoiWNle8sevVmSW613cpjCoSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763234454; c=relaxed/simple;
	bh=RHOqoVIgTkDjaTKhchvvkGNtSOn82cVJvBETSCD4U00=;
	h=To:Subject:From:Message-Id:Date; b=YpySgTukkfbOOseGuBJcYQre9MFP1YLAz8PEPmWZrFEFvi8yui7280wtRfgVAmtDWvD4mGpJ9BXUF9xnBDkDxi1w8Mr5rCsFCFrZz2QZZIG96fhAYbh0E4IgL9t+6320EtpsHxyG6daj9heNRpS0typzwb3ryL6Zg8uwWmRpiT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qkKIlt97; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qkKIlt97"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0D4C7C116D0
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 19:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763234454;
	bh=RHOqoVIgTkDjaTKhchvvkGNtSOn82cVJvBETSCD4U00=;
	h=To:Subject:From:Date:From;
	b=qkKIlt97oKcz2cMVYZLbjfB9Ixr1PdjQggiOvtlvyXgbZeJ+Owoc+m0PmjzYkrcUc
	 oCbm6cbB4BZtJcfKnytShwaWKwYE4RScl4ASUgYMeTsi9Uaxyf5kDXt5IrFSUyo3id
	 O7v1LaKslPJ1W+GnJW6P/PFyGDet9STHwdbhMgcZuzo54zk5t3NFftaz9YkX/V6ImR
	 65wa1te+h6TsJuqNk0wlMqQYdseierRzciqBQ+sbEtsEHhv5WORvnqAza7QeGOw8Iw
	 2VgIldyB4awNkYDgEElgvnMp+Ka8/c+xmG9JzL/IGpkM3fWh9naZOvHnwAPclsHdmz
	 FjX/NSoUK8hmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF0F6CEBF73
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 19:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176323445370.21562.10600849458072478306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 611e003a64ce0e24e33109f334905a68bd2368fb3df29ca7b9a95823eafcfb2e
Date: Sat, 15 Nov 2025 19:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763234453
