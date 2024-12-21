Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D631C847C
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734790553; cv=none; b=grZQWSCwh2O0LE+UHTPhlDvZdcsrClWSKknvpUCpYhCAgt6e73ka3IMb28VEHuXrvXq2uB8JCZ8cn64CbNecA4qc9WBc3Kpoo6NeFmbZ2NdCMuX0vDi2ZQOnvgNUFzNwD2hiu7uEk99cGqQ6uyELF6uZQk/U9exgAJr2FtSDhx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734790553; c=relaxed/simple;
	bh=U+L48pWmqikm7wJKvw1FXzwrXD6qK0QgDGAqhVXCs5w=;
	h=To:Subject:From:Message-Id:Date; b=Ntxnk76XXVVH2u3sEa2c4Z0c54BeKyvGcHcuwZWEvPrXuM49TLBHAAGyj6jpq8BXR7nctRiKUEVSDTMd2KI32cs4BDinm9DN9Jd93U/RPWTAZXcqjPVy1A7+SaVUitRmAlK/bC02ngR9Dv4aF3NMh7xyreql4ftlZ1PWGaP0VEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hREsl9YM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hREsl9YM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B29CFC4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734790553;
	bh=U+L48pWmqikm7wJKvw1FXzwrXD6qK0QgDGAqhVXCs5w=;
	h=To:Subject:From:Date:From;
	b=hREsl9YMXUg3ia++Nancc23r9WXIEcbgOnvvcL37jtbuiBss5PUlCi9XGf1q69vnL
	 WU9LsMpMqm71E/W6H/X8Ua7GTAiW0ykrfBxpRzc/GP+SHYHcBC3cnB36mxqtjeh7cQ
	 lCNKAZ3kzvoeXeq/ZAgXaICjgXmlU3GDYT1p/3lJiQtajCHoEWDc+JIQcABv3zxqSR
	 Ze1njHdoKnbrVAfjrIusFe/EBlVIv6OqLweTxwYwQQps1RVNNl3xlVn2Ck7bGHlk3D
	 Hty8kc3lW3aoVDOCyTOUzfiFHiMGJEXe9YVsdWA4AqX7Y2sJjlfDGd1/9JM1nETXFw
	 qYSOCXy8FM2vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D500E77184
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173479055363.30642.15411818400106067260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9df2e380a0060909a1178642a873945e7cc846b35f5342d788522709c874899a
Date: Sat, 21 Dec 2024 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734790553
