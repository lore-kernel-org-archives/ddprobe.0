Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FD66370D63
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786035634; cv=none; b=UA0iLCEs9gAd7cC8myV2ehD1FCw9TUqy7UOgEOaHm+VQ9A/5RFCn2Efh026rkFHleF6X6RmDuC+AaC0ZuMtdsLIWRgSn5emQ0asrFvDaPkJMjPq1XZAf7IGETG4lwt8BOB0LAgDAjwjIfbo1Dg54WXEHsOCe9u1HEfmOEe12p5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786035634; c=relaxed/simple;
	bh=gA2On4HlfhSrXlUmpk7Ied+8TC2qzalPdc1MyPkCUjs=;
	h=To:Subject:From:Message-Id:Date; b=XLfQ2FN6xyUYKp5z2+fH1B5QclkdKwSrmQVxHJGrGCOw206VPuECpKyESfjzsHggQM7xPczbKNiGIp93aYSkkf2fQ16HNzOYCtGOR0mz5xvId6jlOexhulrHgQaVuO7UuMSRzGfyTP/wbv4DYjJmB65Ck77FkuxfLZUD5m/Wgv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MI+me70X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MI+me70X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E282DC2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786035633;
	bh=gA2On4HlfhSrXlUmpk7Ied+8TC2qzalPdc1MyPkCUjs=;
	h=To:Subject:From:Date:From;
	b=MI+me70XvCs4sOZeW8Ev5qGfw/3JguhF+DrPenLy/yVadaUYfKT8MCDMtjo53Sq3a
	 DOWuD8oR2jjhAkidP9yNveWRc909CYGO9IkzMeK+qo4Bg6086WzbRMNgm1n3jk2pOd
	 12kkvgY6fWPlS1Z/CQT5M33e/ge6oi/sIsgGhvT6Z7qiUlRmcp1MekJPEJW7UWgWqB
	 mWKehe9fJ083M6/8oanStL9Ezm7W2owvGwFohw09DRRNnGZVHZJKBd3EjLEUAhaoEL
	 GwmdpGcT4LYqvcg9uAwZQP7+eFi1Zkj16cdEtKYij4DuTOJ+THDySP1YGf+wKmWAyI
	 R156PPBjPNuIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB267C56205
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178603563375.5738.919788258946630301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e2f0eaeae4d0720a3b8301f0a421f315b057026c267035cdc7828dc43e42cba
Date: Thu, 06 Aug 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786035633
