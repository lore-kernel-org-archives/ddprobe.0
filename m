Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D26E44B4873
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789057834; cv=none; b=PTXD2oVN+11gacD5CrhiwEbSeuzYfTxhsROa2iTIKf1YCduC1nxEB1QhccADeWeSOxDRetOkJmm+Uf5YJY+vM8rZhI719T69EbS35oq7gqcw/nu2EEElYTWbaOK1Ug+49wfXQE9x1NXIEuFTssXJLFIzOqAwemsNCwKqr4ZPwDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789057834; c=relaxed/simple;
	bh=7hkQsqTUZ111eqI9LCAG/Ttcg6/B5igU7v86oy3JwZE=;
	h=To:Subject:From:Message-Id:Date; b=PLF+vobUuh1kX65jvUJwodPbGgpTyGU390VCFMcgXb2eTJTRwBxo2O/ViNdE3TJzRzs1KxXEqh1gt8v5QNWkOyTn3yE/n/sdIoxQKhofIU3Ve0aL6S7d7Na/UJcjehH+1Ah4SMId92aCk2JRzPKOY/N/enL1ub+2v5hhakYNI1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cGAtPMOf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cGAtPMOf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A82C2BCF6
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789057833;
	bh=7hkQsqTUZ111eqI9LCAG/Ttcg6/B5igU7v86oy3JwZE=;
	h=To:Subject:From:Date:From;
	b=cGAtPMOf+34RzyuhFGWdJaiZ7icpV9mTKU88jn9c4Xt07t+feA6jplsC0dzK1WznC
	 o6fagzIHlpiZB70ys0gkLVK3YSC4elvzjsIL/f1P8rGl/6gPKxwOXK/FByKo577Qj4
	 a1tA3GTYhwe506Cykh2jNIRuzeVNguFnjIDUGj6ECP99h1Qel1vZzt7C9nUCgGkJ8U
	 katwNULW0VRmj+87oWmwZXwzy1l0P/8tfyrzZsKUn364rE+0EHzID/ayd9dnINDvoX
	 YnaqrFO9nOvHhK2eMcO35ONb5xRjti+x2rcLftsR2twBV8owfoqLZ7yKwLX+//pGq1
	 UBhTNNoGzuhyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE98C79FBF
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178905783369.5132.117912274338202490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 304531fe8c1a5986fbc405e270ecce50d2a631151311cc914e726dc9eb51d923
Date: Thu, 10 Sep 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789057833
