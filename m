Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1EA61401C
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737273953; cv=none; b=FE1NlE9u+rKyElcwclsovkdv3NstB+uD2Uwf5hJ+FsC8STwZK/pXuCDwy6Eq8D5DX+gMya6YS8jW1/UtTVcDKbGY85JaMi5PVpCsDeXSq6eWblZXkCypW2Jae01zqtbR/ZnaMa2z90EBQAlvj9H1kADOOuWTaqq8Nw/q7pIf4vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737273953; c=relaxed/simple;
	bh=Rp1Fu0/fdsnN6peBiYIMARvKakIeDQGHC+2apgLcOFI=;
	h=To:Subject:From:Message-Id:Date; b=MBkUWIFHSgeJGP8hnPJHp34ETgHmPvbJ6oO3wCTrdjhypfoguSdFEvrA2dN1emH35yvaMRBaXpEN/PmjhI6j6mPo+oanND0ZPYQ3i/X5AOiLTwwLaZD71UBqXDGZXPwGOv37jtpZkevghMAe1ogMXE3nN8IDcc3OjUQB8jAoO1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qYgFuImp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qYgFuImp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E437C4CED6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737273953;
	bh=Rp1Fu0/fdsnN6peBiYIMARvKakIeDQGHC+2apgLcOFI=;
	h=To:Subject:From:Date:From;
	b=qYgFuImp/5v37EyaVwNHoOFbO0+Mzr+Sw5gX613otxJ8r7SGOuECoX54F/mx9KZ+O
	 bBZBJTU825H6yQOQ/QfBt5befWQCoegIEVHQzmdWDVfKPy7X8nM0Y1df58WNIUC/k2
	 mRmvk+UER3tVdtH/6TTentlFy4OtMW5fKvCD5AWXnO+KuHxMTuRvD7mHP3eSI8PDee
	 KuHnKX7cAjsNxEmWa0Bff685e/Rw5Ib3tUi6uTKpCbx3UQRNfIpba0W/SfeyR8UAZf
	 19ufArptvrAvgMjdjDMegHKurPVIn3yVvU3zQhb79JVQUS5OoscvYYLw+fzWD306k2
	 Ghp7ryHGwiPAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB98C02183
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173727395358.4249.13836421258354477246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b728199191e1faddf2e45173bdf04b1a6440b97e1341181cac5e60562c746a72
Date: Sun, 19 Jan 2025 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737273953
