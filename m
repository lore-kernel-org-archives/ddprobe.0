Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12A482BF3DF
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 09:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766138034; cv=none; b=HOR33AO1Az92CipzGVME1sKGYjMi6N06brKa8TUswhmMsiBvOd2F7SkDCf5P7d2aboqgv00BEj7fAp45T/vNvTvMF6TVFVsRJc+REDtT2lZ9/5LdLOTv/RM3dGY1759I/G3JY2Da2x36hCVRtvCTgjnEROknrF+zVMAFhU4u7Qc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766138034; c=relaxed/simple;
	bh=DkBi21uexSbEV8OewEN06ktP0b3EOjTyEaAk0rcngbI=;
	h=To:Subject:From:Message-Id:Date; b=s22kquwDUyqWdycjWgIXYJKZSNK+uj5fm1zPQVAAbkDJawD5QuyWgCnWAqferciMzGr5vkSUWxKji6au0IRMT6yPNehSVt4T2E/0oNFVBOc2ZimcLyMXSok3I4FtslENUU0B/ekE0VU7YOLtK8ZpRRXRvcckg48GtZ2BbRERTRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FrEnRQk/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FrEnRQk/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD22C116B1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 09:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766138033;
	bh=DkBi21uexSbEV8OewEN06ktP0b3EOjTyEaAk0rcngbI=;
	h=To:Subject:From:Date:From;
	b=FrEnRQk/CY7VUwVYn6dt30u6qmrOSuM5XEK2FBDJgLChcDEubGM7hg2IL32lRHQJd
	 DzeNbTmAuiVrEVl3xc2PrqMr4qwyGxNZuHSUctDpf/Mqhs1YuEnglj5Zuo3lAO7jLJ
	 vy9ZE4gDKfruBvd/ZNgvvWoBALJnoTwdMB4OU9gi+mlftTtdwUsZ2BYxjCcikMfIkE
	 BirhtA/4NKtbbce30TJWzcaa0VEp3LKOfwpOWddtNjCFLIs8RZ8MDGdOE5rFmoIoEm
	 wiFwZzanIyWLcxzKiF1KJPPufsWaiWWBgbIf6txaLdLPk1qwSwj0kuK53jKBRfFYSP
	 SRUQ11DtlHKNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAAED74975
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 09:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176613803358.19850.7486804106062304792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b93d50142a3b62c2f6b6015853d58d1dbe05510ee87384f0c5ea0006a2440b6
Date: Fri, 19 Dec 2025 09:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766138033
