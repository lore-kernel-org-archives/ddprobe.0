Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2449B241C8C
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 00:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776646654; cv=none; b=AVnPyGGV1jirxzdhMeP8O+WsVjkv2ruKhMKEDjT5b80IeUx/cvahzeJvd4ASPhtCUPZZmvu0V8l9ChvLiY2WOsJHuv89/K/OuLYC2kwpg03Ts/WMlk8PbJniKUB/rPFNgMNRQAll9MwkYgOetu8mAIFTdpSQ0EMeqlGf/zWhJHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776646654; c=relaxed/simple;
	bh=XNyBRQBrw3S7sojNSZC8Xe0C7LifCO1EtD/sII8Qcy0=;
	h=To:Subject:From:Message-Id:Date; b=DH/PPyopRrWffozlYytjp9cplfWdnB6j0LpoMTVlMenWaPaCshf7SsAb3/sIO1J44fgASB1cUuJYqbQn2GiTq1hmdRQYMNWJKz/zcl4aDbUarF9LM8KIl3peFYBczQjbB31vwfkuWYts/gLHXUhQKhWHXGost68nrf1qHb8er5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H23DDqQM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H23DDqQM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE02CC2BCB5
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 00:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776646653;
	bh=XNyBRQBrw3S7sojNSZC8Xe0C7LifCO1EtD/sII8Qcy0=;
	h=To:Subject:From:Date:From;
	b=H23DDqQMEYBqu9M/xH/fDroVv4KR3dzmHPsADrnWFTcy8MywOZzjlfo7xwjYHLdqJ
	 CATaysOID0DKgmqzJcpV7nQEQfYmQBZFIKHB2jswYP7kgYUTQR+v/K/WO9c0xyq/hx
	 fo3d0NuLbSW/AwGbc4+BkY+4ECjCmMYVcJonjiQVZSPy4N1N8CZz/ENmSGkgKXUtcQ
	 zykha4xAu3hS3+A4TqmyKeZfMc8zUDALKBiT1pNNnLAEFXRIA0EmYCynNNTOxxWIo0
	 4SWZCWigg8+KnkPzAJbS+owQNrm0mNwQCcisRaHRivjs1VkBlGbLNiVentbTura5EA
	 V3W6eJ4u0y4+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFBBDEA71B3
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 00:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177664665368.16185.8490100018931139217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e75f8780a3ad5d9849aee3b3e10fe8bcd1a23ade5608625bb98bde0e1477aa7
Date: Mon, 20 Apr 2026 00:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776646653
