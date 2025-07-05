Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D9011946DF
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751759994; cv=none; b=NfLfEupPqlLWvoMcUKETwqyc86DwuCR+4IkcZAcRtGghLCNaCoUn06c4eL3D2tkNMNRfxj+98Pf1/MtdBG1GEziy7ewBgez6KNLje0jMr2ZYBG4708fJAkYwdvqnib8KN/sEQk2NMwCM2vCX+4sYymO8HT3YzSirMA7nzerDE+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751759994; c=relaxed/simple;
	bh=ePjMudNi7zPfohuPhpIgstp5sv7nIK3eWh1YWx2BBbQ=;
	h=To:Subject:From:Message-Id:Date; b=QNRJm3LOJhZ4NFKY2cK1A5hMdHp8CNEzWNYp+rfi25v+N0VqNIyuvN4fKZG59hQ+/0ik1M6Ktz/OoPcwLbnMzyo99GDqlo/jX41Ijd6FFSGvp2XYVCy3J/zWh6Vl9dweK4MAN25xvkXZPOvZJKXT8OvU+YKZmYuBB/uPHwZOxnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l+2+pdrs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l+2+pdrs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3625C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751759993;
	bh=ePjMudNi7zPfohuPhpIgstp5sv7nIK3eWh1YWx2BBbQ=;
	h=To:Subject:From:Date:From;
	b=l+2+pdrshLJQWS66SS5Fo1TOk0cSbW7akm2mEirLlkeTIf4SgnnEfJgfFVxN1yyC4
	 t7lah22kofszJaJSExBkHw65rrMbEuVnaTTjX5cp8G0COh9KnA62ss8Nyx6+k49OoC
	 SgYCnZBpEg64FE3X1Ar2gaFi6mXDQLYqmlZluY7lpCTtEmaaRTmpBGksWQ1OnviXuk
	 0tzJbO42gqpGM3O34oHGMOvsZVKfJuoChPIHJMrbqX8p3BCyDFerCuce1bU4xuCuyR
	 q3QkvT6HFDim5yffoaXZzE5IG7diUM1sQG2oV9DQhFKjKlelW4m7eNugvM6VJNY1+m
	 juq6zD2+D/IMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C76C83030
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175175999357.15620.14784925124814109203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf48e7dd75ddfad1520493cb202bb2540cb755f1550eed6b88616437064213bd
Date: Sat, 05 Jul 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751759993
