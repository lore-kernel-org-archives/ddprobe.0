Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2526043FD01
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785511835; cv=none; b=Ho1QznmjRMHQpaSqSF04UxQ3X4XQGuU7rcYWZFOFTar5cxgX6+zJ6S2Q0IUHOneCX8Cnv5Gv+njR2TQ8PtO0ucsGEO1Abj2eBQ3UAHuIqrB1WjCPXE2jncsCG5q+cDiaIN2MTzztlM+EwQJEr5+Yxu3zxwTM2sFMna5VCsfN3n0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785511835; c=relaxed/simple;
	bh=6DM/OMuqu6AOge0z/sI0TpGooRT4g0tvaYE/2TPl0Zc=;
	h=To:Subject:From:Message-Id:Date; b=u7iYh/c390B6Gm2t6JrKSVcqNaR787aL35ii+ea1wEMmkHvJuvNMB356sh8RudQkaMGYz0WScxSj8TFovcyjpF/G9gEUbY+sBNs8B9mJ8zs4E9B0AZT6Pixz+aLbcebhgQ0Ak62TT4ewIQJ3b0aM25G5Kxw63MGlKWtY3fxnF3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=luoHmCD6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="luoHmCD6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDBC4C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785511833;
	bh=6DM/OMuqu6AOge0z/sI0TpGooRT4g0tvaYE/2TPl0Zc=;
	h=To:Subject:From:Date:From;
	b=luoHmCD6wFxjjN0jf4mdOKW+mLWIhAPN8nQK73wJ4wpSitl9AVsLfpjgClJbeb5bX
	 w4Ymz7F1TPal6RGhoDvXLFoqgnWPU2HMbF5UpeHeu2elHCVgEmBYjGGMIUWL5Gm60d
	 /bwgG8E9xFTWjfUBDYDx/iphDuoY4ZclsipRfvbzOGhPsp3nIdgzNTr3TbcR4e6luP
	 PIZj4XVCi+GYFRXy/61fxVp+5A34DoFdq0OL4zjyMySQtKbi1AguDNh03pcrIh6lgq
	 OEOqszMBXw+joLfrWz8KMqHZe9W8Cj8UahjklsROa9uWrOQC55aAFuXeRyeWATWhPL
	 UJKR6+mouM+Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA763C54F54
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178551183368.13205.7028540975584929184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d3193bdb25cc157f842fe4d250eef2c8498f5b697c9ccc03f79157b26616a77
Date: Fri, 31 Jul 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785511833
