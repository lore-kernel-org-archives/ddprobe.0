Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ECA029DB73
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756413594; cv=none; b=ocnU04jXqW+WLc3G2kbe92XcIoS7XnG/IRhn423/9a/wDfgZcCdJ/z5/o2SlqZsG9i6ydf0krO+Li8R8rX2+ZxH8yo+9rM01xtDsgFeqGf8OZARvmivVjdcIHjE7v0+/TZhZ71imr8eG0FZQR/mkc0iEbRjOaCudxwsUNAc7UlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756413594; c=relaxed/simple;
	bh=6KMi7YoM/yeY2eLYHXzisLlR9hvghGwBSvJsa0/LNBI=;
	h=To:Subject:From:Message-Id:Date; b=RLdFdtD+5lKBFZweivdK43x1Rb/g6iwdIdG5ibC1b0t1udugxSkxH47rERAURGxBelLh4YRqkRVgpBNa9nImQ0mLIz7x3bHJq+qFcpXNhH9R8f6gGmuImNMc9or4t4yEqtGxuV+jyvVgG1A0+zsEWxuNc44X7jbu/2Yr767NFGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bKiEQ0sy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bKiEQ0sy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A411BC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756413593;
	bh=6KMi7YoM/yeY2eLYHXzisLlR9hvghGwBSvJsa0/LNBI=;
	h=To:Subject:From:Date:From;
	b=bKiEQ0syeQHzvoJ3isDprWV0/qmHuoOc9SEY823nzHX3Th+qA0KrUkrKCVTOJqgCl
	 1zV7feD4Rq9KpcymhrEUD0U/dni9oo+xdfB+sRbKvfFNbfsH3LZQe01x4fk3L+k85N
	 ySu2gK7NXFfrfuAAoC6ohZGt83sEKvgS4tiJkwIxr+Lv+txf8gpq3L8hGgvtheAslx
	 i24jme18m9OtzBBYAkh/D5cnFNAh2tsaIlHBTrjqbUic+M5X73+jgWW1r3D8x9zsIl
	 ZYazgqojNYKo2B86LUL8kCjxypYWAdAuwrvRthAaB3oNQzfFFGsEpR3ep7gBMQL0GF
	 bQ8F6Rp+1Cbsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92039CA0FF6
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175641359357.21289.1140583025680774425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e49cf95b2f9f3700fcad0fd346fe067203f295697765c677be419f465be102bb
Date: Thu, 28 Aug 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756413593
