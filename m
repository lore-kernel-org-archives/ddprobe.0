Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6C02AD20
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746592194; cv=none; b=nBDS4+Js0MxAIVmoszPQyyDHvBXO2I+OIszw+0X/aTd62S19nKGdpLD3r7hi1C59YYCJVN1v3qxmwkB05V6I56huzL76iaRJpcWVQ/jbmZR8NxtYTH2pnnUqigrSNMbRElzm8BhLVAq95x8Ryut/sLG2CBCvkSzGqObfa3SxEj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746592194; c=relaxed/simple;
	bh=dwPv6UDsgsbJMxAIR3WH5mcPY4BvIQKajgwkc9G68hQ=;
	h=To:Subject:From:Message-Id:Date; b=Z9JAFlOxpVAqDxFHxlEaUp99JKGqVdoD1jbd1wRhHlRkm+6rkmNUkkTD2bo8bmgvOo9x63krU5+0HQ1qkqBc6Hwdzkp9kdu5WwxRG0TOlok8uBAeKDQDomcsTW9QeTEkKePbtqOaT1v2j7R8UoKwb07rIPni/18yjvtYagFpds0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J5aYyWkl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J5aYyWkl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A93D0C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746592193;
	bh=dwPv6UDsgsbJMxAIR3WH5mcPY4BvIQKajgwkc9G68hQ=;
	h=To:Subject:From:Date:From;
	b=J5aYyWklxHbFDu9I3S/BATCp25ABilNINc7kvnpribN/aFAJDg1DtHVQ6UDBggt4K
	 Sh1B6tYtGHGbxrNhCSOJ40DuvclFoBMYL+dOgsoUc5euWBxGckZnRjKiPmghvHy5HU
	 0ZLt2fFltEZ8aHqVeahZp2fK8SqZDQ/R3fRuDOI/2yqqU7yFBWozPcQmM2pgEV2g8Z
	 IrL3X72Lhaow5p+d8bToTFCfI5/ANogLL5HlUPrFzNzr+H3SJZeZSf+aYLwgOINV9D
	 fuRVngQ+CPKyfyPMH+uoP8ubDk6Ytz8Yj7pkGm9O5Fc2hiBkgqHzypbGAlB9h4p7Gl
	 3VEWIrACPbWlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C1CC369DC
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174659219359.5710.5070497294775292979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 327143e7f542f737592702fd6b2acc240399a4654501a1e6a1f1ca938e4b27f8
Date: Wed, 07 May 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746592193
