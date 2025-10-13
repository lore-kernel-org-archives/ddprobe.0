Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 125D72C11E5
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760373594; cv=none; b=s2FJY0e7MI8lU+4XvHxzpsEHxNPNJN6V14EQABHZIl4Ywn28PBD7+v7fKXv7QBDHZNmUq4NGYSLVn7E3vEs9DBm4P4tobSlrdbtbeoUOOXL/QLGVOHKD/vUuyXT0YU5zGAu7NV3tb50eJDr/3iZrIiBMXaYr9LsYPSPHpxPA44I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760373594; c=relaxed/simple;
	bh=rQrkIoa+TF/EX1TxyqnGM3K2whZFyb+4h1gsEHAv4vc=;
	h=To:Subject:From:Message-Id:Date; b=Z+bz5jkaS4+wNGe7PAlmxvKglmzd2oUSavxwy+IuYpxShRAq16UXBmVliE4F9sKIAYJSbCe2xlKwpYmNQaMZ1jmalMpxzfkJFtXPpr7RqYHotkpMN9bK1+Gg4Mh4fIi2vRsbmm51Duj4I2BtzV4zHiL75gcJfkgGkK7eD7Xef2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tr6S+TYJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tr6S+TYJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F2D3C4CEFE
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760373593;
	bh=rQrkIoa+TF/EX1TxyqnGM3K2whZFyb+4h1gsEHAv4vc=;
	h=To:Subject:From:Date:From;
	b=tr6S+TYJSV3a+YfEB6FtIIk8hS7Z3L2X+xXFOcn6VYp2OBg3CKisYt/KYonn+8R13
	 un7PMr2zjZK4n00lrlbosU2r37pEBOl9xoPrPE14mxRbbpx575TH/4BIl8A/xvxDTy
	 BPGHwmRCU3SvtXlAwrAmdrFzeisZV3Y7V5Gm7DUr17Z4tdiccEo9cfHtb6NRDufrA4
	 0vP3eDBXj9x5ElLVq7XYL3zvDdIFNEvVKmJENuwpuq23OhVtSlns32oNnZXlz6WWE+
	 5TtYuQg/w2w2kkDFwz/M14tk9J5f/SIt8GFZh7na5aHVJ3pJtJ+lgtnEL2UfFwrQOL
	 1bJwWdcnAp8KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9031FCCD183
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176037359358.13760.11550733685703958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dfb54bf4eba0c349c29a0b5d0bba4c138f05df8ac6941a2c67f3af9d3136466
Date: Mon, 13 Oct 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760373593
