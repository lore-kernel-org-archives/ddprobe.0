Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02580BE4C
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 07:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705477697; cv=none; b=hSH6TLyWdrS8WDxCkpmq8hycDlqBwl0BITXA3p7raWrcBVFC78UE0wZxTRJGc9zKojfvp5aClxdR4Z/EqRo5iDkWJntIwEBCFePuxeMd0ets6QHxYv2ON0Uf5q7DTpDJEm7tSBMfbQkR8nj/e559DGlVAutMqRVif+YfB7JI4Xo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705477697; c=relaxed/simple;
	bh=lCtS2CiJaVKsxNf2lbsFdo/et/Bpr4RFivQshBKSl9A=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=IAbAYBsG00hLdo6B4Gu94sUM9uxWnocwzR4YXCKvBz9LaXCap3ezTHyEnOyADX+vqR4BBnQ9HyMIdPDqG2QGmHUHDWOoS82cyAdzF+FsumaJQcs1LBkHbMz2CXvX8YbZTB+YLbDtGzIs7ZdrD7G8MIENPdT1ysrtJZfhJiNG4BY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DY3LwMNr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DY3LwMNr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 772A0C433C7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 07:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705477696;
	bh=lCtS2CiJaVKsxNf2lbsFdo/et/Bpr4RFivQshBKSl9A=;
	h=To:Subject:From:Date:From;
	b=DY3LwMNrRG4WJECMj106fVhvjCFsGfrDQfeg0nuBSLLunaONpkMtTAn2EHJHaYX1U
	 PaBo70l/SLwdvR/e8M3PIyaNB9vplQpti/KWrcpfwUDrEzsr+a5xC1pAiYC+Y0si/b
	 JTsgJHkEgnTEewiFCu8/1VQD+pk9IVLlHUrDN2i3Pgx4mypDOxjPNeSqM5G2ndudLH
	 c+Gl77yroxTuV/HDaqCACR35ehficDaxYKjxcWhm6gLVQsy3R30aROyfUbBsFbkQ3J
	 HIwq0OA4aBSbBQdD2TdPP284Dpk3AwSagaDNJJ7/P9VjGLAG3CRLSWwiQNm3ToprGc
	 kpzQsjAg9d+1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CA33C47422
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 07:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170547769637.1493.4401605940274711685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f450cf08458fb3808b491b44142b89baa45cefd00b7f34182d29fda9380cc13
Date: Wed, 17 Jan 2024 07:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705477696
