Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E62A30AD0D
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761230994; cv=none; b=lJUFiZX6tAW2rvxoPkgDioYG6GLzz9t3Mem/vgP2qDniwg0y3gJCKe2J20q2cOhJTPkXeuhNwCiTrf7I2liwFLCpJ+fIJ34cMKO10TQkJDflR1hZqbav6ASPIZM58FbCipMzo5RibPDhfS64EdRyMovFDYDSrNafxddjFtdBRvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761230994; c=relaxed/simple;
	bh=1zJ6v/KSTPITIhDoaWsEP8+IssaKfHl+Bv2nWMxboBs=;
	h=To:Subject:From:Message-Id:Date; b=SJO11IP5OCShGXRAxcvnntHNB5zl5PQrybKmZb8EDjZZZdYeaDm8q9vXnWwmXquPWHNpuLbT3Vn84qAis/y1AW78xJThyXW8+gAfdeZcrR4TlzEgkTMAFd6JP1woeTVD3/+q13GBkg7Suej2IyjbymQ4JpEGx1fKg1qeqp5GTMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EW4ElqJj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EW4ElqJj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD480C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761230993;
	bh=1zJ6v/KSTPITIhDoaWsEP8+IssaKfHl+Bv2nWMxboBs=;
	h=To:Subject:From:Date:From;
	b=EW4ElqJjrJlCsYKmeLqWnpdg4cWu0hSr+zkNL8gbRHj3CrnXLiM9nQ/nrNMz/+Flg
	 5qtnWG6MKfIGG+Ymzbw5Z9gZaGqXVc7cRFCG+40JGli+/xd6o2Dw7SpmMP5BjZtq3+
	 YXmPtABaGcEtnw/0A9yIXioCaGOLbZdLC13UFGizz3DatnNFWqlwgYsJlJEWdvQUUo
	 nFOq4W2RZXWBo5VThFcSX969o4GZ5KYTQxzAdVMuqifi0TQb3pZIP1wAES2S5oHpzL
	 3FpATNymekTaMdeNw0bFIiefEW1E4W9FLDour00fJTbNHZrbLGz6qmRZ0e3aHNeLJg
	 vNkGHjMUNYlSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D824CCD1BE
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176123099363.2293.1546054628059975143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e74363f0e2864ef93fa303ad527f700d31f5a4338fbe50e3611e576046ff27a
Date: Thu, 23 Oct 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761230993
