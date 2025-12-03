Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 219DE3207
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 06:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764744174; cv=none; b=gUDxcnXcbQ+6w9OzRUER9bj5uXaU+6MzkZK/z/O/76MsN/S5Q4SNwKwmatlnJRj+TvwZAOaTV5FZc6hC4xqiux9WgOq2ibFXrKklckuyoMq3gdcim84CtAYVFtbOfVk0I0R2gTZarfMIHbR/KI398tJP8m7vXdg5WPIs00kFlHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764744174; c=relaxed/simple;
	bh=ceZkIJvZn6TMSajdSQUDLMQYPaThhXkNfNfrgDCD840=;
	h=To:Subject:From:Message-Id:Date; b=hSHQ9Mofy8W0sMefqJnf5nhVcoymO1m5Lj0b+F+kvqXupLzVxBUgFI9UVym9ueTrKXeNciGHyMN27IK8qk+S3FJPqTOUDOrps/F88d4jvVW90paQy+idzhinMD4tJK30gLs6B7QB8zsgvK0qGHkNnlEDL5AjHDAYyd5qZ6cJBmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dolztdTV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dolztdTV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A52C4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 06:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764744173;
	bh=ceZkIJvZn6TMSajdSQUDLMQYPaThhXkNfNfrgDCD840=;
	h=To:Subject:From:Date:From;
	b=dolztdTV2Qz9lTCBVczmQH6O5Rk+P22vaSP/iRDZzQHM13vb6PBTQW0i2Da0kRC88
	 SFUzUUGOlYLtz5XrUq6o4cEpM5sIQDx8HluIPnHNNByI/OhJtsxl3/yXuJVA23JX8k
	 y36XVIOB8r2q5XhW31fof3oSTdBPQRnUf7qShNSvxbiPiE8osoIa8qYkrVbQRqQmEo
	 9IDyX8Pd5qK7BAu8awLXKvpog7J7ssY82bP9SRz43fPjrV6qTz2CbOFYaagcJYUNkU
	 pPv07yGX0R680wzs1ZLQPBDiAiXIUpJAtBqGXGUqi1H7yAvGg1bj2WemouxtgMkHgI
	 YhSRpqTBNOWIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918D3D116F3
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 06:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176474417358.3541.11373200108690399974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42d7ae1ace2ef2c661a6847b52da18ddd301ca49dd31059d6aa006b97c9b44ee
Date: Wed, 03 Dec 2025 06:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764744173
