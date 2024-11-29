Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B728208CA
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732905354; cv=none; b=frSpdJ6VX3Z5rHcZHZjqdsKBNu1hdPQMqPLEql/EhGwhYQkI8xOTWQIwVAm1Q9dSY/ba6ukcAauIAo3YCGdh308ehoGcKCT6zYozkEDNMvu7gLMDTcYJUTVIHf8zuqntkDFmn9Q6CGTKZcr4qrwfTAUujYc5A6XKElc2E+fmTQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732905354; c=relaxed/simple;
	bh=2sWY8Pk79wu0TMy/zZmGnV7RgTnRs0x0MH9Pxyo0vac=;
	h=To:Subject:From:Message-Id:Date; b=X52o1peIjyy6gWQ8iUAvswSaeoZbGTFlSklubIfWEdHdc/M9PZrPT8Jw02jig0Jrc3hvZcFciA0Sq91cZYUe1NqgFLQzdAxtV6wuE+QZZi06agU/ZY3grXAttvMRlCR9J02SHRkXO7yONSJYrMNsTHYmt6iQD36yq7hwNIWmm+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z2MDqKE8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z2MDqKE8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B032EC4CECF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732905353;
	bh=2sWY8Pk79wu0TMy/zZmGnV7RgTnRs0x0MH9Pxyo0vac=;
	h=To:Subject:From:Date:From;
	b=Z2MDqKE8GEOGMaLvL8+Z58UERqv5rakSf6Ybiby0FRKOz6I5KrsPaM0rxrx48J4rq
	 n/CRDMET6xG2OsNFOzN7zmx213JbzP7eIqH4cKSeu+K8sQefMZyWnhJL3X229+pmwV
	 fB0yAe1L9/NPniEOIIpSqt/jvYNZnBjZYz3ihJddX2mULhwdLGA3PfC1jUX9UYOm5r
	 q8YlsgfWkRujC8341Nc3Kz7mKfPkabzmffYFm57cCJIgecyumnCQbMTBi5v3+jexfF
	 MkiDHxuYYs2SfeiJp+kjoKQ9lzyv8Wc9lgeiEK7JG61CppA9Vh9TD5wK8sdMRNUYIs
	 v3Xj80qH7nJUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 971F2D729F6
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173290535359.17587.18363895805173743574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b54d9246852107251fe9587df122c4c8a269e0a2287ed45680ab52f43a79ca0
Date: Fri, 29 Nov 2024 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732905353
