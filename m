Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B3726ED3D
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 04:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784176114; cv=none; b=c69xB6CWJVIt/7BIzXv0enV5BEHKZ8/RJnzHIILMTdfj7ansJj2jd04IQu3EwneqxQIcZMejUwVPciOD+9xVeuQcIdz8b/kOhBAW1Azcblh36duUZ7Qjq9Mcxz38Bwv0n7hTSbuMljNKp3cRVMJ2B6/1wFKLeztrisShErzPwJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784176114; c=relaxed/simple;
	bh=2P94s51KkQaUgr2rFXIbEYLp5xoLMvaRyF+uQM7/eA8=;
	h=To:Subject:From:Message-Id:Date; b=GjC6IGcneTUoEYHTPrnTqwXp7uckauJDpLnMa+2koJ3r1IWXw/b9JHPJ7pO4ulwHq36KvULSfr1QAYMMYdeg7EOidO9HYXd9+zvOHdJElTvxNq6BWawLnEZ1okTy3H7YG4ETcFnFPKOLsN5Hh+jXn59McJmXLWBt5cg1ArenuUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hKCjyIZF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hKCjyIZF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D568AC2BCC9
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 04:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784176113;
	bh=2P94s51KkQaUgr2rFXIbEYLp5xoLMvaRyF+uQM7/eA8=;
	h=To:Subject:From:Date:From;
	b=hKCjyIZFwB7++aHGiw5VuWsGRAv2Uz2rDs9XRgfnWXH3dcpUmT/yK0V7jdUUgZ4kL
	 JnBc+gf5OnvL+48DHInOZ1smmEpHgiYre6DJMCQHS9xUZ5Qak17Ty8CUsNNDfX4gxK
	 o4S3iY8aCbP6D4JcNPQU9deDbXup/lOqm8dz8z2lAXjExKbHuGUSu4GfaDygnprm66
	 2/AOLvGJlae9IPpSzxDkVDzMg3Esl0g8Ned2EcrnkYp/BhDjQ7yROSGAZF6D2MnlRK
	 IeoJ/ahmp5SN+fDeG44sJdmEOUdQEmsr5j70CqqM+jZNT9nNmV2gDeT4UJBIEsvgO6
	 M/0rkrYw86ukQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B078FC43458
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 04:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178417611368.30576.1885607406739466355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c24a8012a7c86e0866fccb86702699f2a788bb49fe4a52957458889ec84f80a
Date: Thu, 16 Jul 2026 04:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784176113
