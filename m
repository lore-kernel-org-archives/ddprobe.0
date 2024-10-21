Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E39719EEC4
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729541754; cv=none; b=MgtRuK44tX/kBd1N3vGrX+7n/PiwHKbCQ1ur/bL3Q1HuksvHOEHYWczL6pDMlUVHtVmMrxN0/k0Pb+OnnNOMBHQLX42KD7R9MhSAxlCoHVIxw7TBmrr6gjvVHFjhxHD1bCASxJtzbay2eADf0esI1MFWf9fxw/o/7vKncRGOc5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729541754; c=relaxed/simple;
	bh=AHiLRkVEDTGc17XMKyPUt9TqsFuGAYOK6APWMVQjkj0=;
	h=To:Subject:From:Message-Id:Date; b=fkzwDcScCbla0cKFNa5myWP2t91JShxdAIFZGUFrrjep4wyoNmmNlclDTnq9MGNcT2G3NJf/MqPFsOA7W+804JvEAg33WdYg2gojSGtmxv5f6pNBy/NmOLT7HRNMfFKWBgrGiuw1h89lSuJn8ukOG+pAQraciZKbdGPX0Z4K/Jc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ecltMeIl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ecltMeIl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45C0C4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729541753;
	bh=AHiLRkVEDTGc17XMKyPUt9TqsFuGAYOK6APWMVQjkj0=;
	h=To:Subject:From:Date:From;
	b=ecltMeIlHgm0twbBRaqQFny/X2UCErk+1ELCfnvgNUBSZGShDyIhGUhvZ60RPkt/6
	 dChnOVdAA99WGIweHp55U6MYuqZke32+lV8H9KJlcdOC5Vm8M/Tf8MG6wfuLPnbD6r
	 VWJFV3VPKtPyDSEu97fszCivg6csK+m5AVXuE70HFJOGnwmWpyBvLzUoG2KHW+pCNR
	 J+xaQ9OlXpdWuPQQ2PsiwcVlU4WxtgoSaUxqMrGjfH2111mQWwkWrYfYDH6j3J8nNS
	 iwbdmYPRJuvrGWdWlYiFTeIYLnlYCR7bV1ceet0+2ZuS8O3SWSwe1xZrH6Q+cs7q8E
	 n7VNlLuOYqT1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94382D17130
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172954175359.4925.10976617834458034549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c10a8e36af7ab7793a754af6808e2f8320a77f016f7da3eb842515f7fd87a03
Date: Mon, 21 Oct 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729541753
