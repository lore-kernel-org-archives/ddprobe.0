Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D2C22338
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748022595; cv=none; b=avfn0cwpvjhydmY0tdUMQGGb3m7XXcRbxpfCDzonfq2ldUbeQzjpr8R0z+rz6JxjsfroUsQosReK9c/p9prXxYX9ytq7GHfVc9agZmpjET/PmSSZpMCzpnM9D5y0GLgiflHxoPbQAVMiymlulwLqsX3ROtGNaFRu5cETjheoDtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748022595; c=relaxed/simple;
	bh=Kk8mj6FQxSARM+z0d5XV329t6PoobJlhgq0zydwV1FU=;
	h=To:Subject:From:Message-Id:Date; b=TQTUq39jiF3vfbQbLp4hVOgMwde2EnHU03HKbMSIVx0RQWPEn0gUrXWko6qNgUlWxygv2DR+u04UkK3cUM9kUu1E6J1D51/wNYCYIedSzKjywJbWSFw7x22tDkca0lkKeP9vSWbu+megFmB7ZWMG3dph2AxhQ2BfGthqc2bzSKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AzXPX2T4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AzXPX2T4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A473AC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748022593;
	bh=Kk8mj6FQxSARM+z0d5XV329t6PoobJlhgq0zydwV1FU=;
	h=To:Subject:From:Date:From;
	b=AzXPX2T4ZAoIJcPBEesLuZAV2Px2LYiTXD5fqdicYvW9C+/QXzk+tqA1lKqo5sTTu
	 ftrvF5yrehGRzoQ59dw41EU7765VMz+Vrxj4ZEv3TaGJNpKTWjaLOsEYhfj0fmkGhh
	 OQfuNeCBOwwJpw7aRBpPGAV0oJ+TZzpKY9RJT+XWEwSATk2oodtgxweXpF8wsUje5s
	 2Yr6O777uUruPt5oSFE0BA7g9l9+ruLjej1yNDfNY4q4u+AE5QRk6FDfP8JZgzubTK
	 6jMksW46sOv9XtlLeU660jm4ruaFj5C1Hp+TYWsN2ywxwmGqWeARYiPV9SNfiL0boI
	 su/7C8zu5wmmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D28C54ED1
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174802259358.31095.3798759455848828251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6604dec4bd8d03dc086055d707f12ef205fade826f6cd48e7fea48fc64fab0c
Date: Fri, 23 May 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748022593
