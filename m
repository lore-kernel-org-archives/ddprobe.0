Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D4353090CC
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 06:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780726474; cv=none; b=rL+eMWjTbQRjAQQrf1Icu8dL4srmUy9+zKSQCeE7LSdVTh0LskH676c10gamC7xODvj1kQ67JNCuIUoJb16CYjP59jXbbBBnxRZo8JNjgV7x20786hLFU8tykOqcwv/OXbs4EoJRjJxM1yj0FPhXkALLwepBUkUw+tJTJnY9Ij8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780726474; c=relaxed/simple;
	bh=LRJGQHsWSV7aFPg/gecc7Pj9GfSTCGCKoxuqVc7pv94=;
	h=To:Subject:From:Message-Id:Date; b=dSTs1amcSNhwGpBOsPV2RJVQ7Pzqt5sY5vPvf7hTLoprMnSFRv1PWLbCB6aUtXjVaUmOP9S4xyQRK79LpFnlyXlg/DNt4Q0/ea8q2avMy9iO15a3XXiqH50p5p2ZgMbHBr0bm9qFiY2g+eeoNy15k8vEbT6VBG31vC5+AMtTaJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WKf3hm8H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WKf3hm8H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFBB7C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 06:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780726473;
	bh=LRJGQHsWSV7aFPg/gecc7Pj9GfSTCGCKoxuqVc7pv94=;
	h=To:Subject:From:Date:From;
	b=WKf3hm8Hv3kwzJkkjEY6KDASoDKW8gBtTbt8UeZI4YYom+J8PQNZ/iswqmsfU06AV
	 TjzqZZyioMTu0dqVieeMKxV2HUvN9VAYEOvUNNwVMjldg8wl4VZSVKf0bVHjcEaWrG
	 qkzIyFPfdvQMeMiZg5J1iqpkBXs9J2inv80T9awJ/UNiLhiH0ff0aFPV264TxyBTyL
	 jpz9q0AIBDSOZCWglRluwJnmtgqmyYqMYQ9UOHNfzFcb+pGBfiFGAMMgum3EAZpV7z
	 kKjk3fjYfL5AUo2cur9nyldjJ1/FJk51Sc+fYyQIOpLYDajJx8Sj8PUuh+tIHMy3Kh
	 YoKvuMwXGGCuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE144CD8C85
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 06:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178072647370.7848.3895232161962337542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7d03d420f8be490f3e2d7c2247f1dfabf8784b89d7714e4d2eae0d546e16cc7
Date: Sat, 06 Jun 2026 06:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780726473
