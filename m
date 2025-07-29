Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 049151A00F0
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753811994; cv=none; b=UnoTgB4WDk3V7gvNgABt3zcGWBggdr7zHbqo2PH+ZesCjO+G9b+RGWceYWpiClBvhm7g5d1CXK3/6YMqDfVm238XPXDlJPxl8VxEf32pISYrb7PbefcTfKRk2geYoynkxKVIoowj1Q8S1vruOxmkRhmB4j9ffMSC2cXWLcKMVCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753811994; c=relaxed/simple;
	bh=I4dtc1EP4sfoFMYHQCdTudk3JQn5EPp6mRmg5YzX6q0=;
	h=To:Subject:From:Message-Id:Date; b=ObdZ2SJ0WfpWBWFDwm68+3TLC8db4UIuHgHUA36yCDrmH4J53AcnNgIDIAAe3hUc3XAVxFqzYBdwepQpyz8XL6PEAnxQbWA9ZPvn78hjmMxMNc1jJwMFmaEvb+wGPca3LP3cPkv3FNvv67kH1KgT3zzcMaJSAQAJJhZS3IEOgxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jtoMYdCf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jtoMYdCf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E9B9C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753811993;
	bh=I4dtc1EP4sfoFMYHQCdTudk3JQn5EPp6mRmg5YzX6q0=;
	h=To:Subject:From:Date:From;
	b=jtoMYdCflRZZgCID/7sGICCXj0ciM7gfvLQQ1TEl3oFP3yvXVuX8XoXMijv6omBP8
	 g4A4v5syxQynG9W4KQMS0B5P3apKEh+pIcQcUwbmZDMrhHsIsj1B+vbAs1N85WxlcW
	 jX1WrvQmPioanJP3mPYwuK1MqiVtxrNFomiDAwZt3q+MktMEM/uakzyrpricFUFyqR
	 jGBIrbF7Ju99Sbm8B8sHAx+ZsxHo6ugUMmgDum+X8UN/o8E/ZD+RvwmfdY1ntEKsSo
	 Qu9GL/jkL2aLb74CIAy27bQDLAs5WrkhuBgcAWDvh4s/76XCbJU4zDNBKbq9ftP8Bo
	 wB82tLpcS+eOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F598C87FC9
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175381199357.24944.17789543249378763861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 007e0e44d103207d07774afe91e24ffc54317181c297391b1ac9eba581dc1102
Date: Tue, 29 Jul 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753811993
