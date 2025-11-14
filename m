Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A4B2BE632
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763104794; cv=none; b=WnZwsKVOclkVSQ78gFFkuwntMZ5NOf8pofrTcdlNIJSbBK2rkNqEMvv6IIp1cU0eNhF1x3yMbFMEHJhRJSAqzLO7ExNxzwa551h4KlJgh/eOllZ1X/f0xiNX0NqNbFXX9Bw5FHKIkKflfPj0nRtXRrpKynz+sy2DF/xxaiAf5K4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763104794; c=relaxed/simple;
	bh=3BVC86rcQZKxKi+xKvymiL+iVuLE64/L/S8jK1HkYLQ=;
	h=To:Subject:From:Message-Id:Date; b=Ie3viBMSTnomsDfrMxnx/73XE8G3uustgpTuATDS0W4wnWkMPq7VYLVBKJ7mQlqZwlm3FICUM4fsY6fJitOsUx+I24qgbSu0Z8wYfaIIycpDiLL9Rpm/3kwgYoegQRrwomjvIFRwqjdEVXWLfEnSvzRQ5sA1pY5/Emf/ODxVLgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MgKhNNfv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MgKhNNfv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A3CC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763104793;
	bh=3BVC86rcQZKxKi+xKvymiL+iVuLE64/L/S8jK1HkYLQ=;
	h=To:Subject:From:Date:From;
	b=MgKhNNfvXBskHKjZdUeySEdALmcVm2Z/WSkY5iiBF4YT2vnX/8MtE+xMCfdRtQdWM
	 DBZjlievrzrEAKYL7icABgjS0yWyWzP5MIIWfMn94HLiHY3Ezbs0mNCsRUrWjH3BiM
	 KAkk5PsoZW4elVV0Ai0i14gub+Ha3/GoSf1/XGNsTFbadGx7lM8UX/G4fRHhG+Wsm7
	 2cbaYvdsq56sV+KXYOS4kN6PdQ8oZSr8XhAD+cLaPVI4SvJZ8vosi1Vl4FrEbHZYAx
	 l/+ggy/CBxuQHguYCOuaa2++qcad7CfyJr8MzY0W6Y4IJYyLzFFHkurq3a3evcWiV9
	 Kz8V9I6ZmI0zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A86CDE01B
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176310479358.11194.12570435840773593098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ffac6cbea4faa20a49b4889b3288fbed83c1fe72bfaeffb14ad54d3e62f733b
Date: Fri, 14 Nov 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763104793
