Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12A3635959
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 17:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768669434; cv=none; b=IgYd8ti0xGFYlmJgPYspbj15NZMGNbTyGJJZL6rrK+5qiQN0ArOaceAJPvAFNxTJTj7F9Ud9/2E6cA05b0DYqoLv2HjvtRREOhFXp5+mTu1mssdN0DA9U43TtfpTrSUInRaYPV3Bs0Xd9pVY1jAJ/rtgvJXbxyc+YDTPg9hhdak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768669434; c=relaxed/simple;
	bh=yySAytwNu3oacwrAvRWBStQ52HiOT3GWAF0PXlhHfxk=;
	h=To:Subject:From:Message-Id:Date; b=MhMH77BgJq1NebQBj63UmGfJzbcfCzvrr1NXSiSc8Vl/oWLgTvFhpv2yYnaTkFxCURiMYPAeoefdF1bL8JLdQX7BiQ/ujKv1li9WaCkMi8kVaCDmmxDBqu+Wy+07Y3A+hgHz2oEf5I469onnRBq2zqat3zeZbicVqX3aMPzTY0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IZMSftX/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IZMSftX/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11BBC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 17:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768669433;
	bh=yySAytwNu3oacwrAvRWBStQ52HiOT3GWAF0PXlhHfxk=;
	h=To:Subject:From:Date:From;
	b=IZMSftX/I2LhUE81vt3X2T+cLLm9mII7q22sojMYlRqTX5j5e1dbmEwT3NZ+Dfmbw
	 IQiP/h6Y5OKMtFHjYjzfzv+yMWDhg7/CGwT0bgPyBpInPVtftMp6UClX5j1kSIeIMD
	 QCXDw/xRiEnTFb5Je77qHiZKA0v76bEVXhil94Y13BllmnK8xfd+92Wu0F9ETc5KFJ
	 miToPow1l1ijGZs8ElEV5ARf3F9nqRV1kN6vlr3RtUqhLWDK+I26i0n+I1lnCKH3tv
	 iR0+hsDdU/MNr6N3r8O8KYbRoYjS9h4WMKEGOardubfP7DJ30aoevDq/dYGPwjEhuO
	 f+stgiykX1Xcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEECC98327
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 17:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176866943357.18560.11520136463463577008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c0497cd37e71aa64bef9cd466dac0866969a1a8f3a73e6600d2f6d7bcae5478
Date: Sat, 17 Jan 2026 17:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768669433
