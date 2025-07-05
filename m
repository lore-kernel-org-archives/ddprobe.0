Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2983D1DE2DC
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751679594; cv=none; b=FyFNtfDZ8R5YSoBOYnwTk1mIiIN804CPl6GxOqhJlXLywytk+bEH+LTar4Jl92w8XRX4Pjd4cp4VaaDBenovyNUB/2C1mabf7wHXV0CKeR9f1CuIQf9qzYWZTfXVqMHJpzbHZfYj5QBd/Xvi0yuoxeQDi0MqAV2rOupRGEOlKe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751679594; c=relaxed/simple;
	bh=Ru4Oc7wjRmgRiVmUsslQqIjiBLMR++KGKAND23DOa3c=;
	h=To:Subject:From:Message-Id:Date; b=CTcskBEtKGuwwVilayseieRTXnMtA/O6fPQgco6NjgQBgrkgVVn9/c7Gbwmt7lVHPUyyvqQ4tLlK3K9Nw1973FnFUWwPlyR24lyocQ9cVAeg9sDy0GM768Fic7Gv9NNXaig9dmSNn7jp4xIpUnTyCsZtVkqTKioRhhd9PW4vqrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kwd/wnus; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kwd/wnus"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DECDC4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751679593;
	bh=Ru4Oc7wjRmgRiVmUsslQqIjiBLMR++KGKAND23DOa3c=;
	h=To:Subject:From:Date:From;
	b=kwd/wnusc3zzNGqyo4pWg4SZjvXl+Q7Nk8XLgIj+hmGpAEyapqdZlv0C4bQb5Zyc+
	 MGxpjiLH9uJcTDu+vhOzYuuhrcK1oI31G64RmzVehmG/MWgYlhipjHMeJJCThJOfpM
	 IpT2mgCbShlcvxf7MrDwQOMa1yfM9g2lEzZ+Z5g6bFDgZlsH+zXHOatBRbk2g5XY0g
	 x00C1W5DjZBWfyoqio/fRiDO87RwUfYKp9Oh8vC4ljKAN7n9bUDWsaZJNA0HAPjTBM
	 hPDCnkdyJmBYh3vjwKAv++6vWXQ42SI1nHMTQtYLcvBo46wgQBl+y7A/47zu2eNd8Y
	 LJ0d2mliZ1lgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EED8C8303D
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175167959357.24209.11110592741196920010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7c5c5250ae80c219aacb09d7d6bfd6bc7c2fb30d4fca48e10b257c6dfcfc7df
Date: Sat, 05 Jul 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751679593
