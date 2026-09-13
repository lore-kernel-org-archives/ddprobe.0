Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5025B4BEE49
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789313434; cv=none; b=smeAfrM7IrBgjGIOUdk/jjI8VPKv0Uokv1WrHy+vcrVPFoChosoc3Sla8ACOdxBjBedpTnLgBk4yDNfip5X2c6JYQnUlLekw360mJP3e5m4bWc19A7lhYUZX2ffZ/c1GqXEmvIeipjZdKOdyXgwjOFjPv9uzEtTwpSfQ8m2XpxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789313434; c=relaxed/simple;
	bh=ee0Lrvb2837UpLFf7RsqEldIV9NmhfT9+uKFMBH3ndY=;
	h=To:Subject:From:Message-Id:Date; b=lb7lyctpdY4u/mCCNXBB+E6e0NxaXQpshKS8RlBL2lZ7kDFN3cfYzxKlMbdEJqXaEjRIbfpQ2NlMm5g4oenVW9rhvLGgiGrMl1/yfd1RU+NA3pK2pj5t/Xzu807N/2XWdHl+bPvAIj/GnckeLiVoe2V5uHsqnKSxP6NtjSeX6r8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H94BqpOh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H94BqpOh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA231C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789313433;
	bh=ee0Lrvb2837UpLFf7RsqEldIV9NmhfT9+uKFMBH3ndY=;
	h=To:Subject:From:Date:From;
	b=H94BqpOh4CujEm9t2B1xoiejT+9XjaZ2IVCBwhLgLN5z0Ad6n+3kqDuiBmjwCWqdl
	 jI7EAAS/Kf3tGmWmqUHV8eL6IYCeX7T3RnZelNgXPXx1NhxDTsE840AsUzofDsUudf
	 SMGf1YAzeOvGy0sUehNCYONFYalc9qrk3c+8ll6MCIezK4353L25lb7Rf8m47f3gJA
	 kcOccGWwMS9h38nAvI3dhgMx/obAUdcgqnSaaMmzbn3lp79BCBt3mQICahjeSjX97y
	 Mlu9yQMSwhthx51DwrLBN2EwQ4MwBykH+9kMa46TECQHS2MSkuLn0TjETGHZ/C1Ryr
	 4ZjXtYNVFpihw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA839C88E5C
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178931343368.25351.11760494967770625039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 491d7918cecec2a9355bb7e7cdf04cfd1a56870da005513ec8287ce7db57d9fe
Date: Sun, 13 Sep 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789313433
