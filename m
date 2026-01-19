Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 134D1364020
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 13:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768827834; cv=none; b=k35xOZVdh97tutFIZbaxvKGT80iZ4eQCPJ7srXvLJ5uPkcmOE0gVG4FHyyMNIMl81kgqvMtk7w05shmlpyUX0PDy7wUXkPP5e59+mhLqvQIfEZvTO3Fz8i/tbX5nABEJ5nJZWiJ82URbMb89i521NR9TlW2K1WntUVH/qYEkolY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768827834; c=relaxed/simple;
	bh=aAXHstkJ2So0h7CedIOsiZ7MOk3YpVFwJv+nsZXnPaM=;
	h=To:Subject:From:Message-Id:Date; b=pZujfjLftZdmrQ3PUyjw1Qh2y54OhxkAiTuOe5SYm3nDv9mpAG6WrYNic8WyfZjadaE4JxB3Gce6GxS7UVf8SQVa6H87vSoJrZvLxU4SR93Ti/EOh1xCJteOPwnsjqa9zgKqpeUfoPNZ49QIgkT59/yMK2e2VLdoz9IkZyiEKk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mRX0hM6O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mRX0hM6O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D389C116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 13:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768827833;
	bh=aAXHstkJ2So0h7CedIOsiZ7MOk3YpVFwJv+nsZXnPaM=;
	h=To:Subject:From:Date:From;
	b=mRX0hM6OeM0d99uOlnlH0tbC02kCHg6/rR4deYoouAHpOW/WTqXfUNhWH+vrB/Q4I
	 QldoMmhDietAFDnWBrFGaziXVMBvN4TuT/ZRPd1jIWaNhof75d/7NkHhajrgq+Fwvy
	 nW47vc0acJQCZlc5GlW7F8hWINc3+oeSWLC35nG6eK2YDMM06nIMJVUOoHOt+vcn+6
	 BoJAT4QohVzGf7bIMK7cIgvMVC5lDt/kX2VL70YUSOq/yFMgeKvCJfsPok/pYFdB1k
	 iWGqvtwiCpgerimCWWLtB7rb7Sr9Gik7tgemA8/4B79EzH57EdHQG93Xi3RIV7yETf
	 wM2RkJZgLdHMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF68D29C25
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 13:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176882783358.16371.881851553706256602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f702c3c424208cc3dabdf60cafb1083c0f3c54f4c10e79a74c4ea3ba5ddb2098
Date: Mon, 19 Jan 2026 13:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768827833
