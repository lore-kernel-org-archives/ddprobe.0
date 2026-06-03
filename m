Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30B9E392831
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 02:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780453474; cv=none; b=HRhmWVHgpDKg1FZaTcv/wdCplHtqwr6J6IFpKR90E78PHFgsq+E+y4NuILVjFxVDsUR81GdCDRxkTddc+u6LqFWqhMwVCGcWSYbsdN64K2o0JKUUYKPya0XnKxRW6kdTQdshMaEBYVAfWR3G/tXppi3ZpeosY13CISyKhbSELW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780453474; c=relaxed/simple;
	bh=3NJ9AYwCgVGABj6Ttx46cZij1F52mFY7PQTQK9Pkoi8=;
	h=To:Subject:From:Message-Id:Date; b=C9SA3n5pjbuVQSI8xsf5Vke89NGGtOVU241hzlLNpKELQCKd32Nrwhl5R9UYX+xq9pSAXPZKHVD9NzDA7yxTnSyruUc54DwtsuApXPyLY8f5iUwOQtxuIfs71q/fUxfuX7sIhUOaUGSBJO1M3h7RIRccHQE++eKCG5i9EMEMm8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dM+yZNrn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dM+yZNrn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C28F1C2BCB4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 02:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780453473;
	bh=3NJ9AYwCgVGABj6Ttx46cZij1F52mFY7PQTQK9Pkoi8=;
	h=To:Subject:From:Date:From;
	b=dM+yZNrn776Rv4Of4DlfMrag+Ay2Gt/mrbFUbIquMLLiF/VMxH2cNXfMXcHIRFbl+
	 cPkRmtb9bn6DyLi64r8+MNN0byA/iwRuHbsxiEGq61ZUlrkQeWVUHsh+K8xSGm+MVW
	 hzNSZ9060uiUOrPMn94L0QO+dZbk5nXfgZ6IIMHMzVBur/kpS6d0gM6qLAaoK7QCQW
	 DvPSpLDfgcxJNpnmhqbJ1YK6/30fkH52BD7KT3sUvXPdT72IsxB/vWJX3rgrlfW8ze
	 JXBhgH3Ksw/KwcKMQrUcHETaHOG/8I52n1HCkwL7fT8xLdgKhTGnu0JE0kRd2WJkKc
	 WcKt74OTlucUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACEECD6E5D
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 02:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178045347369.21001.5125119018472089831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26bcae3a74c124e876af0b43d80d97ece3a2051ca77a98e7020a98b1824eb912
Date: Wed, 03 Jun 2026 02:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780453473
