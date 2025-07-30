Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38DCC3D6F
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753837194; cv=none; b=KW3sGvh9brX73Mv61VplkOPtjp/fX7X1DIaKGe9K4zBdehIVpsMIXiSV+zVZZKWtiWBlILgUvSemT+zkFsvyJXyfrlJfivi5choWYmTGxhho4OLXiM+Nnf9DTAIUcLBcOPMAZjp0FL2yg1Xs24VwtP1y5chT7Dd+8Ucf283IGRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753837194; c=relaxed/simple;
	bh=Xxj7eOmzo0RWiaX2+XFHRPf1c1sTlTbDHZVk5drJerM=;
	h=To:Subject:From:Message-Id:Date; b=W5SWVHsQons4XWPE06aRjhnb465sZLAcAz73D28gwZwSoR+4mAVoGUnq4+pFjAwOlORE41MCCzi3KeDGANo3JuRUsHA1yTIZstvaoLyRccyKLpgTbWl5dUc+r4mfjisfW8xTapiIWCfMwd+aSVwvA+GTVZWbi6T/gHB3fVJVFw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qm4hS2zw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qm4hS2zw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EBBBC4CEEF
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753837193;
	bh=Xxj7eOmzo0RWiaX2+XFHRPf1c1sTlTbDHZVk5drJerM=;
	h=To:Subject:From:Date:From;
	b=Qm4hS2zwKPkhXseIpJbQ12uY7mv6dUeiq+CFwjGK3tn5gC71mDnJJ4kbCiTMr8F1Y
	 wvrcUo26DQC7ZdjWi5sj7/1grXns3qIspiCC3ekI5T2GRRk0iJYgCHPEpC7Y0CEGqg
	 s0DZ4EI80Kx0/bH/ueUfRt5LCoM7/psMGRthv5KZ1sjNPnu1T09QKn1pPDITav2xv+
	 9thEVYaShB8qo7WdsGsIftPlSAYIMnPiEFxMWBU8MXZAcCJNW84ruRbjIeEYY9Rv7z
	 6eUbtaFZXkbmb6ki2eAyyAzvhG62Ubw81pom6lskKxIiDYTKYU4u0BQ7VCKpotTm6z
	 4PFuoIhzLTewQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E95DC87FCA
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175383719357.22157.1100367800906075927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 419a14110cde18c694b5598dbad2f511239f146bffd41d897243c32f3d529caf
Date: Wed, 30 Jul 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753837193
