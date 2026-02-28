Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EBFA21D585
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 16:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772297694; cv=none; b=jj9Cv3/+yAOkgQGMtaZoNVBV9LNeVmhC9wyJ8Sz9b0v+lWhNa98KAMPmA/usZJ3QncWHSm+507p/n4b+/VsEc7NzP4vQYmZGuqgkacRa4fzhl0BV2Pr8bLbGU5vF6arLofsNnhyIAw41EaSqvi4Sl0eTw+vFBvYq/pXlfrvFeiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772297694; c=relaxed/simple;
	bh=pAEO4Quwv9GIUiwLnd2SlHmuTsJG3WSg67zCN7ncGvA=;
	h=To:Subject:From:Message-Id:Date; b=jSoAKIBgF0eAAqMJCpQPVHzjt8Wqs5YEuLiNtlcaF2CIdNyKhho35NBQUYy7KIffCqFYCv/6N/Fjanwi4Xmng9KDJ9aQ9MkEES0H7jWhDO3f7RGdkxniXIHNGL6JEJxEj45oaBLLnrh+sz9nMaFu/g3DGNtdxWHHS46wi09FQY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mRttNU8S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mRttNU8S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A599AC116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 16:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772297693;
	bh=pAEO4Quwv9GIUiwLnd2SlHmuTsJG3WSg67zCN7ncGvA=;
	h=To:Subject:From:Date:From;
	b=mRttNU8SXccxf7DngSNRAj+Lb7I9t3pJunkTDm4hmSS2r5K3FHP+v5WR0J7VWYSpC
	 5Rco2o/dixKGLBmGrBojVZWgRgFoItlPhNChuxOK07NsmMztdiKZ4Kyr44pOt53HMr
	 dD+WhrfZbFVtwH/mXW5ZLRduQQQQpB6V9uqtvy9AoL1YOoDdkdTPAgC1qkdMWSAoAN
	 uWYSZgQUHF+v0YgLlStkvin0TdeOiWSzpY0Nj7Ajxd/YUiy+zRDbMT+Yqzdki8TsY5
	 6rbvdHf+n/YQLVFoqdwEy8gODK76DzQdnqpF6WtxhGAPAu1ckTUYlq5I/vX7Qnjg+9
	 oLJLNkmzIp2pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953BDFEE4EF
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 16:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177229769358.11016.10384608847448676430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96c6b8cbea4aa502c63721a20917d096227002974c623788ee64d0ded683bfbc
Date: Sat, 28 Feb 2026 16:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772297693
