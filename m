Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78302184524
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791936634; cv=none; b=V9ZTk79pfs7/GqlNz0+KhmK1XGB3Xw08VLFBuY5kqjjclGU4bwRB+wbMQFZ+hSBAgjAbko1KGk2aFtQwl+uAilXHfWRuWrcSpNloBuPPvBoVwfmseqHARduW5Sf6iLRG1C+68nlLgqIHHT8VJl3WZjn+48O1m5aagMSqv2NVd80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791936634; c=relaxed/simple;
	bh=a9v6RPrXaBOkJb3gdhoAyykFMsV0EYiZQhSgMEV8xsY=;
	h=To:Subject:From:Message-Id:Date; b=QBTFiFyZoRHW0VuB7U3fbOQLHl9Kti6+UPhkLKEfZ25anzVzfvf9jK/S5XGkwRnAZDHvis17ZysWuINuMBuZvl3qZ2bFGd4fPR0zZ+xMwUR4p0rai6HyWm5lGNlXQn3pRG/qnaOeviPEGHtETVVCdm0Rjy0GusLEVI8j40ndVyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lFEilQxf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lFEilQxf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3FEAC2BCFA
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791936633;
	bh=a9v6RPrXaBOkJb3gdhoAyykFMsV0EYiZQhSgMEV8xsY=;
	h=To:Subject:From:Date:From;
	b=lFEilQxf/S3FFRp4HUD2HVMyQQt59T5V4/IyMsAtCBZb3qhXSzg7juiOqQdvtGQS5
	 fHKcHsDILgnT7tuR3cbUBIR0vY9zqzazQTjF/Jbbs3gB8q3HhoF8/Ry00PoJytU7PI
	 4NYOJf9/p3kQYhUEVp7zJQwh0Nv0jT0Vpu2KZp9F9LxmFEwcqTxDhFDCgzxfDqnuRu
	 ru5FKDXmpaVbDu3CRoNzfQGiYh+g9mXANjSBcg+lGBWMs1DJhhdAshZ6y1l9ury01N
	 0PwhtfnZRNn7ZMuVDnJo2HvyGsZxJsuNvY92iRfJQuXRzfPyrCEk+DZGARz2ju8ptv
	 U3JFXqc7UonBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B013DCC6B1D
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179193663370.1340.14669400369065723094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35d4a50f0970eb9254d2ddb37d1899794d1d881756eb3b3cc2331715c0586b40
Date: Wed, 14 Oct 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791936633
