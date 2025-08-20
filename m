Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 097B842A8C
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755667194; cv=none; b=a3r+rbwcnM8bOQPT8M8X9E+rCDYMRgpM4I59CxEAPQhO40ypUHujOlX9dozBu9Ehw6RkjTA+E6Bcnhgk5RdOGRgcY6p9IISK2qknrKLkUG+26Ke+K8tkOFnQRqKEDRJWWWA2YASVoU50LPlKunoABQy+8iQjjtOsmiXn1OFqTeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755667194; c=relaxed/simple;
	bh=oZNWzz/uTsOehqndleKaFTlePS5C3MEb1YjvHs9e7UY=;
	h=To:Subject:From:Message-Id:Date; b=rYWdDG2uDS25kzMhQJ9MIyhh1ek2+1gl7EhFJxNlmxfO8qhaPm4Q47EKYdxaCP//VSWxZEq9Jm/SnZVfYHRRLeeo/n5CgAiHon+Uz2FKKvzeBgx5XtUMp3p2GKcT+oQzXsgYGdrfs+nItkT9hnxfF1Kz3BbnXMnRL400Hpt2Fn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aFH2xpoC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aFH2xpoC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDB7C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755667193;
	bh=oZNWzz/uTsOehqndleKaFTlePS5C3MEb1YjvHs9e7UY=;
	h=To:Subject:From:Date:From;
	b=aFH2xpoCuJpNxacybBH/C1UaJ3lyk+wojv5zSOZDGr79xzaLDfSqKMQub1vtc4tkp
	 agU6g+x9pv8QEdNoV430OQ0FAW/4qlVD56kvDDhOZcuiWdqD38qJJ/IX8gbw20rcRG
	 o+9jffp79AN0MBSqKVc1uDM6GIuz1L2mKZ2iD4fxNtaWCq4Cm7pyvASBK/q/5MRuTG
	 WkrB/Qo8Vfe4slF6PLXfshR3+qE6qrNcaO4her2TZTKCBLOqbWimyGRp7kTEOGjQzF
	 bKsYAQnci6MtzmiamJPCHHX5kJPxVtZg+YpbTBc7+5/Mt43owwrAT6GoWRY2Uh50+U
	 Gbag8zANISzUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90546CA0EDC
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175566719358.3875.17243068376537889258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2eedff3ceb884eceff97f59e716a594ea6c6084717b9c5719ba26e963e3c77ec
Date: Wed, 20 Aug 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755667193
