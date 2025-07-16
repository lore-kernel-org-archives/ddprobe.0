Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2124D1D63C7
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752694194; cv=none; b=UrAEea8R3IQX2sz/t6xcDcDSVRTwnaJbEujI/WrHdsbzJlUx++93Z4R2N4ic6/aHveCI3pfNni9rX3DWThsV6XPSXkmJSAIWwawU/JaWLKWGjytqwBiAHV5l/pZ7EY5QNeeOzAKy0wkazmD6MLiqSjyGelUvvU9KeLOYxr0mdIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752694194; c=relaxed/simple;
	bh=uWTXSaFpw8k+4suJLW/04LeSfnQYRvBSFqsZkqeBj20=;
	h=To:Subject:From:Message-Id:Date; b=dOm8xOw0Y5b7ymuicRDs2/x9/iqQhZd4sYF1sPi1Ry+XGy8yRhG0Cmu3iHBkCVkrRtovYlufBkMjRcAfPesvbUV2IJzVHGIRVM+Lvw0oMxI5XXVxPcJz0Lo8X/lAlui9XgSBGu1l1nUHZbOaxJA+vIqsDSGWKwxc7kbGMBa1jpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Acb9lmE7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Acb9lmE7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DCF0C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752694193;
	bh=uWTXSaFpw8k+4suJLW/04LeSfnQYRvBSFqsZkqeBj20=;
	h=To:Subject:From:Date:From;
	b=Acb9lmE7cv7X7Ni4aklIDD/FkGEYLF8kDUEafFY9Xu0Zlf70aoIQ050+E3+XcxAu0
	 yOG4iYcwvFyuRf9lm8+TdltTedo7fCDy1luBqisP2Gz/No2OfoTUBiSOYvPXn0MaIW
	 +DVh9OicNMMMCeYfi0u39g1VDQjnHR899x3W+qEs5BUXrhrWExg+hVK2XNE7n8ya0i
	 XEIN0TOagk0jkbGQdvcB+oPB+jjcBhWh9+qCI30HLYnI5CKU9erR2fbAym4cIdNGNy
	 YTuIYIeUcDBbKIfpEFmD0V8Msie4BPskDmtLAWh6WytJiHKrkgJFvIi9im3H7uq7x0
	 NC6i7JUhSc8gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90001C83F1B
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175269419358.20187.2832555130361837050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0732e8579766fa031a6861234ab2e41c24bd256aa9f8898cda850a855f5a87d6
Date: Wed, 16 Jul 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752694193
