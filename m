Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9067D3955EC
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792179034; cv=none; b=TdWKBmVYrk3UWn/4KzCsS7Gm7ZAyFwD6eGbf/mYcOx/wguiTaXrX0FQrRKQforRamoK5UqrRuebtUmSb7X4SM1AqRnprv9pc1CAvRNiCKAh4SwehbaT+G09UILVr3w40mz/seZT5TZj7Mk4OlNmFUapanC9MzTsWg5Lkjh3jtog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792179034; c=relaxed/simple;
	bh=f87sK4Shcli0ZEdEFzBqyYLHzT1uOcRH3VDAZosBvEg=;
	h=To:Subject:From:Message-Id:Date; b=sACkZkfohlqkpz/RzALdB+U6O9S5xwCWxWoFAVIdPkBFAJPDCLfiBRaXkTsEy5JeDeHkFulj+MRpc5b+h0D9vafuht+mM90zMyp11SG2v2dnVIl8B/nBsFtP+zqhU5HrY1F8YW322X0+wivpG6fKDouruUxbkxC9JYSRkauIT7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vf5FetE7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vf5FetE7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1E3EC2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792179034;
	bh=f87sK4Shcli0ZEdEFzBqyYLHzT1uOcRH3VDAZosBvEg=;
	h=To:Subject:From:Date:From;
	b=Vf5FetE70zT3/RVouFCr2iU2grDxYUAtGFDc820hzf4WvBTYWJlswAdZs1Ffez9gk
	 fMQutuuHzJZn5+7ZwjgR+W8en9d3PRrYUHDG0fJC6cT2J7eKn99ORTWYzukyy8wEeM
	 dPInBP6PdBeFf2H5mZWgtXLo3hY85k6bsbaJPKA1UBUP/z3BIENwi4ldE3jOE55Int
	 yp4i7xd0dQaf36efTMlOId92h336nc/quZtGM82jGys/qgN5fdxny+4EXrMznUf5dX
	 dKcfWRcW6Yg+wQS/RIzEpAtMVknqAR8Chl3OdaGPMkmMYu5LMAGKzSOUN91D7DdRNN
	 dkE71nGgnt1BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4C60CCF2C3
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179217903378.3599.12084450117950086361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 020cba4371509e1438b106311d29e4e5d366d8b288efefafad72e49ba6080754
Date: Fri, 16 Oct 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792179033
