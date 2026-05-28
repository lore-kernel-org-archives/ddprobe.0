Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 286D8309F1D
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 20:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780001554; cv=none; b=aQjl0Tay+qQ+ufz3kPyxTtIMoEGaYZfTpTfK34jKBEcCPeHtVGFStunu38Q/bExXzuZa/YuCWqYnSbmu5VnXTskjAggEzVKG9NvsW+wqduoiYeSfiof9rUGnN60Z8O3Rmm+bF3+eDo8RzEEqjGys6QrXJA778K4aC+smW75jOMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780001554; c=relaxed/simple;
	bh=+Ecgbi4bEEbOUDYJy0Q+mhH/EbgldHtJYnP68ekwZOo=;
	h=To:Subject:From:Message-Id:Date; b=O0K6PC6gAotPxxWeuNnjl/OrIYKzN5K18I4k9fjBW4QQ1mnISMYj66MdjWtJwsen9mp7oYR145rcPsdIkNHtr9Uwih2OP5UvcIoTJAO74+49E2M1d/nBKlZJQk0ZXldX+ZTWndkb/uPE8NB1ex/JiynEb6XOQmQZD+K+S1goh/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QeuKDQHY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QeuKDQHY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C614CC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 20:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780001553;
	bh=+Ecgbi4bEEbOUDYJy0Q+mhH/EbgldHtJYnP68ekwZOo=;
	h=To:Subject:From:Date:From;
	b=QeuKDQHYnbj1LJCgHtE3tjcUheYU3lWstl0rqnUJqgrTiCXeNM/PygboBI9/w+ciQ
	 VvNmzMOYu86ebcpxHYZEOM/pSVlLco0iEmqdeygugSke1EjlAScZ+8H60NTJTNRj7Z
	 C7hheATVZawG5EW4A9snRhaKs8T8SF4z1e+u//Nb7+ZGURl0roV1YPZ+vFsgVneF43
	 z+XeRrX2fIAIcI3s2679JUplv4q4abnmi7FH6etbxXkCUsV0qX7o3Ag4OU1OCABMMk
	 a+Esx+AtcdbaM46wXW0EWvf42v746sr4b0N2ssDNeCBOC1Cpv2cK+PoeHSJ+2wTnSj
	 8TIp0HEOiCgjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC030CD4F54
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 20:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178000155369.29939.14033561297264842169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ee3f7a800af8d6b6dfad5bd83fd8cfecbd4c7d91669ff0ad1e5e0632e7f345f
Date: Thu, 28 May 2026 20:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780001553
