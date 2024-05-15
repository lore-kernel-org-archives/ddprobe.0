Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 465DA15622E
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 15:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715787743; cv=none; b=g7LIZpeP+6R2c39m3//h1YGqHC84Cpuh8U8SAobMu6vYnn9PXEMgo0X2BEJ6XGv7HtPIU26buDxMZnN0JtucjYLwqcu/grNK7rhM9q7q9iKfPdXR4SU3MAiG1jCdgbvJwdAv0zx1QeZcXs8rmE+sUjrGZ8eZnJB4SxYfXD6Dupw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715787743; c=relaxed/simple;
	bh=6lOoqZuKyrwY9bom84bmEzdhVF7ZxuGAFLIs5tYVgs8=;
	h=To:Subject:From:Message-Id:Date; b=J7zHmqBrsUQMolYfBL+xNnuRkPEGp1MTj8/A4aRVLiucmoYOjqUdup6FmbOlJ8Bk1hYzBeggdUhSjw+XbI4wj8wbXSXJzfw5gOjcRfqmsaoXL92QGj7wFJFGfxawQDAPgu2rw6JeQDygrOXEoSXHfyPPO5+/OsvkV7tiKp3R2NQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=faEp/aCO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="faEp/aCO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5E43C32786
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 15:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715787742;
	bh=6lOoqZuKyrwY9bom84bmEzdhVF7ZxuGAFLIs5tYVgs8=;
	h=To:Subject:From:Date:From;
	b=faEp/aCOc+DB7uHqm2P6n+HakdTjzFCFVJjt4uD6bxCdlbc2ey0XyJ9ysgX1orbuI
	 5vpPC0xHxvybUZOGBIGyXWJUNq/J58gcb30xSb9hNNgUD3brytEBKyNyHPqfc9JvSY
	 WTVSpu1lZfBTH9adK0CuD8XJoFMwufNkHgXPIAbxRBpfAES3wlRA57jo8+0jJNVB43
	 h1RiTuiSicdz3fl2/LKyp5nWRjNkTLXfCIGIM/cfKCdWbGnwv9zlJyEIprKhs0sHbN
	 TilNvewijz4HjFIVPuwa/6+uUMs7UNfp6U8khg6JSE8inULW8vKejVMufTNnh2rfwl
	 47M1H1m3/aGXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C40BCC25B77
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 15:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171578774278.6674.2223329646231405152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a69d01efa3059c74d897c75b450e6d864ed11c71f42f87c08b673de29ce3920
Date: Wed, 15 May 2024 15:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715787742
