Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFE45296BDE
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758118193; cv=none; b=dF0xRdsyG5CAWupjCN7FXI+Px2G3tOTXUrU1lCKlutnYjuw5/IpvVftX3DwufwCcvBT3nK84b/Xf1GPaHCLw56TwbKEq3sG81hBhgeFdKcQW8wAt9SOlyLsEVJRNb9gjqoUQNWY4is1pFmy7e4mAo5l9ZLa8pZ7DDgFiRWW4m/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758118193; c=relaxed/simple;
	bh=Ke78h5i40DNUH2uvIQVleFmk4wb3EbbLRIkVLxM3pQY=;
	h=To:Subject:From:Message-Id:Date; b=qSAQRJv0gVPcyaoYGPmjlF1EpRRU5f2P6YZUBX18ZSgWHK6mNVvqbaux0o6qDrvu7nhw4hjvEMloYDqFZWv+X1VZc9qAvDxXINOClUE89pGs8LmTCrEDbXHMjRBJy+6I9IdNUELOx6/bjGdxBTMRs8FP+n64XrdsR1VVXDi0FdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WhUz50AM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WhUz50AM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A07C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758118193;
	bh=Ke78h5i40DNUH2uvIQVleFmk4wb3EbbLRIkVLxM3pQY=;
	h=To:Subject:From:Date:From;
	b=WhUz50AMrbLSeTaV+3HDHK1mo8otgCP2tcyYpUIzYvwb97w0E44yodfypxsX6EGA2
	 Xc2t+atzd21rFZJ1ke0jogWEsYYg3p3LDmraZAYSq0lGqYWO1f6oBN6HOJUQ9N2ByT
	 D2aSj2P6i5jwbL1ozf+Pxt3YclW7nmuhpWtuK4iOuQEs/UnjDLouGiWRChLyQQjhQ4
	 1i1KWjEuZ34LM2XH29lNfhtQ+quU0dNXtCb1DV6CBheCOMpNFGASilcHP8dORmuokZ
	 bfjm2tt92+omrpPBOCdJChPwFDjRAzEfCkU1dxLUCMvsnKWZCpqTiT7X0zmnSz0n/3
	 +/rYmBVCQLlYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902E3CAC599
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175811819358.19521.5049941597429657081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 395c2c9ec7573a93343c6366dc76f80c51e01cf5a016f8d35710c48d4a91338e
Date: Wed, 17 Sep 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758118193
