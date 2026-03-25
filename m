Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E6053E0251
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 14:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774449294; cv=none; b=Wjok5oPJL/1EH4DUOh64clvP0hjSFsF419oURFtges9SLnHSgb/NmsWGiaL4p9Dr44rG96PckCSZ7IrlHG3ECBNKMdS1eXz5S0bHEa9670Aruxvy53i0XWbEo05xJJkEY3Xh9La2mV14zBacaKlb3lIfSEDgfF9M1iZ5USkMYz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774449294; c=relaxed/simple;
	bh=VcacBC1eq4F3+hjfcrNTgWXTkaDqguodo865ZjtWsuQ=;
	h=To:Subject:From:Message-Id:Date; b=HHxoPqi+ooqrQ7YemqA0xbYCwMd+VIvP/h+eCX53X2M4RNZOcgW331yRa1l5eSawI1FmH3HADD/INVWN3WE91HAjJg/ECe9hRdAPFl/GmLfT5/vnnow38kHY+0YKXST/rFgM1zQ9kpNhqyBS9T/STB3oMdsf3qA12gLLxJzPPZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fr3jqx63; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fr3jqx63"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA193C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 14:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774449293;
	bh=VcacBC1eq4F3+hjfcrNTgWXTkaDqguodo865ZjtWsuQ=;
	h=To:Subject:From:Date:From;
	b=Fr3jqx6397THvau+/iHmNYv6iirUe4DRakhb6Lcyr6AOMXv35llbzOcoe5RGG9d/v
	 /R3Hp+m838oG8a3dPSTZgoJIhad8q1XzuurONVJiLVmZ1iYPHrMPevL3j5aDuh5ABi
	 pNetUFuz/H5jsiJfeKOVcVl3MIzSdzepnCgV2I4scbF1814B7FBdfsLdnuLLolu9eu
	 zy0W+lzxdGsd6Yi+xbX0+WtTKIj9eb/HapoozWRZepUk5DwgR13oBh0t+cRgqd10Ub
	 Gc6c+13pDXGQZwc9Hd4r9efTM+W+Ku8+qhWdOjQeYlCduUNfwS5UF2PNuYQQn1/yHW
	 Bn9pvLsWOE+bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99219109C024
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 14:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177444929361.20807.921092684310345696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5b5fb9ebc5cdc3b53daf20a236f8680fe05f9cbebf1366583eca06d4ffe3ede
Date: Wed, 25 Mar 2026 14:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774449293
