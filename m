Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13F5710F1
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 00:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765411374; cv=none; b=T7wD/6UOt6LNJdVeuGBOqZjfIh7er4NT7z/Ry83Vpb9vGQ9f7vHEQbP/tLbhm4egA/XS26L3D0SQ8DIDqqKGkvFQznvUCeII5NQOIbIOMZAtK+AjKkGxmrcXAhFMOtvfXXv7b8SKNBSlwnPTAUDABU/EoF6Ao1H9MEhDbU5QL+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765411374; c=relaxed/simple;
	bh=pB/iPmUuUpCRKnrZxTvzm5Y5YNrlwKzDfs28/kRRMWY=;
	h=To:Subject:From:Message-Id:Date; b=G/eIUjaJzxr3XV7jZCAmOijKHftsKY4oxJrVXG8H14RAnjvfv9A9TL7g2J+fnG0gewNPRyeOOccfOJpjTwGED6P34u7EgiJOOLAO3sVIAnwiGJDuJd1RRw9ALVZXUSdTzQteg7kpXXVaqCFAKwNuKxOOEwZ/8e734duYLWhyR80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CYCEQuG7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CYCEQuG7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D05C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 00:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765411373;
	bh=pB/iPmUuUpCRKnrZxTvzm5Y5YNrlwKzDfs28/kRRMWY=;
	h=To:Subject:From:Date:From;
	b=CYCEQuG7oY9kl5kPknTMo0mhbZ33cFy2OYBagUVhG8xIQs9XltXtp6/oifKkQTYqC
	 N4wmgEy3/JpqKF6tNpFgVnHFCW5cBKagR9MlLaPZpsks2pDTssAg49RDA+vkti4NS9
	 tZnkYm6K9QyEYlzIpXYkfe8xGDe0IjLa0rMWLb20xoY4EHnThr43/CtupxnMWxE1kI
	 FnhJsaXSnNZRGgrAxoGYEXJMmRl47bNnd5XyHxn9lzN9ZqBkFWQJD8KtWS0KtA88zP
	 KQ5KpVb0ola2aLKqMd/6O42aKCAeLlbY3U6v/mWVkJoXnsbvAFCLjjEZgzd42aMJuL
	 jmST26lPeDkEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C86D3C932
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 00:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176541137358.28396.14798277227682764694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bfd41580fca0a255b4a4b81d1a5f8142357f08878134c80f4ce70d2ec7e2f78
Date: Thu, 11 Dec 2025 00:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765411373
