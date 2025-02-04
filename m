Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35343206F23
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738657554; cv=none; b=OsJ9yh417hAgFui+l81UDnyz+9tLe3SMrksImhJTrnxJLeUwalNjO1Vra8JP0fIAZ5Ma8apubcow8qSgPYbFmv6UZd4eekQBRJtVs9WWb07t8Lszl+YOuLj9apB3id5KJVTULKgpSlliaRzw4iBuOjzEanvC5uj5QB503cZjbE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738657554; c=relaxed/simple;
	bh=rbF4uI50PX4gtz+ZeDY/BU9FsAzxFwGWPYA41xiYySU=;
	h=To:Subject:From:Message-Id:Date; b=ph43qnCDmO8OD6S90haozm6rAsew4qVxPXzgvvSrRGj6c1MCXRYKbg9Wpcf/Q33tnAlKXD7dmf+Q/m8O5xCjZgGQt6EBSTgNcMeaes4zS2iT+bpe4Duqv3uNGKM72DFGDIR1yNwaAUgr8xRbRgGnZdQZl+S1VJK6vfby9sqU8jI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kaNQFmL/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kaNQFmL/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADD2DC4CEE3
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738657553;
	bh=rbF4uI50PX4gtz+ZeDY/BU9FsAzxFwGWPYA41xiYySU=;
	h=To:Subject:From:Date:From;
	b=kaNQFmL/eHW8QYvVoqS16QE/R1RNHm52TqtWvPuABT0QCh7hPO/K8qsBvVHKKOM39
	 euQRWm+x4xJmJilede8VbT+AE07NXqCC/A3wu1BeqM87Bx1lpWj8Lz8lFZs6GcQmKe
	 ZBURs+/Ge0i5gPY0C+hmz0fPScASxlnZMhZOXcCHBzBO3gtcikBX6oZaHBsr7t3NZi
	 SKpgLcFM2syweYX6gCoV86B12BBuJQZvGET38qFahKejl+0MJh5Nw+cck4DfGIJDJE
	 FkNy/o+Q/Ptiz+HteRx+5pOIKjky6mN4+MjsYo3NemYnfa08kkNmd6Q8bXdVl2acAo
	 zJSif1B2uMNFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A678C0218F
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173865755361.31632.2631658200745251424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de809b54e8374bb456cb4847ed43d195fe80ca35d4920265b4f17d54d9d92a22
Date: Tue, 04 Feb 2025 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738657553
