Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E04647F57
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 20:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708806497; cv=none; b=r26gA/FizTnW8yxAWWcKXsGvoCGrTiq9rulns6zcXxziYvtEYEjanX7bAYs6nXjFD9IA2l45UaRwwp+V6YzZismGlwc1PaZrZf6WjiRLB4qAb5R3VpYiZY1eM53LlSFhtrVPYrdkXgeHOJ/n2gD7PI61v9hoveThbYTSiIcYD9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708806497; c=relaxed/simple;
	bh=gKF6JEfZsphPmyCH/xMxiuRFsT1uLE2CKgcF6Ldnv8w=;
	h=To:Subject:From:Message-Id:Date; b=T/03e62MaUZf4R2OUSJ2lIKWPoBdDpUMzp/z47Y+9spTPT4b5v4x0LMyAVz9rYATV46uvWfFx173VVMew5+n5NFgn5nYSOpf0LRe6IQr+SHct4tOjYGA+RzOWzajs/8pcjX3q8IdaAhXdx1O3oonDAjjGDCJznBIx7TGtfjeaLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hQxP50hi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hQxP50hi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85E87C433F1
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 20:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708806496;
	bh=gKF6JEfZsphPmyCH/xMxiuRFsT1uLE2CKgcF6Ldnv8w=;
	h=To:Subject:From:Date:From;
	b=hQxP50hivxfg7jpi3Rt7LtW0e16SXM5IOVbxeiGufysPd3OmzW3j5sLZIiuN6PwZP
	 WbjoicpcPF5Tp3F8iW9VUMJvOtij03WIRr0x0M2Yym8ldrLlAPESf5PeW8E1nkN7Sc
	 unbPDAXfpbOzwv+Mie8sQauskhN5Gk37rCuHMCygcY9riCs8H8dUhLxy5S4t11tcJa
	 lkJD16kO6AC82WZOTwItRzFLyHilhsmlUl9PdK+igbUFhBwr2UR5zZr0xOb0eVfyOg
	 JFlv+vD6NIL0vglOLpB2/PrJFEtdokaIuCH8zTnjqAI1+XkDMVq6bpgk88sZSHLmo3
	 lzk73oWryQvQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 689BBC48BF6
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 20:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170880649640.11221.17283823427458263410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 796bf978b403f35714173f8215853b8ee4bea59adc74bcb0d4915d3c511f54c3
Date: Sat, 24 Feb 2024 20:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708806496
