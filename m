Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16C9931E825
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 23:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773963894; cv=none; b=saOueEEWEK9mRNKfh7z/R/TTrAKgSQ3qsAUjw/ammGxSjQjzH+BoRA2lz6/obYIHjgNcXSMkWYZBnOjfBUtC/cAi+JtYZnP7veNhKtGsVw/dz07+0VCJXrBJXQDqitCKsARcA1Bh0Cuco8muJ68N9S0eSZLWrfKQmCG41EhgczQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773963894; c=relaxed/simple;
	bh=JYtay+5g0IrXiowWNv/1cxR6GFPg/89pnjKHVUw38YU=;
	h=To:Subject:From:Message-Id:Date; b=mmNWT315TNT37KbvXJx867XwGOqfAj5xAA3bT6M/kZwJ6mXsa+eK9EF15iB+58LDM8PysZNdkl/xY2qPWyG+iCDZesbjGsu1Dvs+iJjYzEDwzqRtFy3/U54gSbud/4/3jtXLvO7tno82w148m8pGLVDWulHSdBQzgWji6R7kUQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JwSUEzTi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JwSUEzTi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A656FC19424
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 23:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773963893;
	bh=JYtay+5g0IrXiowWNv/1cxR6GFPg/89pnjKHVUw38YU=;
	h=To:Subject:From:Date:From;
	b=JwSUEzTi/g1jG29Fb9ABOtJI2aPATiYaAlwMNWnV/BCBCA+sFUzhpGwv8MfnHg6in
	 s4AK/1Zxk+aNpfbddGx8jzxKTeUwvoeBMoRoRwMnhxXVRW4aNathTy2Yev8srOAmkg
	 PFT2o1QBCMoiUStM05HBZGcaYy/X4HpKVkyGybGqbOgT95HjP0YmicDU8cg2kXm3Zk
	 DzFN9+kBNGYvwGGHPW3ULOG38XflmuN9g4OHuzr3H9/XAflK/spacy545gC+Qtg4V5
	 rvMPD+CpGV5EElDvb7Zur3qqWAN9RTyKmzAN2AB00VmfHtLfhzJTPK8hQN9U2Nd/82
	 Bs0AFEJn/Utkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6821091931
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 23:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177396389357.28444.5111898203995802959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb7131a1658e4226d6b9757a6a2df6a2eae958d2fd36404d272b5761501a93df
Date: Thu, 19 Mar 2026 23:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773963893
