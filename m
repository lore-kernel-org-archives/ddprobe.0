Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFF88328B70
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 08:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769069033; cv=none; b=SOE3x7JdYiSv4XwD4vuiUmLscQ4JqcBeVBLESfAg2kItBxD+eOQQF4SpeOIcz8hEcDqicVt2C/1QTZ6kcFcGwIKjdv3JSZd3qxAyGdtknme7NQbWF2hS7plDUSJImFrxR50/lfMbSw2qK7QBNHAj7YyKJxXFSCAZ22OY+Ocr28I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769069033; c=relaxed/simple;
	bh=IuASf1t7xrNf1mtD+ho8OgdfFTEgiM2DHz7npiKrWtU=;
	h=To:Subject:From:Message-Id:Date; b=jRCY2T+iIuHWk6Se+Az7MnnxA/xC0C8johxNMrYT0wAGNkPGUz31mSYvn469lE8qb8LamrLSCfkWWIM7iI7H+Y/j7SCxdInT3s14viCN2Ny/4l8PQeywpCRYx09TKxjeW63aMXfM3gTYIPMRKnwQAqIb0UDgKVTxrPSBf2GkCqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IyHBHvO1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IyHBHvO1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54A1C16AAE
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 08:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769069033;
	bh=IuASf1t7xrNf1mtD+ho8OgdfFTEgiM2DHz7npiKrWtU=;
	h=To:Subject:From:Date:From;
	b=IyHBHvO1gZYq8ItMpshVQ/OI5RIcPBg2/cS9Ub5mWZDRFABWeP9LFEdzirgFQiUSP
	 F5CZkdeijniwLTyfx4KAuCRU+CXswCoRfaTLUpyGFSlrwRT1rsjluEpRD83gIxeq7o
	 dp3MNIIUEV49/G9ebF2u2k4uYicaZJEp8eyPkZecw/YGBHGHLc1oJRaCp/i2r2jTBe
	 kQ29qunTugjvMdwm7iBHKIunsSgNOwWD11/uYF4aYhU2+Jf/+CJ2ywQNPMKjkI97/u
	 sTT2yvRxSJLktsug5gbo8x3usXWdl08ExfCv2NJn/oJVvmf/2fZMD+CapLbcZourmn
	 MuIv4etbP809w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A63C44500
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 08:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176906903358.1908.17055174172444714268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caf0d8c65251857eb8521f3ce95ad17a556d07a4fd245b14436b3a4c0e088083
Date: Thu, 22 Jan 2026 08:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769069033
