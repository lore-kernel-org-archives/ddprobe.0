Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F3111A7074
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723734354; cv=none; b=lTqqrnpfORD6FiJ64Y7RFxVB3X18xHV6x9ppSa9KiqI9z6SJ5xTL8V3C8Gmf5wSm7aeeaq3V58HiQ53WlTP/tPqzp8DCp6gG/9kwZa37aBNwhe5NF97QbgU0Rl24hgBYXHBDXKoxRbwmUGmUyOPaYhGwlgJ7uet6bxOcpD66h9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723734354; c=relaxed/simple;
	bh=WMVlhd8jnTbtOgGCK0//lek40TTYzbCzn4rP6U+SdTw=;
	h=To:Subject:From:Message-Id:Date; b=ottc1LMFeqFTl77F7SU5lqA334Ze7symLSh7UaoJAD2haWL7jBLzYsCEvQkuXFyfqdcTXO8Z8LKqcJURKBL7XnobC4YgDN6VY3yzcmsHjJ9zMrfjL4if+O6dhCnbONJwUq+wpy7p/cw6ctPsPj7b1QgXAFPBtRFbbGzo6V3Qhvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LJuZzGut; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LJuZzGut"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3F88C32786
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723734353;
	bh=WMVlhd8jnTbtOgGCK0//lek40TTYzbCzn4rP6U+SdTw=;
	h=To:Subject:From:Date:From;
	b=LJuZzGutT12uj4vWaXLXiLCG79i/CsxNGYgfTO4aTSpW/LWauurjYC/N0hKqHonzL
	 srsALv4+kG8T7/TbQSYYCJzOmCNw/BbtdcUluedgtKU8SnGn/VIR6z7rGi9hLFnNkL
	 +TuqgtY+EMnUPoMz0WYh2DxrHdc/+7sJ7gIOde9ERT+aK0xokg8oZL/vOyjBwIlACJ
	 I9b2nNHT/iFMiDDXnuSZn8k3DSnuigpD9/1bD4prowWdv6d3apWxg1FkkDYw9BUZlx
	 mppvVwFJqaxh4gir5ZU1kuL61AI6Tw9eK9FiosJ4gSyaRRD29MfbCAGOKoQnxIzOQM
	 UGLAVvs+S4Hkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C192C52D7C
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172373435361.15908.4089883620185863050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4942c08cd8671b3534980b41c65a7073c18ac41b0f41277043b5beb596ddb32
Date: Thu, 15 Aug 2024 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723734353
