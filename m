Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34EA420A5C7
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 16:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739378934; cv=none; b=JA3aiP47tDXdNVAdxZS22zvUmYuMqCdhFtvw5nRuVCwnRvFCw2drZmyri9JKRbUCaiZXUhQlB7SPm7EbS5rWJ6y0sz4lfCAeAxkM23+IVatXSW5SodqWiu709x0T9ui+GY2sHGRMeL8dIPaPwKA6h7sDB/qJxHTvfD4Hq2ekIkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739378934; c=relaxed/simple;
	bh=y7eE1KkzJasKg+VchJajrQJ3lymJOr/F3ltSNS26rvg=;
	h=To:Subject:From:Message-Id:Date; b=iJa5tCxxp5Tzt8TgBlCLti/5SHlSGRz/t4NXm/LgMl2Ht4RIRj2ucRNGfVRwTCLMh0sZaw8QjO6C1DSsYRlGlcTBrsSodKfDVl+ooIv1dDpFaikCRaiGL4vXhOaWs76cGoczLoJcuZwwBgPln67WsQGK6CHo3OwE11nPieV+CMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lgkYrrDS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lgkYrrDS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F7DC4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 16:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739378933;
	bh=y7eE1KkzJasKg+VchJajrQJ3lymJOr/F3ltSNS26rvg=;
	h=To:Subject:From:Date:From;
	b=lgkYrrDSXNpS/9fxjqwt+uqerjCpnfsIT1WHV1d6w76mxiSvAE/O0otyT7/QSlEZe
	 LGqw6wAZmRrxUa0wlN64wccrRLOqdkguHmxmmqvAgknVHSrMir5kZVP/Q0oBuU7cgB
	 VdTHUxKQTQvU+0iMAT9twmpUkxMRl2BN3QdBXYr94miMI01rN6YMGlWiyxYwKKzVYy
	 q0gTcv9An0iHbQB62BNF7FYbKh1w5LQWFc/bnaP6V9s/7G+r9m/+N9CvXh+K+aii2g
	 K6CBVJpk5+9xEPERdXMAuUJUytr24+L/rW/lFTBxmnGmqD7N8UmB5dtkY7n8yoiK7v
	 GASazWVivH9XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CEFC02198
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 16:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173937893358.3904.8205505649599498454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf844ccf4bd90c7aeec69b7af202b98a7f99515922957150409f7b496eabf67f
Date: Wed, 12 Feb 2025 16:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739378933
