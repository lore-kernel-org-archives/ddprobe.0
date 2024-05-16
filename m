Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46D7C147C72
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 20:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715889743; cv=none; b=VegWqaYIzigNqKeHrX1VQ2ZFrSbeCNeXSovZikiS8hoCNk+aEZ8Czg64e2VXN/Q2cHIJ1kncO+ocorZrjJDiqOR28IIOk96nhHLTVppaVrAfjp1el0Hs0FteIoRughIA6aC3a/Ria88FDmo+GlWMC30ZtTY1p38/iKMs4eEgSYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715889743; c=relaxed/simple;
	bh=sotvzP0kMMUPtu9b9NfBWuW2f1IpIZnUJUjMgUGSuX0=;
	h=To:Subject:From:Message-Id:Date; b=JeeRuiiCOdI7ceDwtuRNYi1Nqi6Dk7UFh4kV51qfN+Yk6XNhUIJj/LwQ6qt+vI5Dc3o5mL+y6J9nGnceGwZnNWmB8uSuMIpcYzoUiEYr2BC0C3tvzyCyqsG45wrkVsHzcKDA/H8AlEQD+0Pe+rNLqLtpdVCnuSfPgkFJxR+ebGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VJLq10Ul; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VJLq10Ul"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D76EEC113CC
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 20:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715889742;
	bh=sotvzP0kMMUPtu9b9NfBWuW2f1IpIZnUJUjMgUGSuX0=;
	h=To:Subject:From:Date:From;
	b=VJLq10Ulc88N4AGmQTKKljpsRLXKnIz0yGDVSlkLPMiG1pVXE3xGzOLjHxbKGqkv6
	 CuoI9B3f4HMlSz3nqJqBR/82J0FNB0pXmMCCkVCpl2OWkIlR8Zu+2NRUNSR/109u4C
	 h1jdBrPp05xvVcN4pbWimbbSlndEIiiWhvfvVX/9WroltECm3ThBWPTTFlIGyd7/5f
	 Svw1thigkWETzbeeCXz05BZ5qjg29s73UZEkWzm7PYC22Qez+7aSTYT7VgfEnC7R1o
	 niasMnxWFV6UBdFJg5SIELHJBRDdagnQem3oASVWXlM1sxMOA3OxA8kTjgb2ZuHU2O
	 lOUbDHj8GIkiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2707C25B74
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 20:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171588974278.5219.17643391866487517648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cba1a7fb9c2af7854135f1f5f9414f3b9ed0eb69721fa77679d4f32b46bb3b4a
Date: Thu, 16 May 2024 20:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715889742
