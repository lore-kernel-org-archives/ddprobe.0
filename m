Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 452BE19F49E
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748071194; cv=none; b=dmHD0hjg1AN9xxx8pP5gzAWIaGnFVKnwpDpa0xW7JYlfCCBUsUj0u4Lwvw0RgP4pgtFXj++k9xBDwsAWxKtrDK8iLK/C0NfhQPfEMmR1mHdV7ZiDeMcspqkZ0NmaOY5s5SRXJieMGWLTIo7a+7DwTiGKVY9mptvxMn7KTr4jagk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748071194; c=relaxed/simple;
	bh=9DWKGAsG2fKhOPob5cpb0n2BLRTryCddeGVaX7oBMGY=;
	h=To:Subject:From:Message-Id:Date; b=GzgBnISy8Yrs7EWaurzCTocIAiO8XaAw+1p0tlczD7nrAt+TLl/hmTpPGmilCs6w49Nf0kVy+0g9XjxkNcG5N/rifKJiaK3HM7eGU7kexm42jAVZTa/GcsNYDyVaqKcDgUAGEBTRP4GgjEG/Xfu2RfNLOZ40r6mmZU1t9od2dXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ilCiBklv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ilCiBklv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20B7C4CEEE
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748071193;
	bh=9DWKGAsG2fKhOPob5cpb0n2BLRTryCddeGVaX7oBMGY=;
	h=To:Subject:From:Date:From;
	b=ilCiBklv4Dn6JeYYrVx759mJWP7/M24WblXxL4Q1T99pEPLVFiXMfwCJwgZnchP5y
	 QNYNtQfG/vfud7mIhRxBNjEllAOvOueSX76/Ue1t0uaNrE+vIpdjl05vw8Xv7LjL28
	 WaVzmHcnYNyWxY1DuKD5hM5WxLWp9u5CYBE+ubwb/Vg33/juE1jg12PoJVe/xvOIH7
	 AOsiWhEvWDUqLsQT+6BZ7fq3BwVmqQ1QXxyf2CJf/Vm27JA++zt7CRGfUo/dPvYGMg
	 Nz+IRnzYymtRd9WKUxGpsGTzEcNVIvi70xOgmM91Yplkg4jhDrpLtaCOfNlCQwaJX3
	 kCtBQNw/GpOzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECB8C54E71
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174807119357.11783.12010216314604990521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f51b053fae65547866f096931e6763898466f247d63c197b7557c3bee837e9e0
Date: Sat, 24 May 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748071193
