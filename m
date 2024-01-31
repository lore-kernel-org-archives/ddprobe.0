Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 187E457875
	for <ddprobe@lists.linux.dev>; Wed, 31 Jan 2024 07:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706686697; cv=none; b=EtGZ8vWhlFzpcNym4lghMPe6/iw64tnX7LblFNsk3h3XzvynOcm7QpBC9+XyZVWpfPNMIIiShfIufFGPGET6fDjTBdau31CqqdYHJK4+qljtSEpRoTqY0BftkUugL+Sg/t1P8hi98UXveQHUUQgZgVDmU+9bu7aPwkgGfEx6cYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706686697; c=relaxed/simple;
	bh=ZMPTz5MMCi/UOHcSovqp2HneDtTKTKODd8I3L1cxPjI=;
	h=To:Subject:From:Message-Id:Date; b=U0PN/UiFSvD8GsCJIIEIIGbgKuLg6QQ/xvNkROB4B6dooa0pZLsOPttaJCR4ydKe0BpEU5zO+CDSYZXC+dlO29VpQARLdwdqBgS1O1ZGu0N2aOGdMnSmVZzqO7QRr/Ac93c4HYiK7Pd0L7eWYEDiBkiT86WcwrRoBLF/0+sLBm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=er34r920; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="er34r920"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 891B6C433C7
	for <ddprobe@lists.linux.dev>; Wed, 31 Jan 2024 07:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706686696;
	bh=ZMPTz5MMCi/UOHcSovqp2HneDtTKTKODd8I3L1cxPjI=;
	h=To:Subject:From:Date:From;
	b=er34r920oixvliAHQ0TAMzifRynXQjLyWSb4+G+Uu/+kpNuCHZ+cURMpQUW3zXrwH
	 4dLAUBi0NmoH5Th/E1WQG7Jp1wFmzPu+Kzg1iXmyZ+apFHALv9B+1DplYk4eBHBt+7
	 JoX5bgT/zSU82+kWEvTGPVhaUfF8Kry8QoC0IsMKXOoSVq/Slo+lH4xu/yyMNtOZDO
	 5DMKB+jdwid8IvQqJWdCj6bwB6Pltl6YHLtt5vVlDWd6mz9ncYY1tkWPxXsyg2ebJT
	 /XEhmBicc2Td9Nc5dAoVBMIir3s5eXBOSFYZa+fh/EyMotod3o+p8V+IUL//bm6mSo
	 QwwrDTFEcYJIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DCE2C47258
	for <ddprobe@lists.linux.dev>; Wed, 31 Jan 2024 07:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170668669641.20324.13237434841854661748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dcc56e09e2fb3c16d0859a091a76b18370dde88d2091c842c4853b3bf914bb0
Date: Wed, 31 Jan 2024 07:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706686696
