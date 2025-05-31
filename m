Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37E1BC13D
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748734794; cv=none; b=Q3d6ZgXjvBw9za7D0DpsmtdbYByqOiptKfPDB+L9lpNdUayF4q9gyXtG6u4K216hvVn7OpaF9NSYt3dCNu8uiaNi6dKuEQbgpzovtr6GaJXOH7AU8OV/mcskHT62qvWQh5Bp2tIqGyG1PObVWJaZSpZ43qthh3tl7qKpjFqvIUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748734794; c=relaxed/simple;
	bh=/F4hEKZkKS21/aA0nmPuad2RoDB8goZpc0XeRbsa8io=;
	h=To:Subject:From:Message-Id:Date; b=Ob/NA7zQvnck2MfLm8UWaq+c3OB/UibMxhXK6MvMtGAlNaxSM1WPiAt7uB7nsdGMf/y7L4lhrQ8Oc4Q1+flpXUZJovXL2oy0ujXZTq/p4TO5YFgLUPmDo9eamupCcNxnzfymHWJ8ysfR4XfL5kmc+qlPafLzm0XpmQFUQhaIUeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UL6MWflO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UL6MWflO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28D3C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748734793;
	bh=/F4hEKZkKS21/aA0nmPuad2RoDB8goZpc0XeRbsa8io=;
	h=To:Subject:From:Date:From;
	b=UL6MWflOTUalfAYZ+K8vara7ZpVSCrCMxO6fW9ueCxWBrqcT+wSRCydRGWaSt1eGx
	 0zZrqVQyheKTSa46IDL/snIyPuKubYGgv533UtU2clNfIfExR3ivhQ0NApEw8sc8Ar
	 Mb5YMctLF/K57yL6/o63zEms7O9KS//bweFluf+nwmw6S2p9kaPtV390fpIwHX8Ka6
	 FiL/igD7JCJyvleEguS7d3rEGjWfm38QCAw79yQH6Ghrv79A+wXTaxrNYqCqCCBN7t
	 IaJiSnmA0rES+TBHs+0gPDv52Ah0BnLyVXRoo6IHfxoBMszt/kfaoAiHCk42h3QlhB
	 OjIMuL0GOfleA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90285C5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174873479357.8324.11102478723871067790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 949af86233b6877a831c5b45314e7ac65ec2a9d25df19713a10c3a46394127d8
Date: Sat, 31 May 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748734793
