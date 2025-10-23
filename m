Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1300819CC28
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761187194; cv=none; b=OcLklzG9yIbh81G8Qv8FsI/sfga61a7b7/aG1ww+6B8T6DZyh+BYAFoUOArvk8rSxdFT6/7zEfeSnmq+4DdqoFTiHS1Soc1Rbt76HBAF/DpdLvmmVuQgdiFa1koIsEcuUrzX7VRmmmid5hrYg/XfvBTpMaWupFT9mETjgl4pbBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761187194; c=relaxed/simple;
	bh=roinnpfYEsUugOr4b161/8iGOHgOSI/RhlFusG/NqqI=;
	h=To:Subject:From:Message-Id:Date; b=lGDNAWnBd5/rDqHnY8t+o0kSKqGrno3N8O0NjFEwx/fMCMrWle3vxUEVcIrlBAw6aFOw2CBiWJx+S1mr06Vir92aAyFy/P8X1HYxCnkDCY40KIEkYCz28T1qsEzfmO6M151VwEvt6H1K7ZK50YTdFuTZ8Lw2TtM2RJoUQaAW06A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kFbBCksW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kFbBCksW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B97C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761187193;
	bh=roinnpfYEsUugOr4b161/8iGOHgOSI/RhlFusG/NqqI=;
	h=To:Subject:From:Date:From;
	b=kFbBCksWKJ1gp4p8hy8DLr82756bKqxBp1QanTjqHe0nVYx/k8OK/8RNnUBbJEr0d
	 ZVakeOdFIyvOa4UsIXGluty0dxL8QT5VQ6AqFchHUbatNQ+w8AhoXMPDh8oPcO7lNY
	 J5FXrcCXF3l7senPB8MoYGZF82VMncDnX9vGp/S03axSxDNdB+ALUigwjQNug/p1n5
	 MCAiMyYVB6kSKxvanBXy3tKRGPh5A4W+O60k/sqTdb0WfvePeq04NgeOKDp5aC/6mp
	 hk16UsZNznWLgaRXppmYXffRIYhFiOKXXJUhgQLcmhZV4uj1ATC4/P0BFAXRwXJpIN
	 ujnoantXdvVgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927D2CCD1BC
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176118719359.6059.17129542849849791112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fff601e21633e0494761993305505a7e7e7ef6e35db72ba112e1ca36594de6e
Date: Thu, 23 Oct 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761187193
