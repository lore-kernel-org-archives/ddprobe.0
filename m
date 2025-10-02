Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F1C450276
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759447794; cv=none; b=oc6C/gwAhNcNJ8d2zCZrZD4FIC2yjEXbieShjz7KPeqDGTcKzhoBFpivToKvQ11QwW0Od8dbLd42uXTro+i3HNkK8ZCt9wgx0S+Gn8s2eQitS/VgnciPN4mZ69yQhnkvYqpT2hSjvQ4yCHunJMUD2Y7GISUYyX8pWxQ4D3irqkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759447794; c=relaxed/simple;
	bh=dAcLBBIfpK5lIZAnMXd/ZZWMghPELAzOU8pP2OhJvp8=;
	h=To:Subject:From:Message-Id:Date; b=fR0w+wx3lk85xVLB/cvuD8RD++b2IF70i5TZHP3YuXJoImZ0S2AdvhHsNz0+BIP/22IqaalVBKSY+djmORLaujfty9MhecpgHEN7zXvvMBtaZTYiIYq7iaEEPZr102slYZJK9bMBXJn5vOIlBwJmjowu5RADtriSKI+OPCFuRvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jJ9G/L2c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jJ9G/L2c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9664C4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759447793;
	bh=dAcLBBIfpK5lIZAnMXd/ZZWMghPELAzOU8pP2OhJvp8=;
	h=To:Subject:From:Date:From;
	b=jJ9G/L2cPh4RGyfPlD7H5HWnZ5NCV/3Dz5ikSNYxWMvL2ei++iLMD8HtJfXCDwzr3
	 nolTN/LB7EGmaL/1eqfsFv/h6Oc6TZW2yECm73PHmH5MUsBEgCioo/BxO2ssVCv4+H
	 g91dq3Zu1tna+/7QxRiHfpo9P18PTsUbL2foWsaTg5t9OLhE2UxXyT1pxL36htL8Tb
	 b8SeZWsgDGf06TKoC16txo9b1CukNIBDxs+qkJfyBHmCMoy0w9fYrSD7RctvFAIdw6
	 X1raXig1xmUBrm7/TcxUMSnYBubyP0R/YQADNJ5PX2PU+KQJiQ8y4ZwHzHLLXkdIXP
	 RIf7uNUC/SJiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CC4CAC5B0
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175944779358.11054.4119036174811165564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b62fee453d8a9301131277ea371b5fffcce8569608cde54da5dd07cb055d70d
Date: Thu, 02 Oct 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759447793
