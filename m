Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29258E56A
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758860394; cv=none; b=CQHNK7/K2OXhubKbEiFXn2JUN8bRpzCxqD3Hh97t3EYyXHtlz+HgMbS4bgiBKWRQArXTtaeBnlNVanGd3zhr9E+HU2Y3Loo1A6GgyjLsbltA4xhhmpj2Y8I3A9Tu7bWD40CpHk9OxZiSWtEw8a0LhdhIxx5lYEGGa2JSQT6t/Yo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758860394; c=relaxed/simple;
	bh=B8DT2iLCvYwLBpnmPvzXXEkmms2BeS7huyXv58InpPQ=;
	h=To:Subject:From:Message-Id:Date; b=Vs6Y8bsta59KhbgA5aYkzmmrkh3z5UXVq5pidL98aA6F5HaL5eZlYxD3q95MKLouAHh+tQ6KX/ZC8xBVg1LDFmB4wGMMxbCITO0jlbv6Iw89mAw06xxKYMBr3WPwPJgM9PxuUXWrFjB6GACQzncyyUaVESHN6IsNjcTOUgwBurE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KBolRVjJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KBolRVjJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8556C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758860393;
	bh=B8DT2iLCvYwLBpnmPvzXXEkmms2BeS7huyXv58InpPQ=;
	h=To:Subject:From:Date:From;
	b=KBolRVjJA4dAaVj2nQp9C1m35WZvUeP8Ohr1FZh6U+0ZDEZVWAjUNbx2wXfceWkjd
	 /s2APfGJjlQb5Yp1jcHpB9So9yr/CMIOAGBdLUmxNngEZrbv/fryXG0W7TDL/6/G/4
	 4D9yiezu2rBAGw1RdnHx32xgofdH0c5aXNepPw2JyoP6YI17r+o3vGzy6FbYGssFIB
	 3UARP6zkU+PQKx21G8SmkBNkuZrUt5kyWyh9QM55wzQoegcabFyde86xsdL9ub824O
	 sb9a4PO+z/8bvCNZJJ+no9ib+ukz2Go0iMhir4R3pUalbmp6zAyseuk6xJr8pPVxiA
	 YEYyzXXQTA2ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927CACAC5AE
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175886039358.28841.13881550613590115238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fff5a88b17f89653012f457082acdf31c766554d8c36f4d079d0c7748dc67c4b
Date: Fri, 26 Sep 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758860393
