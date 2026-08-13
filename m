Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74C06400991
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786620034; cv=none; b=AyXqLVRWUtweZ+h+eWfKXPhdtudRkZpg/4hG+MOnxoJ0k0G4TVVeaPxHNoxjy22B6pTX+tT63sgwUdnIpOqKlU10NSr2xgRH7cko34ejcdx34lw03ETvDICwAzFcsY5rmGSfKToPSPucjNBEh/RxXLYLf1WDEs96HKuuyaIRPmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786620034; c=relaxed/simple;
	bh=cFNmKEvKEX8alPwp8TZTT/9i8OrERlH1lwqt2oKjoWM=;
	h=To:Subject:From:Message-Id:Date; b=L6pr73KOy7yfDsQ211QoIJC0XPJhfbchQCd6Q93he8fDuijujsWtJbddRaAVvFh5rJi+M2BUP/u+EM4LBKuaD02311pLYGvPcjvR5W0fjE5xr2c7jBtKX74pmN0qzAkHW/0BcnpLEzui+kZFWzn+FS6DwOY7SF/tH6E+DZBLvx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qvAW6o35; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qvAW6o35"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA88FC19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786620033;
	bh=cFNmKEvKEX8alPwp8TZTT/9i8OrERlH1lwqt2oKjoWM=;
	h=To:Subject:From:Date:From;
	b=qvAW6o350O7x0NHy7GILtj542dmsLgNVYjMPU/GtRWsjg0Zcu7QnhUdySLRJL/9Nf
	 bTic8N7Kyg1Ix0oMqFBdXgKLB9v1vYmMclWZT6HZ1iFgbCtCbnKF+cOjllnofoLGym
	 i5BIr1VC0tvMRO7B83g7ID3KblVdhJNyb3fqLV3nRgbXCmCYgj2Y4uZerDvXLzUJ4V
	 pztrnHCkioGX17X6/zSHeqAyGONVHfIgppjEdYJJQtxYDI035cXzdZlbus4JiIRvh9
	 FvO0eG3wO+LU1eIdyRNjAMyqI+q8bDyZvnSww0EbxO5tURE7RujtStz8f+nxVAlUUz
	 kZPfUBLvfIFWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A88FFC5CFDB
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178662003368.1156.13885932489895292054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 462bb61cc38517d752a44126e97423cc37d83d5d73dd2a24e0a8a9c4fd23883c
Date: Thu, 13 Aug 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786620033
