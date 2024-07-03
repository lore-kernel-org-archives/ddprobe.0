Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 505F513A25B
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 12:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720010123; cv=none; b=L/9vH90J+xAEoTwJzh9O2zEXGhujf1ClIVgpibTdL6H8h6l9flnvyaLD7LjvBXG3muT82WOkjAnlHINdyyFfzYEgIbSRyXM6T73Fb7gJ6XfdIpwoaiqVtPDrs22lLbXy7NHp0S7xC4ARyYFT+Y76uzWCZi7wqsW/wS9FXCMSsTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720010123; c=relaxed/simple;
	bh=YthzoqC7j56xg6H34AXKroQu1Cg/3aSvxNQcKmwbuhU=;
	h=To:Subject:From:Message-Id:Date; b=sDyqihENCFL8Mb7ZYN+5Fb9lFpzDDCb+WQPclKVWk6WbHjZxtnWISuqQXYqxbwEaWa64woo6GkdnfwUrwsoSAgHlUA96+X77eZ7HaAS6Ng8eJgcoDmnbUKZEQnNNBqtfyp8WiwAGXqetqUt2DsF1ufcNs6cyxcQDMt22wXSzcdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OX0isend; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OX0isend"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD776C2BD10
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 12:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720010122;
	bh=YthzoqC7j56xg6H34AXKroQu1Cg/3aSvxNQcKmwbuhU=;
	h=To:Subject:From:Date:From;
	b=OX0isendF12rfR2bD8AV63wvV4N7glDRVYSiHzpWo1AXLOeOuQ1zM8iH85RHeYcWS
	 wDiZoiGKfK0F0zWpefKECRzPrz4Juyac1OO2o2P0unTkXEdCkzqDEaJAxDxAaTNUbg
	 S2y1jGrVJBSrXbWY2USH1TdLvkRBmnZtOh4VKLKfOqFRqKG+ARwAwCbTL63i8dVsX3
	 G6Cft6ABMy1Dk69S9CkHwuSk8E8P8foDfPcIm7qhsxz1d2Oa2nihRhR+4t/pck/ZF3
	 k1NxtWf4xP5Fd0vMBGA37EqeQF+tmrnnYXUrDx7tv2R5dR/Q7yH6r4m5948no6IKgG
	 nZWRAKFLC9MEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4037C30653
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 12:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172001012279.25737.3830702742666405500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a99a21c9ce3e65389b40f0cdb00f0225725e746e4c1382ee1c3d2ab40ffc1ab8
Date: Wed, 03 Jul 2024 12:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720010122
