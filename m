Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5263F26B2AD
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744960194; cv=none; b=Ug0ZU4R6mLDxeD2kzFA2VqfbTYSrHBiw20Lz7owHMuAlCeHq2J07eyUEdSmvkCcc1C4uYVMG/EN3ytK4kv5xJsD1yX1Hfd7s6jK/a0y0ZIEJJlosERB6S6VM+qlD4lMrJne3Q9zwXCGTM9uX0za1oN1fJ27VTEprLz/mo829ulo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744960194; c=relaxed/simple;
	bh=WUCtF6pQKKs2BKhuHFmtzhaz0Tvywe6ZVS/jS3zfw9s=;
	h=To:Subject:From:Message-Id:Date; b=AShpEJGJa6SkxIPBIdinSYOBE2gSfPHydCjr3ZDeF+rE12+45fyhFDF3oZb7VN4K99FXhjZjmSb+54pgS7OD3o2Tla5pMdEN6zfQR1mlt7ZthQyKgKjVTp5FLoNlJhxvYQjsoOQfli2NBS31EmuLm3VABTqEPeohQR6+67OtqqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ja4T0e3R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ja4T0e3R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0206C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744960193;
	bh=WUCtF6pQKKs2BKhuHFmtzhaz0Tvywe6ZVS/jS3zfw9s=;
	h=To:Subject:From:Date:From;
	b=ja4T0e3Rf19VNPfwFOvsLwDtGUxQLvx+Rsf2axFWtcr2kvkyc7qdTEbU8Iz1OcpTv
	 8M4Sd7TAT7ZTotkn1AoyRXWPlcF2x6Ce14j9YWX/+3q4Wso9l3KK75vzi1L4SLaPoG
	 Mg7PpqO2aFI8dXBe8cESfcl7f3TlO/L+wM2GJ5gk38DcZt3wLdYTk+03mUJqrTkQ07
	 n4YBOb/q5GelDHU7wq73PIPN4rB9jfWWfvLsrfqiDA+6v3Xw5GVo0DH0RfXu1fPkGd
	 HtZNPaujGea/kPF0R0i10W7ALeVn1AthXMvTJcsssddFgCPrPHD/sFjisYQGyx74ON
	 kuH9CglWjZmPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF36C369C9
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174496019367.32347.6567196796173775511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bae656cf6d261bf19ebb2e86d46221d83cb04c4ab2b2e8a43e768610ca30db8e
Date: Fri, 18 Apr 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744960193
