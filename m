Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38DEC3C465
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746203395; cv=none; b=n54AaD54+HYtaDRakb8jyOnNhIyaOeun91BJe4imGIwAyfF5oHxQ+F8sQa4iLRrNWxISnsxt68GDidciVh228aOqsvyqt/0eK2HYySFMjXmRa44Q9uVet1A6ABJf6eDriBdP9SR9CX2qvsZbJVi2zG5k9iEUP38WG5wuqeAXFqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746203395; c=relaxed/simple;
	bh=RNicqCafUMCXw0XwNSYUj/XgJqbh05GIqk9p31GjBTY=;
	h=To:Subject:From:Message-Id:Date; b=T6dDZDjCh0Y+IgtFJlddCW3PUq3g+d/i8qY2sBeKkchCdgM+aD68Rp0Exsf9fzx+AsK/xlX5CEU7wgTEhOPOxZ+cP4FZ6qdvd594wV6Wo0Q5MxaiyIMTXyohowGcmZWBMtrMQY3R9Zk0F5w7XNzbts8j/MIJSwgmN0aOJGQZIzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=odKPY7Uv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="odKPY7Uv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9D4C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746203393;
	bh=RNicqCafUMCXw0XwNSYUj/XgJqbh05GIqk9p31GjBTY=;
	h=To:Subject:From:Date:From;
	b=odKPY7Uvgx6jnd7N6pbJA4EsuCiu0L/q914rqz30wUhwGD9bodK+KRcTyndKAKgpg
	 Zmp9GRVLkWK7N9HtPXH0QzwYWeWQMsa2B+NxSIGGl6p0tuTCs8vET4fbonSf8YNeKe
	 32ksrDvCusi36KuaSEPegZM8KWzHH1WMNEtvuT00tbEMamzZFQiK4BJHUTw+04wR89
	 CB47F/djKKqgQU1E5lkn11TVQFaGmFTUv9if19jzWEancnITOyr2GAN5xJ5TcoaTCx
	 t/UyuHKfA9nTL5MDBYlMRVPCGoEDATWOOFqprpd/iolz/LNL2UMtjYIoevV0Fuermt
	 GGzL2bF62FlVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E784C3ABAA
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174620339357.23920.13997516086118381510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b047130b8c183af47d6901dcc86c7bd18183116d884823bade45bc6bf6b8ebc
Date: Fri, 02 May 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746203393
