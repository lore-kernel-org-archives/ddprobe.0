Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68F841A6806
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 23:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783897714; cv=none; b=VBx9Vh1+VZUL9Kz8MoDO1oFbN43mu6FYwFbIj11RWRfu6Ohhg7w1+lvK14ZfqdHdxieY+33uV2MZDcb1sTizSyYBontoCLYkltPMDWPUI2VQk2W6GIinuVpGK3sM8Tm5GW9zmTD9JtEMcAOqS101EVv77MWdNTGWlbjqXr/ty+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783897714; c=relaxed/simple;
	bh=EVcn5ZoS+8TE116AdJgatCLyKaEDZG7bdyo5BanG1D4=;
	h=To:Subject:From:Message-Id:Date; b=H8SALcZxwdNrPrNPFz4n/4Rh2pBMiNtUSXNfMWJJiCxGRKaPzjcfrqb19pTDBCTcMbS+kNTYE5woo0HLexOK6ozlMQRIFxc2kk4oyAzmYx9IWbwK1QG9YFR3eWkPhzfMZlTBq/BEP5ppTEH1OQFioUJIpzyVuqU3yp3tqZsnaV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pzJaQHaY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pzJaQHaY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBF27C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 23:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783897713;
	bh=EVcn5ZoS+8TE116AdJgatCLyKaEDZG7bdyo5BanG1D4=;
	h=To:Subject:From:Date:From;
	b=pzJaQHaYca77WweWvnIC1hpX6sTDU5gQ1B7+Cs06aa4Zc8WqytV51WqsmQzJD340V
	 yj9pXcy1+Rbt6n3dCTNaWIklk6rpZTmuQMGHzaxvS5XrtM3VPl7Je9Zxh3CCsO1XSa
	 Z/Aa4hDlHR6csY+8ZomkxTR++nI8OwXHrn15MD/Ekg/kXQnVPSGuw9rnDjrOgPCAts
	 3aHs7LEnWzIO+6Z0TgMw8lzN73HV7XxLNmNNNRfyDhd9PI2MctOxSy9MM2BhtP9fai
	 GOXxn9yio71zXQWrn7VbuhPd/EP22NcsfrZ+bkcKdbp4mF18yleqSMeXXZs2d9HcOI
	 /FSJZYvPKWPqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2D9AC43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 23:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178389771370.7506.7666563725804169470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc5bb557285755de2f8c0508df5aea7a597eedff4b8d8e5536cc14c43b711327
Date: Sun, 12 Jul 2026 23:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783897713
