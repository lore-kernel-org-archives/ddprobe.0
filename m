Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 373FB524F
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737723954; cv=none; b=XEejh1iyK4jHcNzXr4+ngBU4xjfF+EAMCnQbAQhmcmED0WQV2ttvLEP+Wu/n/AcVMl5+CGQOz0fuQhYmYaHtVF4DMha2/vtngjPtz3Fxg6M9UPLRqmhqYyrpTSE/77FLPd9UlfJ1pCpRAHSyWPxRoAHLnSaOJQ7/jYa6YniubuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737723954; c=relaxed/simple;
	bh=bUifAD9j1ZF7lBWjeAqq1it3mngjNkiC3wid9vG/pzk=;
	h=To:Subject:From:Message-Id:Date; b=P56TLAzt7AUEy0FWJQsyHcVQ499b5ldbEywcMfKgq2zMNvOzsZhKUJwyHoEvJODtD3fm3fCUjAn8QtFosxUqO34BB95clCVQ4kq8x3NEDLvFkxSJCfrZvi/EmZ2EhB6VJZ/AhViRozxmdE7uGJ+U0agnW6Oz2M4r4CggdpYFiAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l/EgH2Ft; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l/EgH2Ft"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D10C4CED2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737723953;
	bh=bUifAD9j1ZF7lBWjeAqq1it3mngjNkiC3wid9vG/pzk=;
	h=To:Subject:From:Date:From;
	b=l/EgH2FtqpwlADcvsOp9uOkorRAi7bgX228mbEgQdjpooM2clvtAh62/yABbCVvQO
	 KWAzj2SxghuJsvh0E3d0lJSWxGLRBAjtBg1Uu/IxjqUuIcfw6XshRzstUYxEgoZeZa
	 MlNqAd1/mJ8S03HPQIZBdkSqL35KWl4aJEKXOveO/mW4rYQZxuYHadsFjL0SCbUxr2
	 l9Soq5Mtj8Gp7RqjJAQtRupEo+rvOHVPmttRcPn4m3JY0H9pMFR70Xqd4laleV1/8M
	 2yyn1L4vNKJl48NRuow+2rveSMyOk6EQOGzMgGAUAkHoTeO0NvsRRnOooWeKwz7NRg
	 Rv0s4wUo3pG1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94315C0218B
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173772395359.3401.15790366182366145412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad7dc0feb4524405a6cdf970b144fe7d653960fd18cf32e75a2db282f32f2f87
Date: Fri, 24 Jan 2025 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737723953
