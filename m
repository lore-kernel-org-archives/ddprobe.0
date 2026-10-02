Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F82334AB1D
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790958034; cv=none; b=bqerE30wvpTY31OzL/JF4lzsjw9AJ1i9BpwccEKNWnQYHssFhOqrtrhU0DZO/coJwqfSsklI/S2g3E1Uq1LmyEUaFZady2jIncVLZhBC6kFXLXvZ+t+SMXWu5jOhfUuEtoLqPF5oKiu8/1Vvq2YZQ+o0L/Cdv8xc9r1nOsH63aQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790958034; c=relaxed/simple;
	bh=zv01LL6KH91syqTo9oIiYaqE2dV099LcE8uXSlfOx8k=;
	h=To:Subject:From:Message-Id:Date; b=M4FOcZjBPuL20Iisjb4mke9toYbX3dQe3oXf+4ihPtpgoS+DKL3HgYhj74xkv3NHA6VxwY1+QXpNS+dgNgjn3oi7eHfxWrDuk8C2MJmYKDZ2y83PEWJQK+nzp2FNcvGD1HQWulY8AoM2h1TqBRy+ZLr3lLemGn6gCqB/m0zh2d4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EpPpccbD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EpPpccbD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFC78C4AF0B
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790958033;
	bh=zv01LL6KH91syqTo9oIiYaqE2dV099LcE8uXSlfOx8k=;
	h=To:Subject:From:Date:From;
	b=EpPpccbD/cmGxU94AFG3TYXkHbAE6enbbKHMEUQJuH69oD2lXgjmlnCAs58eUZNg1
	 G6CZW6ZVf4gezcRHhk/uTtv5h6V5NGY2HK8LLWHZHOk1uR/4/0NBf90jU8MhAgBaHR
	 FzMw9ko1mn0yRvgjifW6RjJsDmwNr7ofEigljVtnjK2faHG09CSVFlqckpvL6XVZQt
	 4vhhgGWw6UuUWykaP6j8CreBO4vlxqaK9H+btAW83TTUZyAJxm7L0xMoU2VPbGeDRv
	 v+HG0/5jQeOm2jxD/5pUq/d732yuUkWObAIGd9KitrtS5vMDyFSFwc5imxiLNLxGxB
	 KjXgw1e1NTrhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA111CA5FC4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179095803368.3439.10260631070433737039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd3a52a7d1e5bc0829cae39ce9cd94e17db43a5cc6fc288189ce6650909a728a
Date: Fri, 02 Oct 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790958033
