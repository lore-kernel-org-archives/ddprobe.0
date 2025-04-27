Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F92A111A8
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745757594; cv=none; b=c2tQ69qZGt7GZdNMrJG4y/yiN2+zhq2YfC7xGf+WQArAT20xuIt61cPHCvgYCABQWMw8YhDVcNSl2V37Oz+zj6070dCj8DWS6A6QH+Nedr8wuRnCToi2MRZhNiEr+y0to7i8A+gI/fesxKLRjs2hgGzj+DO16pNaaoIO3oQ1Lmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745757594; c=relaxed/simple;
	bh=AimVLeyRhY5zq7y58ztJukaO/um8eOTTCz4sZVbihPQ=;
	h=To:Subject:From:Message-Id:Date; b=GOiuWIEi9RoqiABUPgBiFhAVzyI/WvTsVBv8nERNDqpov1Reon9NX1OnD3DGGJ0GyKoY2qDIRFGz03jDSWP6Ddmv4FvFU9E+haIw6Jktco8NtT4/p2lNIIZO1iuWLo9anYPIoLFIj1po9leEoQhEMBWOqtGpOvBzxkzjpYTdKHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YK80lpC1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YK80lpC1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3625C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745757593;
	bh=AimVLeyRhY5zq7y58ztJukaO/um8eOTTCz4sZVbihPQ=;
	h=To:Subject:From:Date:From;
	b=YK80lpC1tT7HMh8fwyKUfWmmp8rFUW/w1U3xoDZf8x1mqiKYIxhs4r+QJcdP+9TJL
	 yeluJdHGZZSG808bq50Ht343xh6fdkgWO1zNCHBd1vA2kssX28eEXyDaLBvx2r03Sf
	 2mlc0SwCZ3kBg+B+YmU++0bENCu4lnDQzHyMXRTk+zVQZpEYfFyXZ/3sSopyOm566p
	 7Y8jBEqDV9zGgcSq38Snw4h7KTj8UHrFc82QSW7QOyjneTzZazmDkGNZyeF7cxH3im
	 T8A/xldT525e83OUjemN9iVgHlVpnQzxTs9Q19wjUFjQMeMJEcuVtKJput51LUL5U7
	 5ygQvQwpa7xUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B8AC369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174575759357.4683.12081849302249622211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebd1cf14c491cf3eafe8a2c9628ec78cfafe527cfd6aeab714445077428f726f
Date: Sun, 27 Apr 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745757593
