Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C71A4734F4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792158634; cv=none; b=c+zUxN2sFLxR5TITMMWwydgCi2Yp5TDV1Y3xLk2qkjKELbZKp07B2DU5cy5XEoZeObJKEOhVZp+fankiA92P7A42RxOHJplQZJwuJ53yYDHou5eXU+i7ozZa8MQsMoXJw8UlChvqQp0NmafmlgcCT9T2nFi43J+zGX5SWiXdzz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792158634; c=relaxed/simple;
	bh=Mfkr0j0v1fvcqwtk1qNB0rC5fJgnrLCPi7WfnSU5UTg=;
	h=To:Subject:From:Message-Id:Date; b=Gos1vGYWpj/Rri9SKd6zHTd5+ts0svgHGpdUAsZJH/1qjfYTN5Tt/H7Aw5cY4cNJ0zsGATqPbfADY8il8qrSPRNlQhKgGXFJjrO87V6aao3WNl1aianJEJhQb7A2gv1uRLNhEgMXfgY5fJu2liNFy9RYqaIEBrc+yJCyjoefUN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gwK3OYCk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gwK3OYCk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB0D1C2BCFA
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792158633;
	bh=Mfkr0j0v1fvcqwtk1qNB0rC5fJgnrLCPi7WfnSU5UTg=;
	h=To:Subject:From:Date:From;
	b=gwK3OYCkWz/9V2e0vOt54bxuCfCpcEbaGylnm39gmce84WIAfQdLwOa4Tol3qwCc5
	 7wjAg6TMos9+zb3Ke5c88nA/GFzCtskmjIlumHDPZuq/8BL/uvxG5vXxKB9qJc+YqU
	 mKw52OBUmkTYKm0K7x+u5pesPHlm/+OqskaU5JVUqY82Shqbj4HJNCCSblJa7ftP7Y
	 kSNQIRh2ECFJUDfHGw+mTq3781DJYI2cnVCmNVNB3dHmGSy2/xLdLJDE1dO8q3Bp7V
	 bAOLhHSeXURiFi9mmRvlyghn8VvcjGyNP0At3WJWvUCW+tn5m3ZJMr4tPcfG/OxrK1
	 IVvdAp4kBo6SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B520FCCA462
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179215863373.11261.216771539921819693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06aaea8762e88261e50227810c7e439a5fbfe5ecadde412bfd75511d1111a7bd
Date: Fri, 16 Oct 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792158633
