Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1103734BA2B
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761685194; cv=none; b=gfUn+HsOWeYjtFK4BWJtxaBE+uhjjEkgcEAh/JmbjJP3VfmoyVycsEVNg04dKVS6/5zFAaBT6gHbsS1tlvejfOFVhsduUYnSiPpphCHdVEYZvGlIfm8PWszLD2u/T5B3pBtptSzFO9dgSAQpN3atev96lYz2Hw80kNozY2UoWL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761685194; c=relaxed/simple;
	bh=bsW8c6qKj1F+3mUyRG7HTltx2letO6sKcPQ9BH5Z+pI=;
	h=To:Subject:From:Message-Id:Date; b=Mb0iV6Erz885fPShAIVeaQOVlSUsUc32xjzy//UgzhN3Ovm1f1HZm0fKS7IiB/DE02V88tbeaZzD+UXRrObGRjeTRYKgRAx8Ynhyxrl4AummgbRIMmUA5YMNgmDUVmF8uDJNgyjTV0iUgen8NfuFBymFJ3Hg9atiOeIYQITwnHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d7BMddg+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d7BMddg+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56E7C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761685193;
	bh=bsW8c6qKj1F+3mUyRG7HTltx2letO6sKcPQ9BH5Z+pI=;
	h=To:Subject:From:Date:From;
	b=d7BMddg+9S1TvHvpXRN/5IE6sEzFRaw4dqDFTwMGeoM4hhae3Dx8fYWU/rfDr5Cuj
	 0x2XLBwqlLx2yDfL1/+5INo4yH72JGKBkk3BEGDnTQKQJkLr9NFitHnlatouGivnkq
	 91NnwnXh81wTaRZe4zzm3OiUhOWy5fsAwXAW2WXYgr+bnHCXtAIyekpnA9ILrWb8vy
	 EJ74eKmjVZIt58v1nn3UmHnPggFre/ToCFhxzOvEyZqgbbLVwuzESFuCpI4XPPH5Ch
	 wijYKYpsL6qXC8dj65yfBPC3t2HdvXf/+2WyXlUAzSn1sXGkjqNKWVw1i420NJ4qC1
	 WubCQDBKSHu/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D05CCD1BF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176168519358.8182.12164005001918649931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3450b9cdc8a6e14028213465980398d6ed9720be0730d9b1f989de5ae769b089
Date: Tue, 28 Oct 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761685193
