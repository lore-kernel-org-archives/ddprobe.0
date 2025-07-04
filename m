Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B8341FDA
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751611794; cv=none; b=UXvzbeXWOwiO+Kf973u66EtzP13foRzU6JsW3k8ZnVSvDgc7aGBfQ4XQWxRy+faxsrgcvHn5Qb2RkXd3aED1axeDh8O81ck8p6gd3Mw/Osnu88re1hujbjUNroWhgvVH/dncjQit1qGBYUZ9ARDoSvYAlceCjeZkAg1l54eh2Ig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751611794; c=relaxed/simple;
	bh=WHw6l1eNVUqUW2JH2nzi2E7+jarTKyh5Ihag0GZNIms=;
	h=To:Subject:From:Message-Id:Date; b=sBI43ZhWTFzAFfoTBPn33DZ4GBPOEvOv9y5Gb+RqxrPWXgLVkuL2Z35fTtl64IW3OYC49eBomJFVwGaegpw7qA3EW9P0xL67paKA87Tl51ZflRbJcRahr20PzlmyP97WkU3AZwEEY178gmEbr9tR0PgcdNBNDtKX1wnreIFNAc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TWTxa6uY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TWTxa6uY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0771C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751611793;
	bh=WHw6l1eNVUqUW2JH2nzi2E7+jarTKyh5Ihag0GZNIms=;
	h=To:Subject:From:Date:From;
	b=TWTxa6uY64lb5SBM3hnzDy2MOfs+/E3LgI2k1WWmgrhikMZrLrbixHlp2mO3gVwZ9
	 83ABLXa88AyfYgHo/5jOj9jcFXf6gj1LIDUQaztF8ltkEc7x/1AQO37Jq3spKvjiF4
	 WT1NSnT1snOBA08k7fEcbi124QUh11Zc/XwkIgXnN0xwTBC4TVbd4XpuMFeZ7VwthG
	 mz2nWbenseDGJsPmH0ZmKs0mmQe6TmRgBmYRpb2AAqiuzlDcKPbshjmH9xIu9/jEGW
	 wvGSdJFx81+eTIwEhucFx0Rn6CGQal7NFUxu8tYBBZebTQ2UI3K3tZI6VRf16ghuea
	 7vdTjkpybWTrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E085C83030
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175161179357.20260.4770926767679392760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5081720c1c1027a4f749800278791596c535bbf4ac7be26ef586d86e22bee032
Date: Fri, 04 Jul 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751611793
