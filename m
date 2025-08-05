Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45C5EAD21
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754355595; cv=none; b=W7ERPYAFWhs2vj+qlExCRYM9vnF3upyOlHkgi9dlD6o3eNuHtSAAP8QXSCANxTmI31SvojTk14eOxtO2AqLXSN8HKSy0S5RrjM+pbwt1ReY9iiFKAObmpkVPt35CQNa5oLSsYHA9MouDxANUTeU/QUnVCsm0WXyjttup5EkfeOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754355595; c=relaxed/simple;
	bh=LqNbugjaZ28dPoHkkn0rScVgOa6Dza/uXqxBvqScZn0=;
	h=To:Subject:From:Message-Id:Date; b=Ua2OLX2TeZkg5j++kYGV/1cdYweaq762eEQ3AhT5vK77NLWoseICkDMxpZWAyAw+8jyJkb2EZwd6JrAH5+YygxGWzwW6nxoZIgOZ/T7h26hfZG7fr+3M4ck3SnsEOFW0FJ5gxtS42s1VM87fuGn+tCWECdoG35+SPP+3kH2XK1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d2bF5pKw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d2bF5pKw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D991C4CEE7
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754355593;
	bh=LqNbugjaZ28dPoHkkn0rScVgOa6Dza/uXqxBvqScZn0=;
	h=To:Subject:From:Date:From;
	b=d2bF5pKwZw9GJkol89XJbwATIz9rfwuSKoc4Fzo0RwpdbTTNHYE59Mlv9pDJW2ESo
	 C7iNqWp+ebcDwXvVt3u4bMrcxZboQ4slOj4BY08Opev2KA/1h5sfjKGsLAdilbIGLV
	 bY7JHNR5IWv7WwalO+0ApnOfKQD86urrcmUgymwWyNJivx1Ytxrtax+yHsM9jtB3e8
	 XFmZZg/FSS6jzJes2IreABR/XEgibmZ2NlZO9FtrX2P9TQDbUjv4+D1hBty/qCW4Qw
	 +zosGiftkkkzXudwubokhEcYISCbdlTYyN8oHcDERKBXI99GhpzjpcpkUmyPqBce4W
	 CDSQV29NC/DKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED63C87FCB
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175435559357.29202.1317580978643304865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 892ec759dc7425b35d0bab5dbb89a611366db62c3c594da79bbf821497bdf467
Date: Tue, 05 Aug 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754355593
