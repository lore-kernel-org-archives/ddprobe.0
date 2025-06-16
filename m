Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3818E1A7253
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750064394; cv=none; b=dlZEgqchRo8AIy6Kv4KWoTG4bjSu6nLrnpv1EDq5rX9PywrDhpH4fVNQeunttysFO7BldXS8Oz2kfNJs+aIeeH4A0fTij5frCD88zBC6AT0eyUhhulQpc4CTWf48Zf3MSdW+E3V2gpn5+58qIsMIswbjtQvjbaajA44sA4Zmzzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750064394; c=relaxed/simple;
	bh=EsMAYEm5wOO/22btH6WbzOsjWPgHW3DyTSw/8A1IoL8=;
	h=To:Subject:From:Message-Id:Date; b=nebmTqXAs4EAxe5SjGoHBTA7IfrFHGOoRmW20vH6FqvihuiI1NiMlsZalO/w0O9Ot0XqiDkz7fA9tpYNmgwAMyM+lnVJ4OeuDlmByHWtvnFSuJVWsKfKE1YTs18X4LSbi7oAASfRRobUKd4ike0uObXJ0rFk7tBHvx0JZrhehpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Li1SkAxv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Li1SkAxv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC794C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750064393;
	bh=EsMAYEm5wOO/22btH6WbzOsjWPgHW3DyTSw/8A1IoL8=;
	h=To:Subject:From:Date:From;
	b=Li1SkAxvmxgkpZTqeRrVnq3GB4wyl0STdHc72Ok3qx/unkQ7ELWVw2S5VjmpRvAXW
	 b15d06d7kHbkkmonCQYY0Gth1J6Bsn59vO8KBj+962fFmgpJYJxg4ggL0lfTC8JcJ1
	 ypglmfyzp2AyU/9KkZPe3/pqmoA7scBVQ9LhLllrTu3/EXIL+4hYeKiLmYX/GtRnrH
	 RRDCJWfGaPMQ6tlUj+Oe3ZcPu4H+yVF3zSxbcNSasiUHa/4ADnhg3qZRs4iFN9jni2
	 FmaXBOOkBTInGVwxekwsKK8G41ZW/ZRQrOR+Lx1Da682AjZjcVpIfumIbUDI9uaTdE
	 bnUruAX/tRfNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D3AC71135
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175006439358.14685.12429071626769511332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1b02c571ebcb25e38c5045384548060a07b0320b3cac8ae7174feb9a8efd0d6
Date: Mon, 16 Jun 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750064393
