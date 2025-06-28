Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E03721ABA5
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751147394; cv=none; b=CTNSL17xER5vxG2Lu2di2sQePL6IzuEI1Mdi30ccS1TVWi1GwKJTY8/uilUhUfN7UhaHu9fimyjyvfzVbBtSx+Wgk2RnLL62mKfVFfwB1MqXHZjuDXcxf/gMA7hKmjs4bDnuo7wYM2Bmqk85gBTkqYGGdrISatyrnjo7Ncfs6Yg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751147394; c=relaxed/simple;
	bh=cVbHP9coWm7/mfiHVQ2wusPcX/fHMu4wklFmTNHUHyg=;
	h=To:Subject:From:Message-Id:Date; b=YMrsW6bPh53Gxn0fim8aYAWtkG0vuutefETcRBgS/5KfNE0TUqAAQG878op3Suua3/+LRvClIpFsonGnoBmIF1c8Axlar93lpBSCHAt46Z0zGOFJgO6S9DkXZkUufds6b+3D1kmO7XgJJK66qZREmBPf2cZMpwylt8IBsoIJqqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ofa82ErE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ofa82ErE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A047CC4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751147393;
	bh=cVbHP9coWm7/mfiHVQ2wusPcX/fHMu4wklFmTNHUHyg=;
	h=To:Subject:From:Date:From;
	b=Ofa82ErEyQJjs+gP+3VGUZd+FsLwEDj0/RwztSPrpakIa/o0vpvDO4sz82MV95kx3
	 61KkV1VKAThXt5i5shOCgcsQCGaoINvWkE7N9ERAQ+CO5mmH6WrUvRghIpeEVqcx4t
	 8BhBDbd2YJt0Ahfyt/M3mOh16IKp+hlnjnl10B3dGrC/Xxir22bDxBnbyPbBW++KCA
	 zP8C+AfhWOFwcNsB/jPyFPwhGEDYhaivgqvoU9aJi4LbNL0jjJV5WFgCDZXaZkDutm
	 xBqOANrr+mzeNKrnVSb2x7h4njnq/eAoFGKN0CKs5O/93Kc12htivkBsOuhYZI15bB
	 8IxFfQktK3imQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFB2C54ED1
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175114739357.18789.9755008741942695776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44f791f732ff32c88e9a545e8ec9644f2a5c8ff668a76274a5338a8fe889fa9a
Date: Sat, 28 Jun 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751147393
