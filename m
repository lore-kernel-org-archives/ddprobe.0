Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B55E13790B
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 21:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774386294; cv=none; b=S57Rse73Fe8A6SsK2xLstEHt5IPVSVHMnDmVUhuJK8XjJDaFRI4PZ4nkjLiHpoErdeR43to/aYI+n+G+VmUAk1dJY6OKBBlXxrEfog0BnaIpcd20xxYn5dUv3zuNPANxq5tOfTCIMIAsfBx+9XBVmMSqiK+preKptSF7fTSu08M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774386294; c=relaxed/simple;
	bh=w6bbA/Y1lu2bYdEACZZQirnSa3OeRaphPwvdmWk0DQM=;
	h=To:Subject:From:Message-Id:Date; b=CDbzbDvvFfeuHmt7AxfRb67Pf397d/AvFiCJc4Lb8qPqd2pnuP8m2ztD5Y7p4tzi5azsH2rKm02QhOHGbQ1Cxh5POCeHB7w31YNNbea902RW0O/Jvf1X9Xgo297yGSfmQVePDIKhmWfPq5Ip4rCnUkLjROR1dzyeEazPIrtMUbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LtEQtPYa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LtEQtPYa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD0AC19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 21:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774386293;
	bh=w6bbA/Y1lu2bYdEACZZQirnSa3OeRaphPwvdmWk0DQM=;
	h=To:Subject:From:Date:From;
	b=LtEQtPYatwbXLCU/4njDkTTfAa1fDG3dX+nw2mcYBMzNtvO2B7Np80a/azGI7PA6z
	 +pjvFO0EQ6pIXIlP/FD2LIxCs6rF8it+Ct2NC1ZrRUV7oq7QDQb/+R8Co3nT3QKcMt
	 nIHKAgKZfZJ+laKTl4cZRVr4ukjcB/4HPhUBsy0aGrAqLPXzWglhdo1hZei0NSqEY2
	 SMMJdtxSAcHcQwJRHPEtRh/b8F3b3jDNIab1LAtkRXLvSrFn4/QhHnJAwYa1ubD3SO
	 /bg3NLUf35N5gZHVsL78tvXJK5jxclPkaOPiEz6VJDwdNpVBqxMTBDa9oIhfS+5fyk
	 /SNpmuxtWQFJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B22CFEC0FC
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 21:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177438629361.4561.8001085512157066409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33b0b98244d70aab8a8eb574c03c32eb84171479b0f1a545b98e5dd365af0588
Date: Tue, 24 Mar 2026 21:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774386293
