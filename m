Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BAE23C76BB
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789920634; cv=none; b=WYFPBT2vnBFMDY0t0n80D31amLa23JEU4YNsanFdIAQDyqTpktTpZOk9BTg6+bwC2nJPBsFn9FYbUqKLbojRU/WmZYq+R/afrzqvEqRqva6eyDuikqcAd9jatyfHtpPLCu0IrqOa8IGtFNATGobhHkRW4KhUvTjsotI7KQf935U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789920634; c=relaxed/simple;
	bh=wZX3VAAqXvK9GBbfkS8TqUdb0yX620pu/ghFbueQTuk=;
	h=To:Subject:From:Message-Id:Date; b=IW8cIaWuJa7Ad6RyOpn+l1gZliiQwBiWUq12gG7aDLI38CQ5qkiv5LfNKBz6dFqucUUpS0W9+dePX3exjQ7121TT7DWnID8bM1gyUpli9lmVv6uyaC08j9fdsWmEFz6n84AaTeJKOVDoXyiiEWl90giIZwM8n7nng0RMr33m8CI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OkJRPGAQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OkJRPGAQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D423BC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789920633;
	bh=wZX3VAAqXvK9GBbfkS8TqUdb0yX620pu/ghFbueQTuk=;
	h=To:Subject:From:Date:From;
	b=OkJRPGAQOLbGbeCdS1TFF1ZIikrKxcJXtSLhSiLcsNTobBwHXdKDMoO8F+Egby2t5
	 C4i/iL/5/5CqWc4afUe1hxA7Xpz2brMkySgMnWi0P/6fzmRsmHVMp305kvDwrbp7sH
	 l7Ukv6slTZ00coQtsm329nwtAXesX+CMmwfGAUtYUvAM0hU1Tn+hGNzXHpU2mBnCRf
	 9b6rwsTOky0FJ1J3ELNf9+rvrfdrUmfazG0DbeqHCx8llTEoj96YQMTQ8IfdyG7WVB
	 3cpfcYq8AOgsopNTIX7xImHFs0EcM3DXonasJYsByHkI9pvABpQAWbuW0S0wygRgmz
	 Lgz6Yi/JwLxCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0252C982DA
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178992063368.30683.9502088837205852971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73a217a30032b4b9535371c2af2ad76b865014071e9395a2410f6f24dc2c4cfa
Date: Sun, 20 Sep 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789920633
