Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75BFA381AE7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792085434; cv=none; b=b0mXAdjgQbGHs2wlETLGGFUu+IzHgsGao1GJQ0GBWA+YYsEKcXhE+oA+gX5nhRaixIhcWDDSVPxMSfpoPi9MZnn9y+2IO+c2qIbNd1Z3C/G8UOf4IWnpactPaChM54MDUmKhBx+0TVHfDI6PHCgTYYENfGeKwFs/wmKJZQykmD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792085434; c=relaxed/simple;
	bh=F3qwrif3U2sv14Bqezwbhh+KTbn8fRz+dqkgAy26eDQ=;
	h=To:Subject:From:Message-Id:Date; b=RBiO4etlwxgYZqaYNzODWJQIWpkQCzeqRXWHM1hh+wxuYz30T84Vejyb8N2PRfF/UTNiYH+zeY3K2CzQLA2WOkwEDr2JixrXIYLeq2Lea9s7PBHBaZRrpG2CdoHy6nrU1BVKk4BhO1hev5fP7hlONZC4MCCLKaY4L6fLktNyzYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ff84DpB7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ff84DpB7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCEEFC2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792085433;
	bh=F3qwrif3U2sv14Bqezwbhh+KTbn8fRz+dqkgAy26eDQ=;
	h=To:Subject:From:Date:From;
	b=Ff84DpB7XAyGbF9p6aXN28AkK9PBZ1bMcpuOzkhhiRp/63udJMZ7gk2re8Z9L59zQ
	 Oos/ylwVhVVBDxHmP/RiWVxDFDqVzv0CbVqBDcj5e19P/XW9pV4htI5vfKQEypKrxC
	 FS1kUV55PemJyrIFyrNFrIHmnzCRLhj/FxGL3tr6BmAlUTBjEPJxU4Wqlobb3Zzqur
	 0HyXloeK/AxLF0EfYCrd4pPMp/07IflWW4yjvEvlmnlkzcmu3zg4lb4Y4WfsXEWukN
	 4UdY9Ieo8uMJbVExkebhZpDeIuF1OqERJkK60V9U4IZ+aUOCNGYlwOjEys0vadN17m
	 YHrZXBv7fOptQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FA5CC6B39
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179208543368.4994.6775262832490169630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 410872609ea1881e2026a189ab803751c51a3ebfc5d2206aaa69ef8ac2dd41c2
Date: Thu, 15 Oct 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792085433
