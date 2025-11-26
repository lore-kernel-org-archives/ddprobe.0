Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E1479463
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 03:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764127974; cv=none; b=ZXjoC0b3qtXU7wiU4Zy12h83oHtA1UH2F3Z6ebzpEvbQ0tqwCjwD1FJijI4ZdKbcL7hvqavvfSLqIOdUbvFMWThy8N3Ae2KVosnF26CB6IifQ27ERnJFZnsFGm5+fCtUSsbixKAnkYCLkBADNfBurWK+4lZGQdgzCO1mx+fOutQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764127974; c=relaxed/simple;
	bh=OHEedtEFegeGYTouUxQoE0B2FvXEoB9sxZRQ8CUEhWM=;
	h=To:Subject:From:Message-Id:Date; b=j/7s4flHxQZIJDITAMF7m3WdowP0Y0oz5IdWk4tbyKdAVypqpgh00E+biz2dEOAlugPeaGeTYuSwpYUKeHeTZTvSwQi17AJLNEF6aYDfIM+LTRa8Z4CIyIv3OscTSaasAXFkgbn9URm9cbgUVZ1UG9LV+lX6+N4169MSo/hkPrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P431y1kr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P431y1kr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AACAFC113D0
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 03:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764127973;
	bh=OHEedtEFegeGYTouUxQoE0B2FvXEoB9sxZRQ8CUEhWM=;
	h=To:Subject:From:Date:From;
	b=P431y1krTWhtZYcmQv/hcX9vVTwF+ZulfvsRGJOjnx7PuGkBcBN3Iw7Y09TxXWLlv
	 JblVAWqffjfXzFSsPFi/xG84V8ygtKy2fMCjIpFqmgm5huR4i0y2S0/+DPT238nzP7
	 5BlHe3b3HIEhMZ38xGiliMb1zzlQSf74uoz5J2ZvyAZ44Bycgy/r3yKhugJlQjkVuD
	 ph3QVr1EmnwBtvt/jz8BMEpvfq59BfW82zf6DNZ2X95e9MfWqExusu6bsHIv/vunVY
	 lH56rNiNzIBtoWxhYJsWtG4FBTTJdgYKG51jKmBwBEffjheQ/SCD+dra3Wnnj7YXDt
	 5Z+7eBwnqgNsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94428D10376
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 03:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176412797358.15630.11861561712194755844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e00e10a75d0ab737318e01053b46fd2826f20826539f605c3e5d6bd212b92081
Date: Wed, 26 Nov 2025 03:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764127973
