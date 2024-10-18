Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19098163
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729209954; cv=none; b=TTG4lVXIC9lxHYzYYI1FN6oejDHAHkjBkjMD0Xgf+IjZd8IG1GKxGnz4FfuWuys5rimuy1rzTmGyxPoqKsynEMq91d/01oRfucB31nQw22NFKXaxodL1titPiKCLzWNIX+PyWZti9tBjLMs3Q99DQUUMa0xg2qAW9xA2hX0tSLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729209954; c=relaxed/simple;
	bh=SwV+FkVZHNfJYlzrJmLPHTDE7GCmHs/oVUzTtT8R4ow=;
	h=To:Subject:From:Message-Id:Date; b=ugokPXRZky7YHF6RtWJA5j76IZyPFpcKBkGTfAr4zATvgL509WUx0apGQwOPhCcR7yAg4ndlU4q/JB41XDopX4pR4CTTlTxsTHHWr0Lm6wz21B5N30FMLqgmnwT0Xq4WiW2ee+HUq13xdPn4Yw6PfdIkdu6n/PhUvZ1Wfp9WqqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P9YjsbTe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P9YjsbTe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FE0C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729209953;
	bh=SwV+FkVZHNfJYlzrJmLPHTDE7GCmHs/oVUzTtT8R4ow=;
	h=To:Subject:From:Date:From;
	b=P9YjsbTeWuFrc4eeFCiWleQOmvmpsXpm8UHeyRaD96Hphl6e1U5rtmBSE2h3TUEzO
	 T8X+dqBAGq+iXiqMJR0ljtWFoyx3CIKRIN/sIBmsAgMPSMwfOYHXqN/J9NmUCTRkyk
	 ANTluNIpWVjtnIjUdJQtxV2o8GyhIVmuHixqC9Qo259JyRhlirGYMSt0TQQwlIJXk9
	 TqGXLOp9IH/9o8/z3yUr5EpQArfP0+8x5jpcYui1jBIBvFE3ULszroVvaXwAos4kBX
	 OveTDh23VY5AsHqCswEXbn03K85VVHCVenhlwOz1h6xJvhHAm37nlCt/5CJRXFgLiI
	 B+Be6s62EeqFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F9DD3C529
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172920995358.4846.15139951248624732386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1b3742fe14b27ffa5970f5e578c1f2f086048f910bccde218d754f6faa627e2
Date: Fri, 18 Oct 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729209953
