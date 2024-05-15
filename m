Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54DC515ADAC
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 21:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715806943; cv=none; b=u3abur/uQRelLmXa1ZtyZ0WZC0YOagNkXCSv2nw8Y9FeD9xVWiIC/Hj/bNBtWmgwC7fifjRm1necbkvGvj+O985DzM6CatW4pr6vd0ssB22Sp2Qlkh48JXE3UG0GTGrswhIDiagPS0fGPocAWen+z2NFKUT6Y1ZHd1q2NfgI3r0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715806943; c=relaxed/simple;
	bh=6mS3mgX9i34UZq6TR92HaESPLuZGyUDVLT++JhIOwOI=;
	h=To:Subject:From:Message-Id:Date; b=Mo/defswGah0afTjTq30BxcxE+7HBJBR3d33oCA3w8xE0nwkjYwY6bQnWnoyh+bGVJedFu7xaWpjDP/JHgBxaB5SslxH9sR8fKiAvEJiTBfIsxNkyvbv7bCGBOSI6xxYr7em419cGci3qkqdeQNfYUq75plCsAL80DgMHv30icw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MOcHvnVw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MOcHvnVw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE27FC116B1
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 21:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715806942;
	bh=6mS3mgX9i34UZq6TR92HaESPLuZGyUDVLT++JhIOwOI=;
	h=To:Subject:From:Date:From;
	b=MOcHvnVwCGsgXwY4mR9XDw6R91mklYoOGWw02uRxlwoTXZFbIB8DS3qyrAz59Sb7e
	 v0dIGgp9sijBI1twuIEcCHVVvTusynbTkQEY4ExKh+MZlfhN08/ZyWGLMXobqfV0ss
	 ujFQqE9B4HB+fZqU/Tyuok2hXGpSeLKcbZkp9zfxLgz9u1indaATSl5eQqtDj5Tcj+
	 iD7jeGAIPm+b5mQBFAXdEtgQNq7jTPXKdFjqJ666ZIfecIP7FX17kZGol/tsy2+y7v
	 YkDRoH3sOI3HEfrtVo00UZAj+0FDenCBRNERR577M6p2vxst+h3BbxxEtv6F6eP6gO
	 NT9DEGiGTBP8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C45F2C25B75
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 21:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171580694278.31956.14935374621018894826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9931b36347250a84aaa0a5dbd356c64540fde3cc95f6b0b36f931d8f7267cb6d
Date: Wed, 15 May 2024 21:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715806942
