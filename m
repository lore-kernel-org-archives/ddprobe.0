Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1663015D5B6
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732868754; cv=none; b=usNX1M4CANkxTHn5hqKt8FmPRboPrqxjx12jRBw7WJEPFb1y44M8i8T0RFoDtUtwRn95gMMgF9RpzOZjGBofYK8N+9ZQXWgErBnrN3w5jknjrE0di1qTkcCPkohy/V7RGkhLgbJmupmGR0KH6/kFLheka10goScXyOpg3RE4gbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732868754; c=relaxed/simple;
	bh=rmRPYcFaGN+iUi2Q03iE2eRxC0aEfHNFTH/VwpdhKcI=;
	h=To:Subject:From:Message-Id:Date; b=U8kFbvtVM4GmPOmywRLR0yGx/prDy2/IMZ6rilEUBJjTo1KoSPDN4KBlrz/hmvmwSk12mq7j+j4xyIMjDJSgUhjD2rB12Zq98m12LTd2Ucmxp3u0bh1FnjD8JfyoWGNNa0wcKDbGC5Ws+tDKhVMpDD3Aq0xP91QiHVG8UOa15DY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ApBWZGBf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ApBWZGBf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7700C4CECF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732868753;
	bh=rmRPYcFaGN+iUi2Q03iE2eRxC0aEfHNFTH/VwpdhKcI=;
	h=To:Subject:From:Date:From;
	b=ApBWZGBfAx5PEd1g4V+PP1P8zMG5vgev/T8mWkdUJJ0bqBjLKbhx68y6dp8AazrvO
	 o9dqQaDX4iGbljZvGZK07mNE2EFRFHQpu7F43pt/O57N9uWCoL/0FI8bIE181cT6II
	 i5cb8xAyor1dZLw8HSZ8R2zwWbtBLaQTgaWMmcoEDRHqsE5rRsI2qTSBD8wc1uFXm9
	 C3QDMyR2OUuN88yq3yuFJxUMv8ZdC1CaoHrnx7w03Hh/25ZOC567RExtcQM9CAHTs0
	 iHR/PxThCNaxLhNlyiyWXUVBV4w6EpW4hZZ596mHvqpgxlAhxEGUjJ2GlNSSayIo1t
	 oVk8UoG5RCW9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A21D6EBEC
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173286875360.15869.11586134609900245275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd6bf9f1ade9b1a208a7f6ae95afd8e96632baea31f3e51e4f995e9f00d8551b
Date: Fri, 29 Nov 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732868753
