Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84EEB388E4D
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778683834; cv=none; b=fRedRj9uARhkB4LjezPDUtF9IxMUjYl3D5Fexi73IMIPPFyVGtghJocIC+tm3aFHFHj7DYveZKQuijEl8ZELnkFflClpH8rnvTIE8ZdOxLYtQoIowXz2//UQaPPIqH1KyL82hVhE5U5dgSawrsrIhL6P3sNVxvxNz7ovY0qPRxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778683834; c=relaxed/simple;
	bh=04LmM5C/EWOiD3dUm0surpmGrXPR8iu2qRKkpUt71IQ=;
	h=To:Subject:From:Message-Id:Date; b=elXy9zX3HTAY4vdrHANqabN0oSd2FbCrcjJa5PJgaVNTsno0dp6OGyJoPU1QBiIQR07QRifrtM0g+fNnX41Uw44bBgalDwDeNRcO0h4Ppwpx2K8YPxkR4VTFD/iioruGk/m9ohWT3H4LdNFrMbeRHCQS8JGFORDR2/hgSsHdKrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RcvaS5Ey; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RcvaS5Ey"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA894C19425
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778683833;
	bh=04LmM5C/EWOiD3dUm0surpmGrXPR8iu2qRKkpUt71IQ=;
	h=To:Subject:From:Date:From;
	b=RcvaS5EyNpUuKtBbKeiPsUhpX7eW5gbFXDmir8GDiwPvBglYWEagRpOh88Q9gNDjA
	 3G94XwjxRipFKkBjvkxCZIybr3WtX1P1BNV9337DlvhezswlaVqmVNnUFdU1z285tZ
	 uUCpD/Fd2kgBNnKBdCyMpyCfKODJ2s2AE1r7d+DE/935zWpVclN9A/NdzwPwkq67ib
	 dwpP/Jqe7xLJdsP7TBXCCM0ZX7/cfirguJQQILLMX6Am1D3pgk3Tld9nn+zMRK2WgI
	 pCXXrjxnCnWtx9HMABmbDJa1+9p/J9Ml+J1flvGnKbWhUKOF8TwpalhuRFkMMrHP4q
	 JOJwLCgVhFphg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D89CD4851
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177868383368.4716.1802737160364596163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fa7d5fad94995c936a2f5c2ba094f8e0b9cfd044425be26e2e7368c9c96447a
Date: Wed, 13 May 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778683833
