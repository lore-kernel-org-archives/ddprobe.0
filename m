Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E21F27F737
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752229794; cv=none; b=XaCpOwvuxQpCl7nhXfm1zcURiP6C/p9IxUxnEXebj9QAmCSav9h8MgUQjlxukTN0ikoYjOuOKesZagoKCELVoSZK8OjmI6AYiD6elC2S30/JhJa/o55xhrQM2G/hCx+AdyxKADUuukju2q97rlW74BNbs60A6D6Kj1Bzcgpxp28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752229794; c=relaxed/simple;
	bh=LVCvp2b3pA/Hw3LfNSBn/nP/U234bFnsH+Zp2PXEoxU=;
	h=To:Subject:From:Message-Id:Date; b=ByUz5sOs3z9CTMt1CUA8aemoMC6K+yyQUsXSJtMwi/onSO7Gd+t6WTQOfaSqbiDcaaVWJZsU09hYyEWvpoCwMCfr53Ql1E1wMDTS5THXVIwp3OC6VrQzl+Q96Vcf132eqrkk23koc5ckzDli6jF9AtuT6zD2tRKxHTXX8Th/ebw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BiwdQTTQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BiwdQTTQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D71C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752229793;
	bh=LVCvp2b3pA/Hw3LfNSBn/nP/U234bFnsH+Zp2PXEoxU=;
	h=To:Subject:From:Date:From;
	b=BiwdQTTQWt+sJ0Kqy4bnb/UkH93ffKxpPDt2hD+qU7t79mHufRQP0GyRcNPxNnS1z
	 WVSxHaBFe0Grhdso+p482oJ4+eYj7YuZzo+sds+DtIh1FpyUTuwuCjTbo6/yrXIbpV
	 0hwNbDOop1ld/HVyDDSkP9mjuZi22AEtwa11XVib32oWJ0j2t9XeppJmj75Ya9OGRK
	 KVKfHgSkpOji2/YjxKBKsrWkF5tdIJUD9//CpYdWwYEqbiSYa9MYHUo5GSgmSnPt1s
	 l3WHqTdWL83/Xq4oKDSUaDB65ISm11U7GyUA+gpM8RmYSwCN+XL5Ah06V/CvHoZNZ/
	 WeGHIX3m7AikA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AA3C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175222979359.7430.4659879816632859277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8643bede1a8584bdd7714d0afd46c82ab6d9eea8a025471bf2cdcea48b6e47e8
Date: Fri, 11 Jul 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752229793
