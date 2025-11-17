Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18E031F4168
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 15:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763394114; cv=none; b=sPaKYRwWh6QjfADlJUiOzRJLwCp53MKthi6MlmpQegUFDwDtNvWBUJO4wW2A8nMMTyYXXo/jLeDlMo6iUDjtfvwb/lY4aj4h/SYlLbDuoiintcW8d9+4lSL44XRW9R3FdXAeAxyOWA1qdGziYoK1ibE7b29ZPOD7w6IAGNLBY3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763394114; c=relaxed/simple;
	bh=ODQMQaQFPEVMuQY/IOD7e4gj7wSDvGfxeuhWf0K9t8E=;
	h=To:Subject:From:Message-Id:Date; b=I89T6eEJMhCCK9ZF635HjJW/e9IxA+r1xOmYmgc2fSoEBSA8w7ADdAx+Dnsz03eFRezcMaZ/Dz/NqL7LAHIufGu6fNiWh9MOTtJ2DTJHdByEhs11l/gU5dMQN0YgoRkuwiMUHj+7YYzjBPHDOJSbzdkUGu3Kh3pSaPeAD/Pqayw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r3lesFmN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r3lesFmN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43E2C19423
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 15:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763394113;
	bh=ODQMQaQFPEVMuQY/IOD7e4gj7wSDvGfxeuhWf0K9t8E=;
	h=To:Subject:From:Date:From;
	b=r3lesFmN6bxT2SgCQ5taZO3n0xS/3S0E/qQvrwYed7A+wdxDTK06chKgQwxGXcW8X
	 DEQgawHxlgRe1nXDpQwPbPuLA1KWZGQZTKSaneYXKnuPDGVpKXbSfyLSxPO1dPFwBj
	 e+qfT2cge5vGO8BVJ49fFeSbtJ9kBVScqJLpzwwyi6SFt+hETps5U7+rSKR5O9xUt7
	 PbLhR/45QsVm9O6dDsX3C7GEN/3dkFjmJ8usfGnd4MKpgbb6ZeAK1CweMv8o70qvEW
	 20+pvOQeFIf2MC+P2mW4lC9oA7Y0vAd0gsyK5F3NfeMY01GRFsHkh+eEIc5YGIcvGe
	 4BkZCrHTnpseg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91271CE8D6B
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 15:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176339411358.26209.16946330387308037145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b74e951d41456b6c7e6c24aee4fc67dfeaeee75cad3e52335ac5651d3ffbb3f
Date: Mon, 17 Nov 2025 15:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763394113
