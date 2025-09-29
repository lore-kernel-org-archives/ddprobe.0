Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 366942AEE1
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759118994; cv=none; b=uEjmIj6/5gKq88vHZuyRO3SPtdRucaVeayreOrMu6CU3STt3097MR99hkkUZ6sgr8rujhaJ3wTOcyvCnGyxiFaBBjuApDNRKn5T0ZTlvmwZQGoIA6OVLJ0U/NE53XlkKb3vBuO0cdNanmPqfjt5dIkzOIk/q2WWYOpDT5TKicl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759118994; c=relaxed/simple;
	bh=508I/jbIs3u1/WPrNRP81cWrmk6spKgUgITRWaRX/K0=;
	h=To:Subject:From:Message-Id:Date; b=X8hWHn4ttHUDGHfVQGNRcyLhPFAVA3mqQrjxAu0dI8d+Cyn2VNgz+tqPcmWkyfj2BfIy8DwyZUYcwKd5gfJjPaV5WW84v9rISvl21yesTIN2RYXXD0eyxwMortQnSwshyaNhG4bKuTixF+VCN7z0IcspGFU3+44UaqtimRbnLXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EXpfAKe9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EXpfAKe9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC9FEC4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759118993;
	bh=508I/jbIs3u1/WPrNRP81cWrmk6spKgUgITRWaRX/K0=;
	h=To:Subject:From:Date:From;
	b=EXpfAKe9NpRDXziF3C26jFOWUCbOhUfF7MQVvQHMmy8VpdD7PlOFi7BMBrUc1DHHF
	 s8JpkPdLdDBZWfhDlZ7OPIKnBf4n6xb/R6ZwlEcoFEK2p3TaVF+kldnGICWz+xv9Yg
	 7XK9H7tQdx/h/KjzYt1/hnO3V2iPPhYzUo+uPX9bU+Cfas9mYbYPQu4TpWuIjFvOGa
	 cOKKXNiLbfkt7i+CtbJr5ARozUB9RiyZPH8hmGkrGXXtWtY0x3jPvuOvnbPmAs6Ufi
	 imdyTASTEjobcGPCcdwajw1zH5tXtOdn2Eqm7O0ZyrABk6Wk3aLCbsVx4cMKl/Q5gQ
	 3KQnnrB9CYPmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F8BCAC5B0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175911899359.16075.11158768506649872177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0067e0589e7711a8293a73e7dc7d4c366f6bc1ec80f8be8ea22186a3cf4ee9f
Date: Mon, 29 Sep 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759118993
