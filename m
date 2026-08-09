Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 629E52E737D
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786241434; cv=none; b=lXOUpHMbRd/vMgUCPDF055Ydc8cp0V8aWsbjmVXJqSoS7F05WhiaoxQAgQziXQkAWUWxuwPhDECCvUcSU11lZv3EWtqdFjPG+VQUrdIy11h1VxNqHSPWpZLTHJ1oIcIxbJrdrDW2qHzhAzGvh/TR4ucgjMjUbnORNnsVtiDyPjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786241434; c=relaxed/simple;
	bh=k7CyrXKuvchltoMH4BLvhjHd4Vx2tO5pUDoTerUYoqI=;
	h=To:Subject:From:Message-Id:Date; b=QHr2g51jwZ4SZEylA3NAwctkOtgx/BKurFWdaGEhHZMFZ5uhT+aedHB0A1Cfg1QX6b+iMc5cEmlwTxwkJGI/b+BUOpWt4pquxe23mAUSU8EE0Apo9AcO9e1VNcwrx6/RHEHqWjO8guRrTFZp1SvDNI1nDZYWCTsKBNvqxkZ/ykA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AWtwRUUR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AWtwRUUR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAEB3C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786241433;
	bh=k7CyrXKuvchltoMH4BLvhjHd4Vx2tO5pUDoTerUYoqI=;
	h=To:Subject:From:Date:From;
	b=AWtwRUURmo0ksqqlu41i0ByzmlHa3vzA1CpK1FXCamBV4+9t2zFwg39P+874ooALC
	 Ec8DKLEuZd571XS4HPnSCnpeNylT+gMIJqe9fDYm882fzPdt9tIMm23VHdBMk5E1tO
	 yq7MUKrkLoyLBrh/KbFXQvZEpTcYjzZWiWCGwCdE472ZsaWMVkiMN2KBkvNwMYY+2V
	 GghRtZ1fMZWhLLp5/e4max/N/di5KUbU3Lif5jdsqrW3JkjzV1SIlAL/Lyb5UjGGys
	 ZqDmWIzMFTwPVk59n3o9b5oHF14MksiYX26s3QMWTXQkVaBvAMj3EX61lmb1RKiM4t
	 8qT3gm9BHu+uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE398C5AC67
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178624143369.10647.12762834012922653521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdbe2444d844edf4e02db003166bc07922311737401e12ab9afedda7d23eea61
Date: Sun, 09 Aug 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786241433
