Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335EA18A93C
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748163594; cv=none; b=QO7fk6JgmVMG+LVjNhROducwphr7jazDRkcDIR2SMTKo+eKCiATpYp8r0NWxEzIwj2tbKr1YhieM9nEhnElwtCZIkRzRRwnQGVPucuk3NwryK9uwFCuowMw6S3XGL83per9eZkW3VilMxjl5x1MHS5MiRtWTSQjV8cYbXa45PUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748163594; c=relaxed/simple;
	bh=MKvbLKYf9ssMy2owAsJWrQMMonhsqd/o7eKK9uZD5lQ=;
	h=To:Subject:From:Message-Id:Date; b=iuIknPk33K4DszLxeqD2A1BRFurFDqdgDvFsgbjqjMy0hB1ed7DikV8Jm5G4N7TTb27My66eohAnMeXCGlLRZ63AyhB3mnqp5rh2vfJ+arBFIYE6dhyQrPflCaTEW11EDRXFRnenN0P2s6850J6ByTqDV+CVzOFcb2jaojReeCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qJ9RPyGR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qJ9RPyGR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A92C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748163593;
	bh=MKvbLKYf9ssMy2owAsJWrQMMonhsqd/o7eKK9uZD5lQ=;
	h=To:Subject:From:Date:From;
	b=qJ9RPyGRHEV9+wGoavUNtnfREdvhsiHw4gg5gvi4U9CmIv5Fpp3BZ2U0S7I3QPSl8
	 /jEF6ij4evoUf31i5pl7t5YCCjoeaRLDJshFz1TSzx2/+ICOjDG4LfQVX/8HmJ8eGJ
	 KOqMwOdT6Ldg7qLrGgsp7uO1sYBjUsAl91wb2cc5t4w67KtbLiCfOh8y5MqcDx5eLZ
	 9dvum8ffk1aWGWHTW8GpjsQjv6N+e81A06MzwpPbSECJBV2yqhlpM/mg4OI9apAX7Z
	 Hcr8Yi8ynjfRerlElfNzbcU+GI+FAC4irjVU0nat6VqT8qzS1WcFQgYKgnyS3tBfRE
	 sQJZJnRiPUwKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B02C54E90
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174816359357.9724.14120372510884756302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c05d006cf7ba4d560963c9d1631b96d7aabd741d0569e7d26779e5961997db8b
Date: Sun, 25 May 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748163593
