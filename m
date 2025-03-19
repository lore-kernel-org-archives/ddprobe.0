Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45E5A224893
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742380194; cv=none; b=MZWfYTaF0MkPVeumfpPpP3c0PC+x8TA4qz8ZhVmPcz+EvZIy5GVtmSpVlZPSFHHKL3fiJ7K6ctei0OpzT5r9U394lbiTFnqcobqXz0+Cf/HGbI5RSWsjG411GhkLJFwhzz9Dft366VjBqiAws64Izq+pJBU4GOu7hbCFoTSatoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742380194; c=relaxed/simple;
	bh=q8d8q5lLCatcSnb73Raidu4fI9vjcfXT37BgMDfw6F4=;
	h=To:Subject:From:Message-Id:Date; b=gAZc/i2dy723yxR7XuGuXsd5aPlaPmP+tdXV09vgNW30bnjol1VAjCt3/v1rsrqeiNIBmsO8cTfP6lnVJLvV6OlafOgIgsw8nXCC41ph0VLpIQeiBM01MmSnCpvFFeEXhsVVameYKYTWDwPMPr2XwteJEP05c0qe+vYz6Y32lPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nM3UKipk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nM3UKipk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCB47C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742380193;
	bh=q8d8q5lLCatcSnb73Raidu4fI9vjcfXT37BgMDfw6F4=;
	h=To:Subject:From:Date:From;
	b=nM3UKipktt1q8wpbumyvCUaVDhou1n6Xpu7xxNgUkRPMPGsEOZRbvpgJigQau7fdw
	 x9zUSlX7fMO6we1/cckxuHCyHMkQqttv4HTdKlmlZOPFbsU6TAKJgmdDPva5iRdK4i
	 LPvShvpWjZ7oQjySI2sWRaJHPr2Qaa4/vGN84XNkKL3ivQ2XQwjrFpzATG57xQDbFs
	 t1vhfKpJSqbIVcl99QLUT29neVWM6iuCt6TbYbeQAGuu4PMLXwyGMLKau9wArOVhfq
	 zneGGfw50ROXG5e0AWiv6YPxCjkdkRxO69NpymZGg0aG7MQNqtNf3/CCtIsSRHfPQE
	 MZ+GlCOpOPCaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1E1EC35FFF
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174238019364.19997.2790889753513265909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5c875171f15b41e64086c9750a2cb6c46a450cdd2e43cd5d3e03ca3c4256e72
Date: Wed, 19 Mar 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742380193
