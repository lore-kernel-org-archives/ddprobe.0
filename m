Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E9B7881E
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755409794; cv=none; b=Bb+Iega1YUVnLdOYyCH7Yd1Nzdj4daRsf0ngnGTuu6wCnE8GcYm68/t2mbdfTypk8dMOrRbTD6FYMDxTYMVtb+s9jdz5Yt9msM+ykanxhcPYiAMks3rsja/BfL6wXEfUA0oOpBLaMPZ8R0uA3wx4qg6eNf2Pim4g38JPdUT2qxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755409794; c=relaxed/simple;
	bh=NM2IKflejuLeKLZcOFef5+51ayjR/XMPbu5CKh+Mp0s=;
	h=To:Subject:From:Message-Id:Date; b=UqZg/ZM8YGzoeG3+jBGlj59nXpKvRfZxE5s3SjITjZcLqbXJKRL0SXhslsA7aHVNzIT5tC8RPszxGGZb3FqdToIOJ9Urfqu61Zg6WNLDUCKYvJT5h2LC0J8/jtvaUAXrnrtwHY9UnWH5PLgSF8zakuszyEsKGqeEpe9bc1zFkwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YM3ks72q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YM3ks72q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D93AC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755409793;
	bh=NM2IKflejuLeKLZcOFef5+51ayjR/XMPbu5CKh+Mp0s=;
	h=To:Subject:From:Date:From;
	b=YM3ks72qGLt3VqMHpMmGI6b8Kh6+I26vQHM2CAH1m71HGVH3AbDE4zZy0oUAnpJd6
	 DHw+QHge9Zt4dafHMBNMevjnlKWf1wW58iDpTUfWbeKOIbtVCE9lk4KE+Mc4lV3tHI
	 B8/lYfjs1kvmNy/QdaV/MQVQkdOaxg+H/fR3soCMLdj+snXbmwFP8awA0DyHbkgQLs
	 Tv+UbnHAlsndzg157eMiFd8V7L1IalUOavoDTDNNrl4KJGhKvHWc2xF1tLLiaNwwcC
	 DNXm3kBH2Q/Vxgy2dLtlOeJu03QHI1AU7WutUl333rvzZbuEPy4PhgO8LV+Y9O5XBh
	 eqOHup7uuUu8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB61CA0EDC
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175540979357.13706.3689418942397185799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee882b7006688d0f97bdd01360b0bdde7c700899aa0418d49dc010b3155f3cf2
Date: Sun, 17 Aug 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755409793
