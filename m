Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 261BE20B81D
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753207794; cv=none; b=LBtIWWvJWboiro2rxXICzTdrWaKwiQUmyFtoFFPw2ed5vX69n0vuhB9WVfqoVYR8FJLBu/byJ6IhnySnSzTGjxFTbEohkiJ7zs11geIpQBlF7vJkqnG989fMWpBzmumeiBGVa3qa7UQ1DyRDItm7zcZ4lJumIMRuzbR1Mk3bbok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753207794; c=relaxed/simple;
	bh=oVZjmajahw0hzfmBGGRj3sf2MXN2ykRrlX+UZWEpzcE=;
	h=To:Subject:From:Message-Id:Date; b=l0x0WB8JhUImfENurQP1UiN8OJxyDp2c3fzUZZNzE8tH0+Jw6OJP/nQ4+xSRAFGNlKGtEob8ukQa+A4kH+CNH0YoGvRTnLRs7QiHRASsRueM3StELz/EYntmd05bCyXZx1H4197PDhMfAQlIGDCsWPBEbx6Gyjg7aAxhbBaHZYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EmdRqn5g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EmdRqn5g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E3AC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753207793;
	bh=oVZjmajahw0hzfmBGGRj3sf2MXN2ykRrlX+UZWEpzcE=;
	h=To:Subject:From:Date:From;
	b=EmdRqn5giM26awpTz1yUU2LJpuNzUv9ZcPuG3Zs7EfJWWWs8+HHLnegIN7YZK9Zpv
	 Qa3JRz3PFuc9I+moQkE2KrA2vbMklrtSBzLgOFyXtpcN1pVATG+03KT8pLwdezx61M
	 1EK4agiMhdSFWyQQu4e3Idn8+TZcudIPzC9u2F1B2TCFpH4ic0YEA65kYklbA38EjR
	 QTLvrq0Zzf0Muc8cpw5dfTlyPLDo8GwsfCENnWgt12OcyXibonufbkOFL9g+qx29QT
	 n40ZlzIpJENP8g43dMfj8wUlXv0thSeSGG+gitw+UAGCim4ijIU2XpJB42MJ+YGBFE
	 pQbRL8hg3iTew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F57DC83F27
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175320779357.28447.8212215143800736442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17491d8693c3b3a6fe582d2d8a2bac68bfb5ecd7ca595f5bb64d55f3e6665ac1
Date: Tue, 22 Jul 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753207793
