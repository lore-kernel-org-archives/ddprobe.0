Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 142EA2EF9D4
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750186194; cv=none; b=L1K2EoZ6K0oX23MovFOuwZ/gZ8A4H1RBeipN1qogzTMR2kemVT4CtRzASGMrslZqUO5v91ebGbF3f02rZfxq0B4gcak2Ih8jaPMXwhJp9MslovQrejRNG07xEv3HYX84iE6lL7mXToe25avoAOmZ/1zLQR8nFGeK6bATOr1IGkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750186194; c=relaxed/simple;
	bh=zLkkinpl8D+ylGcYcmQD4f/bOJ/y6dQZGmai3rUyxt8=;
	h=To:Subject:From:Message-Id:Date; b=KJ+hj7vfWxyR1lEdfNQKmHKNMEiTVeq7od+VD4CXZNs3DQVFK399Pgy4bK1FZweONknt9ABSdme7GohuZilBKiAJcpIbfAmeICws1DR95ZARRDD5XAFpwPOIHR+Hy2zxNGn1xTq0tc9QXBidpwWJ+3AQojPelFNKJZu1ieV2ypQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JcVUVPL/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JcVUVPL/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C3B4C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750186193;
	bh=zLkkinpl8D+ylGcYcmQD4f/bOJ/y6dQZGmai3rUyxt8=;
	h=To:Subject:From:Date:From;
	b=JcVUVPL/Qr0EChLp+Tg6pbK/Jk8N6xD4leMgWTvau7dBy17nHrJl6dMBBwlniU3YQ
	 kFknxszEqkqZcHt0+iG17waCngv7awMWQ5VQAgujp1b6JrHi8p7+AP2HG1zL4fPA7k
	 qNiCh/7Rp7b8lz2C9SH/VB8RTwhSOwkYFKrQeL1212+dBf5m3w02eEa2fv6Z9m+2/l
	 1ss0qxfSDS8n+WMAvPVM39VcUN/y5grwNFaF/Vqizs6OGc58yVor/D9snkW2X8EqqQ
	 zgKUB0s53ICZi0t7FWUu3QcmHvHjtBMoUCzR/Z1UW3/89YwkyebtOxgYm0bmDEgppC
	 4xkXI0jL59Xbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E48BC71157
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175018619357.26443.6010010998712639924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c34bde86066467cae2f702c9d216a41cb2d4cdea2cc987e14f6e20fa302d2ea3
Date: Tue, 17 Jun 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750186193
