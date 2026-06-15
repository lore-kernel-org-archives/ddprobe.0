Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E6CD1D5CC6
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 21:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781559394; cv=none; b=AkuDpF+19+99r2NXIPEnjQS4zGqsqz4fP6zrvyabqu7l1iYC2JUzwdgnH9limhe/niovSAe9t/QQJl2e8pahM4l8TKviq2NP/OkawM/fttoCiNvBov/EO3aD3rd4CkNQLTMld/AHG0BDi8LuZCDSqra29adousG/fcL989ok94o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781559394; c=relaxed/simple;
	bh=gnQBfUGXwGqjWiQwIqwIznUJP4rFf2TwJT3nDdw7cL8=;
	h=To:Subject:From:Message-Id:Date; b=FGZNzLFgR/CQhatuxqM40x56pC61so9+5zlupcOhWc3s0CF4+YOLT3f1QYR3tDy6oNRCKdzGLdvaXrkxx+5crNbg05FiZh3H5IMzGnmxfxFfM+8sivXtHePUFsm/fWs/WnZs9aU4bvN97TSjzlTbsmFqpL9PRdx0pkyXwsvOBnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mRyl0X4x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mRyl0X4x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D97CBC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 21:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781559393;
	bh=gnQBfUGXwGqjWiQwIqwIznUJP4rFf2TwJT3nDdw7cL8=;
	h=To:Subject:From:Date:From;
	b=mRyl0X4xmJVJpml1Cw7ieIre77HfAsEcBOVQ6llTN9/ahUvzJveff55MPOdYv00/z
	 2FG+fnkbVeL0vGBgmUQrpcpmmM8/37veq7mUpsFAFo2PNlP7CrXrqStLQUi8B2RZV2
	 MiCDQAcmTkBTaX8I9L8KEopI4awRByu8f5uiEalfdZqNUbz8I5WbLLH5SGXAXg5vTM
	 cdypXoQSZOSPjYsiJ/aY+NUN9r/aRDlPx+s0wFVDVSzAfC35v/a1M8MSTkG6JxoKdN
	 KM6ehtns418Y/j8fJvi2Wgd2HdsfvhZD1nxTSf6S/YhDBWCkHXVZuMpc9sxzNvHiIk
	 97IfPCpMP0GNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B38DACD98CE
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 21:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178155939369.23782.15775814940798683244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4385781cfcaf54095652ab62259532ac9d5b3aec1cca9d1ef120130c12234770
Date: Mon, 15 Jun 2026 21:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781559393
