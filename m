Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D00192264BE
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751857793; cv=none; b=f+yxqa/5lxmnyhu71AnfI1bGIyECUBW7u1bLVo0LCl1N8a0bdCOEhTZ6ikpB81RDtQ7wQLmrzI3M+TdSMT0ZupdkJZikUZcll6DrFRCDRgTHPi52ZkDoMWiQC2tXTK4I1jxHSLFt90ZtJEEuf/kiqQBpdj0cu+zxhFjnP+PSFoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751857793; c=relaxed/simple;
	bh=t2vBqAljssspDtnfMCl2b5G4uLPC2SRom6r/TycuMdQ=;
	h=To:Subject:From:Message-Id:Date; b=Pc4WkEJ9VjZk0sDaYDFkTSQ481zUeYHH2fhPAx8WBxTF68L+T9yEqoDDDP+AF+GUoHR5zDLJgwPu9ZpR5hO3g/eIXG/6+nRQcgTeBu2C84Eq/jPAY5Mwkdf2L9SGZ3J5YWWibcas6dynKLvxxgizznRiyszxj9KXdMa3920OBtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BjgSHqXS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BjgSHqXS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5216C4CEED
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751857793;
	bh=t2vBqAljssspDtnfMCl2b5G4uLPC2SRom6r/TycuMdQ=;
	h=To:Subject:From:Date:From;
	b=BjgSHqXS9xAU6pn9gvwF6peVDGQso4DGBVlsUfIT8sSA6d2lpp7kIgGX1Fv/+A/6T
	 ZVJ4Nk6NXxa6OyE5mHqEl+F1PlA2wz6/q4ylZcTT4YDWESAaShtuUrxgODYoTrDjon
	 g073a2droLbzeosJzNExCeosbndx2PzgoiFbyoBsSmhwnMkfwHNyNd/HFJxkWX6yCa
	 9CFJqyD5cIPkrDH2SU2f9gJ9KERmyLQ02UUlxbM+SprO7JueiEt+7aroZ34pe6MOmr
	 vU3fK9cwlyp7Dqt1c7wxQtGMLFkS8m9nunCJ6REqEFEhS6oCgPO9UiJuW9gEnudF84
	 18cipNrmuKHEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913A6C83F09
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175185779358.1579.18287738391051469483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af3fe5412e7d7a36be2fceff8770d98b7c0013796e318265ab38eefc9489a774
Date: Mon, 07 Jul 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751857793
