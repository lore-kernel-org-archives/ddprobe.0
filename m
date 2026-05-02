Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46F81263C7F
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 04:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777696054; cv=none; b=TF+yDBWtHs/Un3GHrmuB79v2OKsxb6y9s8yBXa9nSmF4lEjm5yIy9b9xe7T7FCA6oiOUMUwBa6xKNU2pgadssmOuv51N8/V6eUkj/FkmsGsHWQMoE4bQORRlk3rxv91grLdpPq8lucaC7frl3wBwmA5V9ZDRk4JOsg9jj3st5RU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777696054; c=relaxed/simple;
	bh=nftEIkQ85UCFdn7KPyApoHb8E6Api+OV1FDPJuZhEKE=;
	h=To:Subject:From:Message-Id:Date; b=h528jZNtoeQlnrKyMNUOLN8g9UJSADWgScBNzQC1gvXPag4N0s2CAGPJEGrBA9byngmw/6fVrwGDeqcJ7e1Do+5Zw05KLMdi5k7unDxtPfFG3y0QCQvc3BV2uZldjWOFqP0hD3cf3DmUO4cEs+6f+mjIKljBGIiO29F5EoScIuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hWTfaInh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hWTfaInh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C530FC2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 04:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777696053;
	bh=nftEIkQ85UCFdn7KPyApoHb8E6Api+OV1FDPJuZhEKE=;
	h=To:Subject:From:Date:From;
	b=hWTfaInhuuV6KwTzfC8GqQzuVpSQ/Y0PbVEloufW9QQf92Q84aYQ4Z0fEZJwPInKF
	 r2zxJFDcI6xaOH5wjJ21oBeCUGw4p5vy8sgnn6yjcsaDO8NbfNwH+x08x/BQzQg3Xq
	 pXLH/hE5VF5hmASx0561z1X1pyMeUAdsWkwAIjWKZZuyYY1RWVPbegUi6VTJinuFzc
	 Sr6SAu39QpUXFw/pTleQ2WWIQECQVI03XdsLcb2hHJ5gXrZS4c6I5+VMP9NV8jDKkz
	 14TmrQHxaY9YFtKogm18jyyZp2JyeCQtxNB18w7+AV53+/pUoxBJoM+UF03+h2VsFh
	 we29Po0lsZgsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B058ECD3424
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 04:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177769605369.16543.12372466473158314254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4b379f9c7b25768d7e6868e76801a30c3ef98e18852f7783e7d92f47c8ba2a9
Date: Sat, 02 May 2026 04:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777696053
