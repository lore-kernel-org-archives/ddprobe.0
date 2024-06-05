Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5954314BFB1
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 11:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717585583; cv=none; b=FgQggyv0+QaJQq+MNTm64O8JpTBGHflrp3AbZmN6nuDOyFCCYTac/ZW/9/qT6Kmk+5zKJzbgcsWEGQriTY1iPzMGJQbiqUUUSbSA9xnD1KPfAzSb1/5KldB5i6I/rGyTRZASKYZmEJ0l2vMSRckeiAIO1f+zQSHdmgx6dy5MDpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717585583; c=relaxed/simple;
	bh=3ZHO/vUKsutDrOr5WxZEIwRb3O09FntodTEnHlvCWHo=;
	h=To:Subject:From:Message-Id:Date; b=USL1KJOhsGCWQVpUFwBymGLBHqxRuab2htKi+35B1zoLY8eoN4Kx/i8CvuFcVL7L+Qvy4DyWPl7KLHAJ7TXkvk0c+CfvQwvZEBcq55VcqMXzhhR8Br8aIWcHDzRbQudv3fVI8B8K+7L9wrmFRjaNma3PLGXzcXuP1rk9z2Ivhr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jm+Hl1B3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jm+Hl1B3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7965C3277B
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 11:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717585582;
	bh=3ZHO/vUKsutDrOr5WxZEIwRb3O09FntodTEnHlvCWHo=;
	h=To:Subject:From:Date:From;
	b=Jm+Hl1B3gCrnn0qiHzLwDDpOsaM3mTMnK6aKZiRDgS3aoDWB/hhwtKbjUmCWPAHYf
	 A8w1QqCLKEQbUmZTKjSFNixNDOvvhUM6QPl14VUKIFslDmADhYVjp65uPWmnzCZb1h
	 pDXXb8J+z5zJ7Q32Hiq1CSUuLcezq6VfpnTPmWRDLu8Hl8zDu8EFxk/lwhYQYZpbLS
	 tZ/FqUonDep9c0tjfCAGBhczqUNva13wZex5gmvUIy4sKjQ6x6rf/DTcIdu2RpSx57
	 wX4M0A/0/Q0iXc3KtPUC4KgWtGmGQe/jkBE+3tfHNoMSGEauSIvSt7IuvyT2OfMSfz
	 xaHv6O1W5Wlhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3FBEC25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 11:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171758558279.8240.6196569655406732570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a28ff88ea6210f06967ac79c7eaff34f65a05691ccdc9fdc47a9d2f9355f64b
Date: Wed, 05 Jun 2024 11:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717585582
