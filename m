Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E56052F37
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758482394; cv=none; b=JytsYl+ePEipVV+xGM/tNk9Z8I1LsEHMwKzB6OlfDcb2KKhHR5cRGATErq7yvB6B5mY9ZdRSPjuJuNqd5C0SvLp/h0SPnS1hBuCG6kSAWSqoRDhHBgMh/cSpKiNL29PF7JUkLLFtxRmUtp1T9P6+oD9kmsD93vVHRkVBXkC5G9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758482394; c=relaxed/simple;
	bh=8jlySZICqI/buo1K0whwt3mSR/EHE40TvCw/uqpBcm0=;
	h=To:Subject:From:Message-Id:Date; b=kSL93emvFefkH8l9gr9pbEEHCl4KjigtENHOgN6UhFXsK+9Zv4Wo1D0oWe9VvwlDERAIrCyIXCnDdeoYDUajoU/3bXR9ee9KLc9pdbFQDguN+DVvYMTmFIzQ3hswRH+c+cp1NUm47Xr6+dHotnRx0RF+pkY9kb33E1OpSDHYxfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ln35eIE5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ln35eIE5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB96CC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758482393;
	bh=8jlySZICqI/buo1K0whwt3mSR/EHE40TvCw/uqpBcm0=;
	h=To:Subject:From:Date:From;
	b=Ln35eIE5PZ6cGHKf/788ojSFwEOfAazNlScNViXPEQGf/j3S/2MbSomp0jY/XKkah
	 mZ9AkbIQHuH59IBjIvjaaVa/ePJHJ+JrAllktAyphBbog3lgvDbUZWYR5GaQpPc4n7
	 e8kIobrPK+3QvU2hC8uSnuNzZD5ZywKoBm0kGELJp/QV+XLn9kROuYFnlXAnJygCLQ
	 3+ve1HBU3oizOvSBikPzPAIKVZEKtR/jBH10ZaLxnuzYmKPH446dx8/f7EqKtCy5+u
	 ONsq/MRpNcUQwZAvPBIUhPGuFL1aCTdkGXQ8h1Qh/Iv7x3mtufse6NX/nJQqQQD41i
	 /GoNUHEuMa00g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C85CAC5A7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175848239359.28441.6596430123195386331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc2a6b236ebc08f62f106f857780d47402a4bc2bb5db021918e66fff06d3f4ab
Date: Sun, 21 Sep 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758482393
