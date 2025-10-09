Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F4431DDC3F
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760026194; cv=none; b=bNu0LL+3U8SckjdjNrb1nTlU5gqV4+FFIlQ/AIDkiUaK5pGNGKgl523fW5fjTF+qdCiN6kl2V8k2FISbrhslNKnQVOLWWJd4Z9nID4oA8ES2uATLslRhxARUCVpd1EtSfCNFdEs3j/1r9xrkRlQL/n8/RXKcT6n5srsB3FMT8Lw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760026194; c=relaxed/simple;
	bh=fmvD2OC9lZiPnuYDkv60/+ZKqsp/Mb0CFBGUMfZ+SdA=;
	h=To:Subject:From:Message-Id:Date; b=bx9VGIKhfiN6m4Bv7yvZCVvistjIb62bLOSUwVv3Z6Gy6MChubOMfz5wp4BakHKtrmRl1zoXg9HDmKfXXTvSvt9uwJA/YHLX6n2CkC7RK5FC2zCq8AfCVjG12BmmXinQYGrmDM7ZQ9ZRA0Ub6+Wb3tpqmeAeRnuQWYNabnGyXM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cv0/zECX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cv0/zECX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0685C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760026193;
	bh=fmvD2OC9lZiPnuYDkv60/+ZKqsp/Mb0CFBGUMfZ+SdA=;
	h=To:Subject:From:Date:From;
	b=cv0/zECXcS1ywChCKGGeiQ1jEaoFEp1ufz5l1BS/PTzLlIKTAhfy2Kq3tAgRGpFqJ
	 h6R+APBRgt5ACHEBkg1mLOV9WwU60GhdzEzE4wFnAhkqLOQSUBV/fQzxMrijo2htpL
	 BKT1jy7gWNMeSxpr/iqgRxyjN9Q2QDlyCL56UT7/p0hiJUdwjOQn4pYEwPopnHACnk
	 1D1Lbuz6ogQWsE0IVYCffFWv/htAvLgLKc3PR3UGTRRVgqDatQx69H27aZ/wqhztxg
	 OOC8cSk2Iz7B/d2930Gbj5SlfCrKxbXCV/K9c3WUXs33OsRQUIqlu7bXr2JS+6G0CH
	 m/qltsrMlJkwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904B8CCD183
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176002619358.6232.3671809703087414075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8760da6e678fc1a2f54ddcddab463062242296873d117504a18562ffa1b3040
Date: Thu, 09 Oct 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760026193
