Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E331277C9B
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753730994; cv=none; b=K5DAhzltNs0ifqPSiT766LRge0IZHP4CvkM/R8YfqRvBS85dOmY6zrVJMqbS8EQzZCEaAhmBHDHL5pin3dPdigUOjzhy5cRX1Y9dLUif8LtFj185R9v45lnn2a+0bgT7p2FaKy2y5DdgXv7zleSattXOycOFp3hY6SVLfIzFlR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753730994; c=relaxed/simple;
	bh=JpbozFI7PQ5tXeoqJ8ZriWJUSPy7f41UxOCnm8+eO9w=;
	h=To:Subject:From:Message-Id:Date; b=nQ2YIRHD3GS9gK2gyhYkrUv1VyJr4T0X+HOLXI7+kdF5IUcGlz0XzmfkQ7XDd4kDhDJE0KFGHiK1hcZq6WS3AXLSVA6+KCcm9Vp2RZz3cGFIryizPX27H3HBHnDmLPPkhzhjQGgHdhMNN7/ZwubSXWBzaYxR3idy4FUW82+V8TQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hEmrCYnU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hEmrCYnU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BA6C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753730993;
	bh=JpbozFI7PQ5tXeoqJ8ZriWJUSPy7f41UxOCnm8+eO9w=;
	h=To:Subject:From:Date:From;
	b=hEmrCYnU1eFDXEzuZpdupf68CUp8TjrUAO5VMIWF94BhAHSo5j9eXx2IzI0pSgbpI
	 FwVbjcq7BwKzL+RAi+lqxEGyx4J0BS+BliHt4OW1Go2WVWRvLGJjH/J4RWMiubAajZ
	 lo1fQoL900H/0WrU+TmKc1Jd9M/rRXqTW+4P33/OLuPRH1VtqQvB86ZLeuMeAjUyCv
	 qX4PpwDpX2XtT22L0SdeD+CAoV4svshNyNtq+6Hc0bRclpDwbwpOyOYzVwNd2DSai4
	 r2T0fZS/u+Q0JEHd380nXsF3kV2JXVDgS8bENcYEOBd24iWbeTSfau85/HqBJs/vn0
	 6Rur2IvfOE8RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F80C83F17
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175373099357.21476.182832011210222849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98f431c447387f708ec6c6b3cfd860a3024883b616bb794a5b06c4fd4d63e0b5
Date: Mon, 28 Jul 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753730993
