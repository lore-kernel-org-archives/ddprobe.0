Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47527243951
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 20:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782591514; cv=none; b=BB5GuTHz1G+whha/je627wSfuEjboRBPf+x2RZ6ucW4EvxLihV9Cq/ocXoVFv8TXKUAst5vBaGTat5nfzSvrNo3OemWe6QjY3npUfFwqzZ6+uCJWa1CSWMPdPleVSZGBXYLZl06ck5WJaB5AMlM+rJeMHMYeHxsytETcQGiCfsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782591514; c=relaxed/simple;
	bh=TdH7rHJJlwKRtoKuKTnwUfQucFu2iWh7IPWgzguSyMs=;
	h=To:Subject:From:Message-Id:Date; b=r0v6giss4+pDNKh3IciBYqpNZdJPFYvx4Tx1VIZQ2u4ZlPELBFHL0A9MZslFnJ6EbUsa5qbfgvSLp55fPVa72SzO+dvcLot1nFRFSqSZUsOKrjQ38NIlxxbe56Kfw9zy7p1OpQ/ck8eNnUvn7T2ymewPdp9Q4YcVTAKWTrudzR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cp+06k3t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cp+06k3t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5B6FC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 20:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782591513;
	bh=TdH7rHJJlwKRtoKuKTnwUfQucFu2iWh7IPWgzguSyMs=;
	h=To:Subject:From:Date:From;
	b=Cp+06k3ttmjh6dF1bAJ5FluFt0gV7ROdubRPgtGRqt2jjxsLiPbMhjtNAMY8Tyy3X
	 Yvjvyg/aw/3awUMp7j4BSqhHyatYGCPAqiix3VGUMLpTJF6bMnYrEwduF8Nk2ww7ae
	 qts0zzJkCg7VqAWliP4ogjTThdeDzxfjTGHDkhyu+d/ML6Do+iuklp3qM+odqhmFFf
	 NfqDaKpTvGI9ihRmCy98B32pXvrxC8+ROHnQbvI1V92L5Y1Vij2L2bb1x663l3yvUn
	 Qh+GCmTvzZDI6ebZK+P/gQmiyqfutFjhTT8jUB6RhJq/nRWu/aGjo0W32JWGK1En3B
	 knE1fDIOf1stw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCE4DC43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 20:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178259151370.14153.5093635273843263742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8dd39b3628b4d1ddb823672d987e59f9919e66458d6e0d1e39f252b4513b11a
Date: Sat, 27 Jun 2026 20:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782591513
