Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BF0638A725
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 10:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774261494; cv=none; b=qpeGrFEXVqEL36y0w3DJUoqbNwuqkl92h1hRGyMjexVrievgbUO6yvx5ukERpKqZU6kZdZ95WirHolKbO/p/rFOZwUN7FalAimfR0exzaT23vL15Xs3RM1BPYUImVwmzh8mbV2AGi4cgCkdFjgOJ3rCNF9+DpXBmsFxcbvTLa5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774261494; c=relaxed/simple;
	bh=MKBhBhprxG2l5+G7FOJ/cAKL2grxEUA6/vhhlS5dVbc=;
	h=To:Subject:From:Message-Id:Date; b=lJqG6LeQkSFtUxoknoPUiNcusshdcPYpBEPOPmBXiSPuAyAQ5HNG6NRZ50EWEJszLnsZrLqoftYEeS0MTzIgYLboQ3nyG4LmniC5fbEFgeZ/SbGhQBkQKh4EYUSt93snNWq2XOJKWl31TETsTNPn/WPWCVeLtQCdeXdBQtRVoVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WsRu34Fe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WsRu34Fe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31F9C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 10:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774261493;
	bh=MKBhBhprxG2l5+G7FOJ/cAKL2grxEUA6/vhhlS5dVbc=;
	h=To:Subject:From:Date:From;
	b=WsRu34FedkJB1ngdfW41ZXrbOZd09l8hQhU1pjAERQbx0Pn+tLjAQRosc67kNMMdM
	 LlJrMk5nS35zRIyok0onH9rqpJjfUgEkcI1ZhMMgWMqeOa67NJsMKfQnqBEJva5T6p
	 pFyXLuLEHSlgoVD/Zt5MwMXwHlgd7qtHXzyOH6ckt85oBVUTSYbV/7CHU4eWmrHrvV
	 4NWDny/VVKDU8XbOrHYjzMEDUtbMsFlqGabc0/jl5UA597jkFp1kp1FvyZGTOmcQrW
	 Szq2tl3fROX1hDDGJHvdvnL3vtIYHiPoQx+Cn/2jX42naxlX74hw1xFrvjeht9IIWj
	 /Q+TIo5PInUKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B30EC01C2
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 10:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177426149358.13086.3630222884456106997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed8e6ffd8baf0cec04af3294a979d6a206c12bed2e9ca2471a491be60362b2d7
Date: Mon, 23 Mar 2026 10:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774261493
