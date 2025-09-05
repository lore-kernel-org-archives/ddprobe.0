Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19A73286428
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757111394; cv=none; b=YZmfvPVaPQCvxHsRyPZKf5Vv9Ahb9LWu20HbteqOd8mGHCbhgESOgonD2qhTwLr3tdNha7rUxZA0UKKMiH6S+rkvxt4HpMhB7vDtwqmc4DRXmITawmSWEgDn+bMbL4yx5YvZ1F4NlPzaiER7jJKph3O9Y3QOPBpG44slaLUTa1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757111394; c=relaxed/simple;
	bh=uGPDC30nqkYVHW+Rrgsiiz5iTnXPaOw/e+sBy2epZmg=;
	h=To:Subject:From:Message-Id:Date; b=vB2lFlxVT+tSXQv8qv8ETbCxVPNFEBVMFrNfGYxGR0oxXEshe6SZ3RTuj2WIrl0OfTFxD9bDf2kKtKkpBfKLJDwfzpJqKMsENMYcEH3pF4kUZIOvdNW4fIPNHPlzaV1OCyTudizq7d8DKb6ZI/D5XHBeSYCZlXUCpcYMUYR42k8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n07kOy1Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n07kOy1Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3571C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757111393;
	bh=uGPDC30nqkYVHW+Rrgsiiz5iTnXPaOw/e+sBy2epZmg=;
	h=To:Subject:From:Date:From;
	b=n07kOy1QDCvWwW6J836TMeJeihBuEUK1v4qTVMXoeIZGxeWC80jxzhXPmMB9vgb1r
	 4KtnaGfV4feSfyUfM2p3EsY50bxFxQ2GWsg6OHSaHRm6X0trk8ZrHB+6KFLT7GrQlR
	 91W11LQTEqeMynDzXr8DuHWoowM09w92mijJ9OtmbZCbgy+mBmDerzZPHLZB5SY08K
	 /wP2/chZlRa3FLGMcnznV2cFyv6GO5LxHFb0/Rp9A+3+NtQLwtKBsIwzrengs1875A
	 KLz47eTSLT8QPUngcmu1J+dLUkxqczCAq8i6yoaFO7ZOaUlFmHWlPYAAy0XroFxS5p
	 jQkWeW9KqWQMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909FBCA1013
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175711139358.32504.14737816774808587320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85c28aba9aa710aba3d6d64286e98919f62f565ab4608025b073e239effd0f75
Date: Fri, 05 Sep 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757111393
