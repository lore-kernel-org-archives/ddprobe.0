Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D17B3B1A1
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733051154; cv=none; b=g3Dejxi4Jco1zrUBbH7KOUdRUxxEwszOOVndmdBN39D0+JCdZ9ambicBie5c52QRgVDJeiAkEoanNP3yt1jFShySCaYMEcLSPo/00k1/cH55zwWp6+5w38cHlTDFMo9yY3xirdZKbUWxUAfhVfCoKnlWZdjkr8QQZ1tySpiYX2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733051154; c=relaxed/simple;
	bh=CzX5Bs8kGT+ciZoyHsrcSLguBdXnxKvNix2l7u/D1NE=;
	h=To:Subject:From:Message-Id:Date; b=nq60QIikxjUjpvuaGAaWfHDyfC5CAkacQNc2OcrAuhOLj8kR9iWwELv4cfO47w8bd7VO+EmlaagcYIfYYeUci7sbNA3ZtXDlATz2w9h7kLGCqa8pTOQ1dMtrcB+WIrQ8FVUaExeuQzRcMZylCnQamUWGs3EJYdiIzqxgjJSRtXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kfLD+51n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kfLD+51n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4BADC4CECF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733051153;
	bh=CzX5Bs8kGT+ciZoyHsrcSLguBdXnxKvNix2l7u/D1NE=;
	h=To:Subject:From:Date:From;
	b=kfLD+51nIzI28Z8Uso8O1iO5MOmbgFV1KdV4qjX1nA9cAPrTRP2NtYx8G9C53ckt8
	 Asyi0H6CG2IUcl2P9fW6tLN4ogeQeDIwool/BvQWUMN9ymop8ZVstFRA9JCslBbzsd
	 bhTaNcJy/eABMmc9QAwbxJHmIRdSZhDONKDBgBf22GUCI+Z7eKh2TTXI6YxUaOL8z5
	 c6IeL3mO70ljQCNfYx5jsSRI8ixOxGSQ59MRgljMh3Jfrb2Q4ATihjr6MXqja541sq
	 genZ6nZdTQbTUU0BCDBezZzJSmYRKW6S45tNUPraJOqAkQIqRv7TtCMG3np+TWluQW
	 OhHgEGEkIv0TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A511D49762
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173305115362.11911.10571169363973838950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd74003b3503c59d3dad9000b9e0fc56c02312118c2428f139ac24eac4d807d8
Date: Sun, 01 Dec 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733051153
