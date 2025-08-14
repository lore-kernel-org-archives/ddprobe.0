Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2010C32143E
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755189594; cv=none; b=D2OZPLHFSizB2Oi/uvLYw0Q5RRXz5zHDs4lkaIO3+oabu6+HlRoU/GfGkvcYhK5gK19ddSrbotq4hfLF5BPDFpPkiiHMmceNI9jakNiFbpOf6YKYj5Gt/2njRsASw/CW0mAD5g9Si703pa1fu76SZ3bek3WuHOkFugAR42SDzno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755189594; c=relaxed/simple;
	bh=MB7R7+kPpt/xRkVl1UvB2VSG/jX7fPWD2u/LDwsriPU=;
	h=To:Subject:From:Message-Id:Date; b=fOZWPisINj8xvUoE/SaCMmhf1FL7nP+xRVY5mIWDJJLZG+4VeeCS3PT+HVrgiiOBY4P2yTswPUyIqV5/PbuuB+i8IcfprubL6IPr6hjn9ax7HgvEo7kmPJxMqrAhiyFrWDCSVpHje9j9f1QulCfoeFp1AV7+/81Xt6UaFaISGmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ocu/7QIh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ocu/7QIh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F8AC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755189593;
	bh=MB7R7+kPpt/xRkVl1UvB2VSG/jX7fPWD2u/LDwsriPU=;
	h=To:Subject:From:Date:From;
	b=ocu/7QIhFy8SjwNhIMSWDjJZxEBBCa/CgZQVob3x/IwNm6tZ04ZrO2s6BcG3b3U9m
	 Yi6MkcI5UwMzkO7Ni9n02xHAgtV1m90NQFazZ0wy4/GzZdATIFGagsbRkNmbe8Sipe
	 E/TRrMgn38b6Cr+XLvM9m1d0TeJ8y7HYy+J8yPyRTOEnFHUKP55+IzRjRtnpGSPexd
	 KLXJUj+ovx99wu4O2D3Z5p4RIySfo3oH6H4ouCoJORc83ZFa800rFj8tpd43HRZEiL
	 MGo5P4FXGhYm4sGijnQvuACIjmQK/aN7VqBjr44RSmlgxjSxiDST/vY2pB6HnoxtGU
	 Ct0u413nihjxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE75CA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175518959357.29429.4198112387245743724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a54cdcba42cb4797277285d19006948931104f0a77f7412e69b6024286af109
Date: Thu, 14 Aug 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755189593
