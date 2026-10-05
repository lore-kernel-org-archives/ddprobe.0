Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 451DF2BE043
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791179434; cv=none; b=S6csHYchccLjWWM7gNVTCbq8HQUqkOZnnq3AeQQlIImbOGgXOOHt1H9yLgkhQEbVXMhDwdsEpzNqtb2dZRKHxEQTwkL7Eg4pgI7kYhp7JZxpan0TjO2w0se8eEfzlKITINrgd6TS2movNV9jyidZKaXEZZZM8lvj5DK0/hynbpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791179434; c=relaxed/simple;
	bh=CXk5bF8ePMzsAPKvsFYQDNTytNY46Mu6snnDaeMi/tc=;
	h=To:Subject:From:Message-Id:Date; b=RVZsJm9fYr770vGs+J80fRi1nWIGE1hegs2v+YF5uZ2rvU8kAdq0728oxxf7Tmk/PhbEj5Fb9FbZ8yMAFye+yuys9abFodMZxImk1sUf0/ugV9lXW3V4ochTWmBMeCFbLPxdDadO0Fyu01dhY4LJZHiMVyaTNLWujvFLET6AXWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Al6SIlTj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Al6SIlTj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DECC0C4AF0B
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791179433;
	bh=CXk5bF8ePMzsAPKvsFYQDNTytNY46Mu6snnDaeMi/tc=;
	h=To:Subject:From:Date:From;
	b=Al6SIlTjced7q/iIx2UwiLRDPYdGIBw6h9KcGc8iczSKz6dLy2Zdzyxmlxb2vGAU1
	 rNLdCWvaOE+/A1c9eVKiiEJuUZOiVrJD2fHKSWjiWEsPCj8WvsEz0u6u+p8uvdPhmF
	 iCv+msuCT1V7BRcKjVm2gbOAQjfvrOfZ2E5Bgjg8cvwwOAHr81s6REPqthj1nvaz+h
	 Apu4A80izP5yScmWO5nXZjMgWhZmkTXPtvYhNBGouiOriEYTp3kNJpjbUvV2fY9rhD
	 7wmv8qkO7DXLyDqxSi3AG4WhR433L14ywOozVhQiQyITbwkwiVvZR6KlcIG6+oM2Fq
	 HXhhKklyOlRrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B856DCA5FCE
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179117943370.523.3016336653372473617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 684c73fc0a6f5c91f1e0747b3eb93b56dd180d266c5c12a18f9c54f64a6f2200
Date: Mon, 05 Oct 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791179433
