Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BCED1C84BC
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755944994; cv=none; b=dJOFtENzeTzfwBTEYz9QXH80RE+vIB8rKNZ/yQtOEQC+JFE+Cit6BlXYMe9MWac91R1aW0QyA2SJb7P9/wDlABlKyVR643l+YM9DwCStCAt3Ac44C/36I5aShnRyjaP0j11S/GIxPMVCtqLEnm2SclYzgv9lYew7Vo9cundhg1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755944994; c=relaxed/simple;
	bh=10lBaC1FSktSfugkWxsZpmLZHTaJbE3/aDZ0s/zcYmI=;
	h=To:Subject:From:Message-Id:Date; b=NiCGOqQDuBhdxqH3o5lZFZUk4oAxz0SGFj+JEvm4CVszvk0Mu3faY9wEQxZJvF4xHFpxo5MQlqbi1UN7SEMFVHkcGN0n8roMxwnsz0GQDaVa3PvGjycyi3W96mqp7QRapKbIF17IOoyRqST0ppXSNk/LVoTSKPpHOet0dlk/OK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=etdqf/pM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="etdqf/pM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A700CC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755944993;
	bh=10lBaC1FSktSfugkWxsZpmLZHTaJbE3/aDZ0s/zcYmI=;
	h=To:Subject:From:Date:From;
	b=etdqf/pMEj6vvvlUXmvg8mYakvEou12r96AWRGTHQVIs0eQLGiIzFlOLrbevhZNCQ
	 m7BzRHaiOXFZjR5Y9aS4vhVOvcENOge3wJWs4Qmb/B7OFw/a+K8BnAtWy2azRlkX4y
	 IOiEDEaEHvGChzwwZ8ToQyN+h3blhI8A+XVTm1aAniqIPigU1C8aBevwoUyWh7+Dem
	 iC4PMTh/Ile99OAKNev16A/PYaaVsiFkmoyfPLLHdEw5H29gCJv2r7Wo/ajJBETEe0
	 SptPCcc2jKh5L3mwxx1bvfg1QE3y0NPBqXR1Losb8WRrLBswS5Yefiru2lDPpeZmwP
	 LG+cuUXY1NMhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FC3CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175594499357.19989.11473844175063324132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17ab157a702eb552504bdc2453dab220b474adc362c816ac8e711372ea609721
Date: Sat, 23 Aug 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755944993
