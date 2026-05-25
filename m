Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA6518EB0
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 13:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779714154; cv=none; b=hNFAak/B3q1prBQF6pwuUZLBOxN/eNz85HRsg0vfmsMVn+86XAbrAsyviCoRXEgoNWuNsRn6Q0ggUGmHMk24xGcebaZ51ULOiHGhHN2V2xz/zNFzWgtZpdD9IrC7tHDxGU/TE9soh/juoEZgiIZUZs7Cr4L/rNn6Aofwu4ovpwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779714154; c=relaxed/simple;
	bh=VnnMovE3yEM6StkDR8kAXIfY4EbW1/G5vkxSmiDrCZ4=;
	h=To:Subject:From:Message-Id:Date; b=SqhUd3MGljvlYl9M0UpuL7lR2WWbvw4+Vh0e/pVA4gqICnVXYWKa6t2k4k/dGyAkNsuWiN39xFlKao/4QzzYApkXq+4lBrkSwouuNeOM1tjJ7EzRyQbE/4yCZNCB1dzHY8rZs3mpTyUyERpIiWpnqopig/+yyANVewi0eLv0MM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pms3oJzv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pms3oJzv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C693DC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 13:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779714153;
	bh=VnnMovE3yEM6StkDR8kAXIfY4EbW1/G5vkxSmiDrCZ4=;
	h=To:Subject:From:Date:From;
	b=Pms3oJzvWkOKidyRCR9gbdwxt5xNcyenRYNo4vTSjxq/j3yDqlZ+MGNTW5L19lQjX
	 goM60shdhGS6SsbhTOwUVh9ux1TxUdN+5Ug6SsJTPSrOTyr8palu+89fn75woVVUX7
	 9QUlmvwczuwY02DyF+RpopYHDFp0QWu2t5Lwxgw5WuLarYBfgDYsESRDDRbKwXcrSW
	 J6ThWbfkd9r61ofLS5NMjT1k7aE/13MU4HqM4fwr7h48zSuX19g13ks2bLEgEtDgOO
	 ySKJN9WZZWrNTk34ZsXQ4DiTyYQ31HMvR3jTWKRLauml0Yw5Nwtt0CxTUN06A0LSOO
	 C4Xnubrc0HCiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC179CD5BD0
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 13:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177971415369.1844.13349153642933314742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2e0e16e72f9b98e82ae4cdbdaf95f6297840c5cbcd11a20495bb7bf482150ba
Date: Mon, 25 May 2026 13:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779714153
