Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 221E4134AC
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 13:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729259155; cv=none; b=iD4eFkahjIKrbLX9Nok2bKsjfEMksjvFk/FwhPJopSfKObOIHISV6vyyKEXasxd1Qz657RydUpIa+JxACQnDU17MLtffEuUj82VKRPSTiodawSpXNb0uZuNaR/nbfgxXv1MykM3iNkUEAubLMJhPpPaL7DVnEBvU9ddBnOov6o8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729259155; c=relaxed/simple;
	bh=ON2lZuYf0XybmiV8iSzzbOCdI46mOrHWAd4trm3Bgi4=;
	h=To:Subject:From:Message-Id:Date; b=ROhwIaDVBqEPNs0R3DPsU39IDCphmNK3JiIgM+jB8qraHjJomoB3pwnjtz/+A6IicXsqiTZQUHxVKQhfGpxoHZzLQIhFT7Wi0lAKE+HYKC3jfesoRB2zy56hQKZlR95OXNqv5v7v9ipT7NidWlGXbI4oxrFlUyH7L0ZqaYnZIA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k68fSbus; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k68fSbus"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6670C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729259154;
	bh=ON2lZuYf0XybmiV8iSzzbOCdI46mOrHWAd4trm3Bgi4=;
	h=To:Subject:From:Date:From;
	b=k68fSbusD5+G0FhJpiXe97YjnKQenajdIAuCxxcME+vduioixaQpMEdGgYsIwNZI2
	 9bjr/U4KmBIlCcs932oVwU35SmbhLwVtnN6xzOoVQKVXAoN1A+xFEnTBAPFFx0XxC/
	 BKE26m0Dd16hn/DGA+1b7tzE4eVVW/xBUysO9Qg33acEdaniH3h1DUyY8JamAe6/10
	 09SFuzvNOWaXzdab5VMtuaCu3lqmS3OVKAYeDx1Rq1pRHLhihvrPLhfottvujsgjor
	 HgP04w3g28vs4OiXqBV/CfAV20OZFH/yiCnlx1EvbgYRuf5EHEBQcKkvKYEsQuAqDc
	 +Gidv+UzFoCVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926EFD3000A
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172925915359.25605.15617780673526323473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a91d72d6675cb34233d158cb9f5ee8baa44ea021c6e7cdc06bb3e7a87dc6681
Date: Fri, 18 Oct 2024 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729259153
