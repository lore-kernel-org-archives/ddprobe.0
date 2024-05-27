Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 802D02F4A
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 04:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716784463; cv=none; b=gajf5dQH+fOr0prPRveICKpYlwkixDweuFGubJhgbroLnQ5SnzlmxFstXBQ/BJHFhp2K1+ijM0fkKIfmzcc8YaLDtM3PVP8GQBmz1nZaJXr+8W7LXNSI3YpzzBMwDFIHgmcGFZoO+eO9z01caI3cy9rq+01ZCp8VKo4COm0VMGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716784463; c=relaxed/simple;
	bh=v+XkBMPF8+5WBOn+xga4wQ0ArUToJoxSSQcPnyMnQwo=;
	h=To:Subject:From:Message-Id:Date; b=GR2Aqjvjdlp+tdUr+gs638+9K3zOFAfJHdRXhtOD7Bn8XAyNT46imhv7To+4plWSo0DqBioonBqqUaf49AA410Vv/gj02GrbOIt6PiKyv1bgF6IHvCRrUsxVVo8Xu4sz0yUNRoYgZDmamea/3LUWf5XO5PWOkW+FacdI3ih19Ww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TjqOLaGA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TjqOLaGA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4ADCC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 04:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716784462;
	bh=v+XkBMPF8+5WBOn+xga4wQ0ArUToJoxSSQcPnyMnQwo=;
	h=To:Subject:From:Date:From;
	b=TjqOLaGAzuDfIAy0bqAfS2/9MsSd5zjq/vo5QsHyFQ/NjTJDFVR91JoxarorTB6vY
	 vSnuMbbWmd8LnUCb1JoTyVzrax9VJGJKFwHNn+qQRWeoUE3dsx+8IImTHtACKEKIPQ
	 3UwGekNZ2COdFmhG8nT+QuILMpXpTklgzaayCtxQhPtRNkEXI37gn3EjSh4jzt74rC
	 w/CBzcq3UL3ArnPx5Mi+i8njui0+ILk0elmV3xo3RmJYxD3JOt+ldsfPgyId7xBMKO
	 lH4pHXuKwBSi6OQM3hRIBNgyvJaZglFDhHNnSw6b4otBI5LdOPJy/7xFkGzyLnfO3C
	 dgtJBPqIkzf0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C718AC25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 04:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171678446278.12152.3779081205381295590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 393b3fe28418b0ebe71e93cf58150d24b0471bfb5707c9c9a9404442c8cd5643
Date: Mon, 27 May 2024 04:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716784462
