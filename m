Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CBFE171B0
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 11:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718538503; cv=none; b=Mvk1QnMGlhSIA9RQeZV3xEbuQd6rzJsXhKCzWMYneHlRd/bsPv6Ho3nO39m2i9RVKhp9/12qhE5cZxZgp5Hjx7zJbaSjsc8wq4Oba6cUxlwpzZXFTra4BURUPq49gDnCDxZKzIySemojhGarhdOGaOT/FO/T7B8RpkRJEm4qprM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718538503; c=relaxed/simple;
	bh=SrIK2Y4NwY+vkybuwYecQWtlZfQEQc//B1AVXg8YVu8=;
	h=To:Subject:From:Message-Id:Date; b=kQyiLT4Pavbo0mcsE2GO/UagKvAZ/biZ1f06GoOWQY9ASioZk+mYN/Rx9hGSHQbdhV1obU8Om17N8p75VBPcrMTZNeryLRCfjQX73eGrUpG/2x51XweXaOZEKNfKKcrJtVkBSPHco3nu6TRhU2b5v+ISjEy02bKNVmZFWnNqjRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kn4vYC9o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kn4vYC9o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D60FBC2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 11:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718538502;
	bh=SrIK2Y4NwY+vkybuwYecQWtlZfQEQc//B1AVXg8YVu8=;
	h=To:Subject:From:Date:From;
	b=kn4vYC9oRNC8tA2zSMz6YmrwCAterlXS1X5zS4jj3Rl05s8WPsmY3mdjt6pcATIc+
	 UfzpIKWbBUUx+F+an6m8etG/rIGUmEuMd3e/ysQgxQBX/Xh4BgGg4ea4lPLna9yQoM
	 mc+UDZJTE1/E/0bYTWSPqNTTyobvccpwINnbCJ2fMJuS/4Pcp1jfriKO4awkD2PKgP
	 /M+dPyOX5NTEz9LrEDJLVMvkMCJKqVhTO/aVg11xxPrAF1WTnDRKnvd7R6c7/eOcaN
	 W0ni7iNAoqu6gxCtbxMUxsMAAFwE93fJOa8cMku/zIiplxXLrEo9UJ4fVtw2L4/E63
	 h9VCVgQeFP+pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0E75C27C53
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 11:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171853850277.5600.17197025277865184263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e5df2bea5c041c50847c723d359146cf37daa34f73c7997091829021608786f
Date: Sun, 16 Jun 2024 11:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718538502
