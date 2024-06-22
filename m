Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73CF31799B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 17:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719075743; cv=none; b=nkIDEiaIMKC0bysoQpe0WqzzRwapAKkQJmtvFQH/IIu6p/yix8H7KWJ/ieDicWV39nH6Aa6uEl5jMEC31a3cSPgf6aqudoHVbY3+vLX2nseVBrYnm+e/8Z4ZC0V7D/dPNdu+ivh/mf5dyIzmalKLTb4WDFQq6YQimu3ObdDSh6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719075743; c=relaxed/simple;
	bh=YhxmbGC8iXaHwZFM9ZV6JR8U0g1CFv7IBOJKOx/IZis=;
	h=To:Subject:From:Message-Id:Date; b=k459V0wTgRMTbdTxXIo2aw11LRNrsTyFTnXpg1XbGzKimf0xZPhnwsfErVa3neZ0ms4bLLFbFog2piT+v74usA6KAQVohM+9pPSIKDRE0fT2crV061AxkhXr47Fpl64EUjxL789YI895B6kBhTxPeiAhIE7EjeusuDdNejBuHMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iRJHHqZ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iRJHHqZ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9B48C3277B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 17:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719075742;
	bh=YhxmbGC8iXaHwZFM9ZV6JR8U0g1CFv7IBOJKOx/IZis=;
	h=To:Subject:From:Date:From;
	b=iRJHHqZ18p6w4tHn/I4b4dvFmfq+QcV8rucM4rJyw1b02QWY7GqLxiV0Z2FKt1eZW
	 VCYJMShxscOIrH00Wi1Ci0ALjTKYBGFyWeVgSkjltHWNGlVXbcMoVGN0+b7GcvbmLU
	 dHqmXXZh+KwDN4Zs06/G58NotJm5ChFwu7WZJFUfeCpPEmRP1kc5F7WSVkHsgAcQrN
	 pvYnSETy8fkGnMmjgNypgIHCr20r2cAMLjfxJ0Ie7WBVWeluENXYRFfexa3L4psGji
	 5qtRUZVCrTisx9UoLtBIcY4zrOPhj42rzs40TX3PKuYjINx3eYNYF58bsn1uTg2bJF
	 uT2UqR5F4fRgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2CE4C27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 17:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171907574276.1422.5640591425282598163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f8f448a24d71ef0f646c0acbfa417e24e1b74e9f974b023009abb996b84c420
Date: Sat, 22 Jun 2024 17:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719075742
