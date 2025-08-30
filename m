Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B236233134
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756528194; cv=none; b=tKTjzTabwPz8tmWPMXzaNFGSEYjDfbCPZCD8FIHcPzv4P9wDGxDicDueNy3q3NyQNXJk6wUXO2YLC0PAWFUQUbc4CqBmdSMHNI1t6JOouW9zw14XRmk85Wj/uNaZT8SPqE563SyreUn45ZQdd+KtX3sUb/nMWtV9nDbYurFKSes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756528194; c=relaxed/simple;
	bh=/3YzwHebbBir5Bffts2bf789hgGfKDI9ZMkD2aMqDCg=;
	h=To:Subject:From:Message-Id:Date; b=eyPcuOTYvVUjeZums02LNAHdT3ZXh4tEmXOxaDvGD9zdPtRJmzpFddr3cPIhqfFIKyNmJhs2BH2oAy8/CqWyKnOYadCuKyhrrAKXmN6QS8ZsgyBm+V5+YmGG2Wn9ViEifVAaNVeWRoxQZIio3OqcKi56NwoBa4yfLR3k53/q7Gg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qSg812OT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qSg812OT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7073C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756528193;
	bh=/3YzwHebbBir5Bffts2bf789hgGfKDI9ZMkD2aMqDCg=;
	h=To:Subject:From:Date:From;
	b=qSg812OT1U617kkwmVaxiGl/Etz1ZKnbqfvSeIpdN69VNN3hpf6/YDbhpC0p5CLAP
	 li2xFevb+kYtoGi3hV1skZL8Ujt72uMaejORFnF7LO+xgE6RY5l//0Yiiclpq/weUN
	 fIIjnWMs+s48KK8z9MrsQmfB0GljvqpeVxp1WoMOtpvAAr58/G+53AyfwC5VEp6mds
	 CHX/XQjpc8XvqWikTo3yiybn6kZypxnfeUQjgxPpmqxogZBaomh7VmR/wdLuDEDto+
	 D1ft+JGDLVL3xLoujwDDCz79GPekm4V7DX2nfmV1qCNI3TIof/qRbiRS89i0lAVkzi
	 q/mjto4HV0fgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F12CA0FF9
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175652819357.17179.17479923865333264612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8b213a06fed991b98354cffabc56da51b1cd1f9d6b54f9e5f21ce6de45e0a33
Date: Sat, 30 Aug 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756528193
