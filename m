Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31A0D3EBF20
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 07:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771745694; cv=none; b=qbsKAUIv37qiU2FhFv5j1P/ru1qmedQMvlFRX+QCE1t8ekGO9fkpswJMtR3MXtJBFdCCxRkT14blO+bvE4HMfWOzc050r6eNwDzOPHsRBd/mu37JcRYG+jWSdj0ordy0LrEMeCXYMMbzmSBFnsekFAaOF4czM5lykcCWQY2SAz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771745694; c=relaxed/simple;
	bh=GDMBrVP8IJcYpWrjjCdXALQSOsmGwrtAs5Z2eFQfXig=;
	h=To:Subject:From:Message-Id:Date; b=ikXHbWczlYmOXG7hQk1Tw8/RqmIav9zVt0XUOZ6eZGTIDuDPZPK5XoqvQwlB/88QB2Pii2S2UEQtB0NPj9ZxnBCb6G74HC2e2mNKeB5kkgdEiAdoGroNmCuWFb7WK0Zc7i61bLTXIsSv8q+REURNHIb1KLOBM1uBQORrI1EIxrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=osWn0kcH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="osWn0kcH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5962C116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 07:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771745693;
	bh=GDMBrVP8IJcYpWrjjCdXALQSOsmGwrtAs5Z2eFQfXig=;
	h=To:Subject:From:Date:From;
	b=osWn0kcHpLDNcUadevjYIdNZYNnmjySEb3n4S+kp1V2hT3CvzK/90VqyxUBYAQYc4
	 0zWUw25QnTnH07NCTuoORtr24LBOMDlqfsKxvXIms1o98BLtnmTlQ6g7Ee9fpv6GT1
	 mNgJLTuZCQVzGJA0fPyyCssqTBpOITFAWp9fehVH1HKgsZwRvjp4wgrZ3VCaX6MzUb
	 lZPsUOHS8z9bu/Ovm07UvjNfVQln5ykvGZnm2ZXgujRgBuwCwWeHb3XQelbT8DAaUo
	 ty3vpgOe8+QoEnLstLEZWHY9sxv4PPmqXcH4CQQPoqjvXbbf4jcRCJ5LQ76q8rbO8F
	 6589YyKpnv4iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E2FAC624D2
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 07:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177174569360.11676.400166572887443163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d63462b18b2c6f117867c7bc9593154606e298746eaed93c800d2e93cae78223
Date: Sun, 22 Feb 2026 07:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771745693
