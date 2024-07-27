Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ED6E15BB
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722048954; cv=none; b=LZ980HRxoTQrQWazns6Kp8DwH/Y9Tah35owV3tK4bt4sJ5TspTE0HMtilAQZVpu71FA/5dqh9pBvz/QsczVgHcYkCsVsJbhrG+TBF3a3L2cRwMrfRWP1LPD/lcOeu9DIImLj8prcz6REIm/AzZ/VDmJ7/+my0UWADGeXsYVD76I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722048954; c=relaxed/simple;
	bh=JWujdNu0NQicmq60fbBRX25Hh0mlgl32HEFYpLVX3v8=;
	h=To:Subject:From:Message-Id:Date; b=dTX4VeGdDKeYBjAS7AoAeJNUEWnlVKPYs+WPi8y/urdSfborIB21yhUcfVrRtQadSr4NgtgKrdE4EcSfQ1nfCY8o4fLwzIUDbBWSHBhOOL/qzmbr8DVmqeI1rqnBoXpXujqsGEV2k3PLh74Wvs5DzhZ7lG2jDG53brINmIWjRso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q3zyYeJ8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q3zyYeJ8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4838C32782
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722048953;
	bh=JWujdNu0NQicmq60fbBRX25Hh0mlgl32HEFYpLVX3v8=;
	h=To:Subject:From:Date:From;
	b=q3zyYeJ8MtD35xwfrwtQAY+i/9B46r5PeRyDrL5he6+HmioTB8fXTmNtNa3Bi+d+Y
	 6qg38Ziw7LKmGcP/xvlhDetlTzewl2aq/So1gJUvhmYLhrWRZ4Y2HZO3oF0x3StGKn
	 PQLV2pigU+8sjcocceNhfqjgze1JzvdO3MHzHkVnXldnTOHUK/TDD6ofbTxEZcyuWB
	 4EAWksIl90XyNnLlDYmghvq9smuBp345RwuuMTu26ljgea6NKjvEMiKaiOCQzRlTa5
	 ocBaFLYpcfvqPW+z5TOgTqNvJD/87xagkfo5BefuWL/WEx3o9whngXkQ25zXQRJX7M
	 spz1GrwQhnVWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95273C3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172204895358.13167.7151178791950122557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5b34513ed97a584c5bd993817b119f1ffaa887c7c40e95576c60512d89e9d41
Date: Sat, 27 Jul 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722048953
