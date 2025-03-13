Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 297FA1EE028
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 10:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741861135; cv=none; b=Tri7R9AACQdksL/ZNpl+Mk7hrQLvjJWtspcokd3PlEcAj45DTK2F9xAn+4nsuo9EGNCtfkrPlAwB7NUoaAd0wr/SZlErFh3anLRPeRy56ZcKnxYuPgy/7A3qrF0UMHlRy6HjJ3Ri9UtanFJ0VMo+nbtFRut3/sjIc4ukUT9Kxj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741861135; c=relaxed/simple;
	bh=vyIbd7sln/uEIVXTsSClAPuGRZR1zCUUTGkz+x3urgo=;
	h=To:Subject:From:Message-Id:Date; b=mXI+U5befa3shWuuCXr2prlWHrYWz7IkGcv0teRO7P35uB35Upul9yc6GRlQtrtD6xiSwEvtCPTizaGofi2y4SQbIrFsJHLqHlD6ylI9rPpua1b40mVxOQJpIDQBsTXvkVt31E5RsigfxoKw8jga1V4voBHTHpgu+lnVG6gJLq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JuzOQKWf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JuzOQKWf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9037C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 10:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741861133;
	bh=vyIbd7sln/uEIVXTsSClAPuGRZR1zCUUTGkz+x3urgo=;
	h=To:Subject:From:Date:From;
	b=JuzOQKWf7UvkgcvWleUNalNbsXD0aFq4da0fcovoUItbFd5V+3gLj6Se0zM17Mo/w
	 mO3GLBZ22s7yNB938OJlImEqrbqybBRf3n+q4SX0MKp/uLOCF4smu0QSbcfFwKk6Js
	 AvgkjxLTYCYg276SJX3h4TolfOe4V1i262r2avQvBcDFPGIKNDH6Oepc7+QNG4HXH8
	 0CSyus66l3aGPp/86r732/wYWZlagPSkWMlwL48z5BZpfpEPkA7t/FCfw3F+7PkUdI
	 PsrsYbjdCstu2/ZhSUjqnFy6fE8iDMLMfuOOtxbBjpB3YN+rTFGNxH3Io2DC//BmO8
	 wJHU0ibVarnlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909CCC282DE
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 10:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174186113358.8052.10505470501922567871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75d5dc2bc704443d48ea5eab476346621410249d341315911408c5f21fb517a0
Date: Thu, 13 Mar 2025 10:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741861133
