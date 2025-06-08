Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C4CA78F2E
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749356394; cv=none; b=H8DyjSU/g6H3OXCa3XpLl9vY54UdCLbjOt8dIWKqRvDUede7rT2JfbfAdOP3c0LGvQFTcBKHv/tCZTO8B/t4ijbqp81knlpjxg+8FrMk9CPRiHgqpj2LsDtsZJLpgrOo39VC9OKGa6++HCTxy3Fe2/ibXvmWjnPsVuWbyg40XZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749356394; c=relaxed/simple;
	bh=TEVIk+Sd9ZUul/hbvvrVWT6jNN7SigXNTW1tb3tsX4I=;
	h=To:Subject:From:Message-Id:Date; b=jD0zaY1M9MfuqCrHzKRvfSwyPjGmNeuEcQ4xh0kBran8pu5xi0QA7/1pw2vNoTJbXi5UTpzmghgmtFc6Zk4nOIjQO475IhMW4Vr1btdcmSQWzyanEsukpFxYEeMEz16SGZVNlNUUIjZMZQSE9XoclY8kZQtEOKfvyl22+U6o5io=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sxK8t/b9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sxK8t/b9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD515C4CEEF
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749356393;
	bh=TEVIk+Sd9ZUul/hbvvrVWT6jNN7SigXNTW1tb3tsX4I=;
	h=To:Subject:From:Date:From;
	b=sxK8t/b9eJkjg4+NmsrDavKiDt6iVZYTULaxl4VEygv36ZcO36j2FPGfGokjxTjPc
	 wYof7q4Pu5Bk6X7DGJfUg+pkkdNvA4nYbmWrochm3CAoFEZDZ+omuY1kRraxRzdBHO
	 HPjm4teWpONvFxpKiNKAUhp/PsXUmL6go6Lznk6lzBdSJJbQGBA0RCPgdDcsLCPBFa
	 eGRS9jM5RV6Mu4caftNq4QGfckQ1dnWVUAaG9u+hJ8ZKZudK4Syc/TDzo1o1fbFxq3
	 99iOaRbvwxjHJngrloV/QXvfF21k3PqkDu4ufpctQpxuTDKZP3ZNAi4hThu7nU1tEc
	 8Ke/QygBPwzGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4CC3C5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174935639363.31423.11496398118435429811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 980792f2f7d646cfa381345027f99e457b2c57426e9e259ce71cadcf7110e52f
Date: Sun, 08 Jun 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749356393
