Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE388C1E
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746576594; cv=none; b=XkO+7WREyOuN9unRU/Kc5KQXUDiMM5rQVniRNKSxE7ZSDyn/3hOzJwndYdFhbyYH2d4TbFEF/17SfW3XYhJwghn35eOv+Pykiw4spxzXV64Y4JoBhRcJVbTX0FUyiuKZw5MBuLT3UdA4rZaokwOmwoE8MaQ6WrBOKkr6S4JR7fs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746576594; c=relaxed/simple;
	bh=agwQi+TUuiPgQvZV6DWFyvr+QclkftUPRbuNOHjn/MM=;
	h=To:Subject:From:Message-Id:Date; b=gD1ar73/LKZdA+wZYOGjKuLe0+okCWufY1iut/u7+8BE/ubiTv3oF+svGyDNS9IGP/eQYVQryHQepURG0J3VaPzU+PF277RllFO85ajUUMNC7B+EwIAIq/WAU6U9X0CGXDmcuk8pLrJBlYXuPum8K2ezkLgDIt8Jm28dapD5WOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bRfuh2eu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bRfuh2eu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C6AC4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746576593;
	bh=agwQi+TUuiPgQvZV6DWFyvr+QclkftUPRbuNOHjn/MM=;
	h=To:Subject:From:Date:From;
	b=bRfuh2eubEgjpRVrmAdv5jnPJWt24KTf44ulWRC8ACbV2lp4vFJDx8RVrJwgDxLl+
	 bO4j9wFfHgZbyA+Vb4IgBb7U6Oktpul7mWWiWxPXS1hqA8kQMDqW2Byyb2tu9HV8po
	 APRHKqnauUAjXpmjz4oTVcWhEaUNzHfSHZxQXqwbob1db0yR99XV+oRWq4xVVKC4WV
	 hu/rSaqZLlar2e1h7SetoezMmfvfppUuPopsssibI39Z5WpXEsNe/SuO+uRnLbNsmI
	 0+c1BVsE5McwhFMTNfqdiVdKdrm0NNb0qSS3qakRU018QmmwJLF+tGejsCClcf/dX8
	 rIW0IJ34jTZJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E1DC3ABBE
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174657659357.26781.10993950776218463173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c2e57bba9ecb671c23a070ba89fd1a99f9091d3c60bb4e51cb5f70a847885d5
Date: Wed, 07 May 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746576593
