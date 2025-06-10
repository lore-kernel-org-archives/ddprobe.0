Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6D3B23BD0C
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749580193; cv=none; b=Rf5RaYT2hEsFpeNRhTTAl/GmI5GleGSA2u0RIFVMK7siLRRDC32oYmO0B6A/CkPPSrPQUNwS/KgmXMHz/LFVWdS68daAJIhklLCxJPaKuuQgKOXUZyxzFdtKmTsJvAp/69PLEJqUbEZbXi6l4uRBs8H9++Y68Weokb1L0X8GRvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749580193; c=relaxed/simple;
	bh=8VVwDh6XMnjbdof9ConktsuinG9nbSYoaxD2TfhgfZo=;
	h=To:Subject:From:Message-Id:Date; b=ZCGi0czngLBkAh2fS5vuIPvFn5/HKVWuepV8bxG10WSNxpTGfAyFrnnMsP34lhspdBExqXONqGB1fsYIGS6Sj9dOXGoUq/UX/hVwFo/mrNZ9CZp9vz3e5e0uFW5AuLgM4hwqkokr0h/u+ZrrBVID0Rp3MTdpjeJ5mLRFmsc1s0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N0HXFSfW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N0HXFSfW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F3BC4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749580193;
	bh=8VVwDh6XMnjbdof9ConktsuinG9nbSYoaxD2TfhgfZo=;
	h=To:Subject:From:Date:From;
	b=N0HXFSfWkLyIe6EXdT8p2DJYg1iNT+CyPatC8ssIZeQLZJ6TXRYwgZunAY7LT3cLR
	 VqYF8ALThDfl+rcOUy75KJMpmVsS3g4KWRulgaW9ET01DDi1AEKJLJGasWjLsshRyM
	 BA7TWQrd2RB4yzSZeMaynnaIttjKqzzYNZzhVbFF7aM5onCXRkXyCAldpxVvua3n/m
	 OPKPqLdif7GuYdFrOyZiA15gP0x9lWxLKMz5n/TkH3sUf1BR6siRX+udsQb8mmk/4v
	 wk7dpcuk5ekotLN+PhT0Ml0iB8pC6laiYAsvq+JxDYwVkshyethSEGemMnPIslcOQW
	 iH/RyA2OFKdfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF86C5B552
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174958019357.27014.9769857873864426943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2e3fdc47e46e0accf000c0e1dc12d852e46d6c73617199147590bd95ab70fbd
Date: Tue, 10 Jun 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749580193
