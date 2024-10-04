Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 277EF14B953
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728083754; cv=none; b=qbD/vTmsUeMY/IEQSLMWFbgjloL4wuLm4gh2f0ARO1fvqPIsl1i2FG/5g+O6k5FANjdJ7FFETj/Xs4OCUXOxvZGrchbnIOPasrvy2/rAOX6rkB984en6i8IEsW/muvevqU/kwbjDWa5Ulfm5a/nM0B0kPuTKdPb8Xl49IV7SM+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728083754; c=relaxed/simple;
	bh=5dfaRmVYCqdgD4+oTfsGujJkpQbhnZ45mNDopCNHiC4=;
	h=To:Subject:From:Message-Id:Date; b=B39yM055834Iy3zZbGQBIizeztP++6nlAOcGWo2iY5Uudj2sAWZ3NU6F6KiCXffHNNrlaHAUmsgLsePLBXSMf/3UP7/pkaJBE1v7GPVYDWHI2Z2X8yYoLMD8YxrwdPKCa9Cr2xb2oPfuQWVlprteVsPk0Sh5rVpyQO+kIGkgBiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=huQZM3LI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="huQZM3LI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8118C4CEC6
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728083753;
	bh=5dfaRmVYCqdgD4+oTfsGujJkpQbhnZ45mNDopCNHiC4=;
	h=To:Subject:From:Date:From;
	b=huQZM3LIu8ZzwhJ3kcVGJttIoLzp1mcgfe2ilHemQaZo0NDigP40WMRXZPx9/kLkA
	 URAIodp8r9zXQEQdL2RhmjT30XaFxBMOapY4yPXfPm1TYzdbMgUU9Ef/6j666uycnn
	 7AQMJjDIazRV8fgz7qq7l7mgGK9+f0Jrv9XQFmrNLhrBR5kiMtGj9f4isxcQJfw4vZ
	 BV2zPN9uRbJx0HmsIJnF0Sg3dccXvaRzLhOrw8k/R8GYdlBhyQy6ay5UcT6QHwq8Zw
	 nbOT8Hjwu2PfXcXC9+TnwBs57W3K+gHAD/2RpsyEzdxnLworXsRJuOqT7OiJPCkafp
	 HQqw4deQ0+KyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2126CF8852
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172808375362.4155.6079283208081057884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d2db75ef49924460ffbff097bca16ec98055056b52c3f2d16fd1e73f6e1f6ab
Date: Fri, 04 Oct 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728083753
