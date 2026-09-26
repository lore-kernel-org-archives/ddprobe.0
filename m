Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5817E315D53
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790403034; cv=none; b=AcsVX9vPNXIFPU7wlnooRRdFsl1Uqiv6NU2wI8duCN6GrVH4K0RX4YMnKBDMZNHVIoKMRGZq3bXiApkG6sGAPY6ZgR7biENRJj8ywI1/020Aq3GnwvFkll3mmBTm/FNezD7z5jklcbVeO+O7WWzz+l1PQgzNawQBPyNYqmJZuP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790403034; c=relaxed/simple;
	bh=hC93toLE2jBMCUexPbcRuR1rzLJBhTbfHHUgzzpmAlI=;
	h=To:Subject:From:Message-Id:Date; b=XHniJArbnLYsg+LF9YrvCXGtU/9X3gM6VcTDPtPBCuQJ+bDHvrLIAjmB4nOmmNsD4ayvZUL5hb+g8XvygRH/LTY/rFGEahJ5wO4W6BzELySNFa/p+rUnlAEz484KvpayQ+rv0CA/1h+Rn1bBQIznebsoew9Tf4nwXQYue9oCxKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ADIeXsJl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ADIeXsJl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D48FFC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790403033;
	bh=hC93toLE2jBMCUexPbcRuR1rzLJBhTbfHHUgzzpmAlI=;
	h=To:Subject:From:Date:From;
	b=ADIeXsJlOxMUKo1iSldvXV8gWK7FAUPjK03n4LBKukVAHrmpqhT5FjP2XXxplKZ/j
	 ynTPBEapGjgQI7OEWVGU6VtNEnbiSy8r/0SFU24NwXefnFLXaOQD6OZITOUl/3tCIT
	 01i8q8/Fks4mep1VPv7q2Nf9n0O1nvABQsRSc+XsB9TBymbcwbFgwcDYlWaq8W52ro
	 lQpYjumbAqY9cY85KNzyxJ7ohf2E47ay//wVo5FWLh6QDrr2TyYV6o/mMj7aV/WOac
	 R5QSMjVuPp6jiygNFHTJmMLvBNZA85SA76IXXzQaYgl6+V36G++Yui5zARDsLOXvZa
	 YSssOCmgpDT7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD895C9831E
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179040303368.13243.12057435354643743265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 859cf5e0fe5f1d0a4652f46156ec6ae8be5be646c398243f6f72539a7737b5ac
Date: Sat, 26 Sep 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790403033
