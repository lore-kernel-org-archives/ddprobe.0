Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A218F50F
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762812594; cv=none; b=Y7lLsPixDyEr3oOsO+M4ZHlVKvdUwFmYJuub+1JlEAp3x3jz/DDn8sAaJjFjPeAJWWtxFajCOmkpf8WBaCIbXCJ23o2vB4p9W7KvSJKhEU23bIIgf5UKhR/NSqTE9zfzOY/EuoK5BMFeqg0tezrwEANmRggEOwVkT/rsO3kep6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762812594; c=relaxed/simple;
	bh=weo0LX9mYfgf/MNTKfeEMjevpPYbILTuvN8vlwcHj7A=;
	h=To:Subject:From:Message-Id:Date; b=Qttln/q+N/G1Y13H5nMcy2hwzPEqKXLpOx7kl30n55QEy/94/zngPyTQbz/xxY1vs3nQoQVPQRIe57uScv+kjIESJ5Mc9BvbL06UMqzH0kRpAZMaOqpqR+uRuRDyXlBAEM+9Qh+2haRXlXyf2rHy3aVppbSTVA+uWUXs9s7NG+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qNPgPS81; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qNPgPS81"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D91C116B1
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762812593;
	bh=weo0LX9mYfgf/MNTKfeEMjevpPYbILTuvN8vlwcHj7A=;
	h=To:Subject:From:Date:From;
	b=qNPgPS819T5xnrAx9RYXVLoMul8qrb6cn107uqxLYwVRXVhZ06qC1m830ce1Ok5nm
	 ZkQa2I3c90q8/mBZMpD7jY/XV7bHhfDFq7FhGMB9QdG6SqP5iZraJIF8OERQGcj/IC
	 HhfwDrq7I/sqyHilJk5z3MRsC66mUBkD/kzCyuB+hT7OeCmoT7GrLQQLGwIUvYLcyj
	 GUcTQvQmpDJAdkSrkIcFlFFuKGUzlSI0kIpVKGkCp7HbRnsj6HOMq3AQiUeChVH0Wb
	 vsMu2rs36rnYT50SUGAQyKzEWTOFi76UITq/YuFYC71uql5jBzMIfOITO8Lye82Ziv
	 YuFwZEDHwstKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95920CCF9E3
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176281259358.32562.11846450467278240092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 375538792cfe3c4ad1a5dee49b5d005b915547c1d0be69f4a9f0ee5acc2672b7
Date: Mon, 10 Nov 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762812593
