Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 123AA1AC44D
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762631994; cv=none; b=iNYNRMgTpJBELhY1e5+dWDr2MFaNaXeW6Trqstox0Ne34MRfbaMhQqAO+kZ0UjGSE8iQZvUg5zmZDluxE+XDraDzdStkxXLZ7kQYak9PWuYEQjESaqlq9P8Z9vnHQyOLOt304BVrLQG5xotXCCs2AxU7od+lwq8ziWKYdFpEVus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762631994; c=relaxed/simple;
	bh=27Z6uPZ3nvuSo8rcM9PJTfBPiCK2aVAY4n90e4TUjGk=;
	h=To:Subject:From:Message-Id:Date; b=HPZF2SUeTR99AGPgaXPrzZbT5bozPl7NC9H5qYh9Q1seefVopJtar/ohDb9cdnLVMyqr0nlnrWeU1vGYyE8nTv1b76Uec8DIiwr5mud1VPXZdPLQLXurG8XBPZSLGNGPdwk0dCj09jV2fenaQBsujxYh9T01PL3DXdRpcUDFWCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a3nQ1Ule; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a3nQ1Ule"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17D4C4AF09
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762631993;
	bh=27Z6uPZ3nvuSo8rcM9PJTfBPiCK2aVAY4n90e4TUjGk=;
	h=To:Subject:From:Date:From;
	b=a3nQ1UledKgo7+KQNZHXQ/PMbxQw8KTpxlHSsK9TWKVVT5Lfsum+WedurSq+Hmpcv
	 ZrbMLNWAKNB40TEsU9hKSDNBRge1hvU7dqcYUmP0WwjT05DNug7/cf5HDozlEeGi98
	 3Lnwozq+QMfXaSuFWE6uXtxNdNA0hSMOXjobUixO32MRRc07fbji2D+06ZLiDNxHYW
	 GPLjnJTUDT/b+LPCQPg0ST2mr/2g9M+O/kSNCo1SCKfEQ0IHWsx8TLxQ55A2sSsAuS
	 YDP+PlYBNBtOnbn/QtYOJiEA8Lvi9jjBnOMzuts4i3oYYvMri7eWq18/sdCNEZcJWp
	 UJ6UeGqpopOag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E8CCCFA13
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176263199358.28608.7504310360883977611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee9f0bb66fc9fef48f4eeaf02eb142fc5c15ef5b06492705db4cad8b592e8d16
Date: Sat, 08 Nov 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762631993
