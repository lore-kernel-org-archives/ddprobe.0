Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB66E20D4FF
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755000594; cv=none; b=ncY2YrefbjCXVwhf30MH9ac345vpg9CDdthMjphm638zWJES3cZ+CqitnYbv8d6ARNbkqBNwiYENJRk7nlRAihZsO8VA1sUojIsE9bzz4mMNbbVuCQuJzAUEi0/miFu+5PSpN6OPNUPsC2Kpj0h0mOIJFolCc9vkV4HZ1Pl25AI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755000594; c=relaxed/simple;
	bh=8xJ4hus90AgXKWEPGh5tH+hvxoziOSkW3t0Q/84TfPM=;
	h=To:Subject:From:Message-Id:Date; b=Ctch4TSpN6EmBzfRKZGec16pPUdemXyVKm8Na9Oq3Q2a52Ghrv1x2X1LrZ3rEdwoHfzkMmQJxWEijSufTTluTNvnA9vfLj6vtgQh5+AvBozNNpRklljk3m5CuW+4eVx78K0I9zvfmPIJ6F09BPeGrIJQHzPrIwCyGCrvCoFLjf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=exXS+3pc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="exXS+3pc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3110C4CEF6
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755000593;
	bh=8xJ4hus90AgXKWEPGh5tH+hvxoziOSkW3t0Q/84TfPM=;
	h=To:Subject:From:Date:From;
	b=exXS+3pccZ3WDpwBkheNlpORtG2KOVgOGMiJz3nQEF6K6MxQj80MtGXm2fsoOBy19
	 vjdVmNxGa6D1HOu2Xbp4mhpa/dgVmu58RKcAwiJruPVuAreCkOvYvrmjNbCDzgZ2XR
	 WHd9J0yYzR+IMyAgTRHvvM+1C7dCdJoVNB9YONQvP7+JJ4pRGKmCsenapbsxNnnMTi
	 WaLncpKIPca4etuIUx6fJGbv0DkqOFGc0/3NZcXnEMatuC8kCJBs8PkGhXnCF/T7/v
	 W7NraLCPIVyh9l26VX8USIMMhgp4Po6fZbC6i3tHJ/3dh189NislBzT9/2TiIoNZM5
	 /z5eT84WnV2fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCF7C87FCB
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175500059358.1334.11779263832417001400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b101707cf5a2a266a9d4cb49eadf2586826cbcbb351dbd8a1d8c6661e864fa7
Date: Tue, 12 Aug 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755000593
