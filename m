Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59B7B1D514A
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742835594; cv=none; b=bLI5Pyp7DHu2MHw+FaWdRR9/aO5OmMwg/sPtF76wM/fasikH2F8KX5qKlt7aaoGSf6r9DYqE5BRVd0j4GIx9tS/EvIG48ju5oCtSglaXchZHo7I7+iZ5o+0mhGPhUym6/eZBwdT89jh8fFDga6xnmbFfWtzP74O2lUUczymCgOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742835594; c=relaxed/simple;
	bh=cs6ixDirY8WDp3lfpRVU3bSDhLhj+ACkA93awtlV7iI=;
	h=To:Subject:From:Message-Id:Date; b=ZeKq2C0BqsFbNgFsomj09l1hasmwdrMw1gegJeWmJIeAqkti7Den1ODYjjzxSlh34EiI2GciC+V+8xDXzEHlZ8zPRX5DReOtSe15YAP6Nj4yG+PPmULgqEalq5Gn+P84Y8jNC62CONLpHE6R5XUmHJ4EBso3kkqGMfQpgfH4V4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ak+BWtxf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ak+BWtxf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA801C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742835593;
	bh=cs6ixDirY8WDp3lfpRVU3bSDhLhj+ACkA93awtlV7iI=;
	h=To:Subject:From:Date:From;
	b=Ak+BWtxfsaLgWVnhnAuuzUm5EmxzyqNm8buPLH9S3I9iOTo0+oBjbBhM7X2walDhI
	 KdYIzkPf9/+20tWBvAY4sMua6p+nZde6EkbjrBPl4mmCbZLoTyLNndF8IjE0brDY8z
	 HMF26SMTgkZ4kGW7Az8ElssVYT85KIyjuGGMeh0CERSoqTD2yiGttsvSuWxJtoIBxl
	 E28TR8ANg7dCN2QPiBlnsbqqV7w3cfk1kNm/xZ614xNhQD9tVPFMffI7+3btd8CD3S
	 +MAGDhG9ilwHWNGkOqt0J7OLzUuD3Jx7MoWfAYsAxvwi1MrdtUANl0ihJfgnOAdCCL
	 Taeyf750E4uvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3B0AC36002
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174283559371.4525.1083335978998005815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 383ec93d31a6dc0dbe1b919ac97b8ec7fdbb62d471e7231ba4fbae257879d9ef
Date: Mon, 24 Mar 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742835593
