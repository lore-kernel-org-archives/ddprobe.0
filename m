Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22CCB241663
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759264794; cv=none; b=U4id5RhpkE7lDNyaisW2aruq2V7A7gUIvUIJ3nA2JxiQS0X0ZbBvHGrFkcEbmXkptgEfL96tqyV5IZPacVZwHx5barqPs3q13IK9GPAaKMKeXnIIb/V2TAiVHIgnHdtZz7yaRwpZC/4FzZuId7GjzzjMSBXM8QH/IPQ8A3p57MA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759264794; c=relaxed/simple;
	bh=hIQXTagxg+D4HhVgeN3KA71IIeeGnixDV7u2sZ9E8Hc=;
	h=To:Subject:From:Message-Id:Date; b=BHjXWIByXv4WZpNhtR0MNU0wup3oWllSzLw4u1/HVi6bOx2bbpceRWUVsabZiGDstRVypoz+Lc6B9bMoKW4LRVYENWIaQq1OxzuYoaFgy3KrdktNCnxtg3XeVa2Ddh+DHXb5PNYTq6Wdrfxeoid0o7p6FsKi9YPdgUz32oTOxig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kQBlqGHF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kQBlqGHF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA947C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759264793;
	bh=hIQXTagxg+D4HhVgeN3KA71IIeeGnixDV7u2sZ9E8Hc=;
	h=To:Subject:From:Date:From;
	b=kQBlqGHFOUGILsi5KC3vZxcxoPlJWuTEOViKJ9LgxqyYVxvYxCcxwzIzyK8IDm1Pd
	 MMoH0XoXnY6uUFlAJl5E0fSTwt6UmxDecf1HFo3EhH/7vf1po68kFklRae5MZiARvd
	 E/nc4nHiECEwxpfLTzZGEEV4es+FMBj5PrHXpZCJ7pAnmYlBjwQJp4tARbhg+QcOXq
	 mjAiKUZWq+UsQc7/W+sQOSD6T55s3A2TRgcrbrhuzRL++5kdQIsGS9OfHQwHVngC6F
	 KIt43jwEsPyCyJSbFmu5Gyc03Y0Io+kndORdCeFrqUe9CYRq8JYZgAXTuAcm2IiJQh
	 13eGrf1MDnKJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F49CCA470
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175926479358.13411.13084020281380177882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f18adcbf1b2f33d6c8bb471625f32244d1549756d133c379048dab31c197134d
Date: Tue, 30 Sep 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759264793
