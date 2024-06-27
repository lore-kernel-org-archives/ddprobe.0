Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A1884C9D
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 01:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719450203; cv=none; b=SXfaDUOIRSiOPPh1TOe58Q3zBwnKWGLtnH/GwX1dBHEQAOxQeGuVfzWmJuVGoY1h1G67ppwOpOyTMeFrR2aotvB73tKTdauQ8tY2ytCQLt4mQjjQfnHnmiBcM3E1pzOn02XRU5dDkJF7AxAZBI4m4HKCK4deflGRhvr3RPmPJzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719450203; c=relaxed/simple;
	bh=vxy7k8Y3ZbTbC8ySRcGJTEcPIlXUuj5ej96/f0h/XpY=;
	h=To:Subject:From:Message-Id:Date; b=PCRBHlH/4RtgsDe1/igjT0XygJVPB7/AUesseJh/8Sdh9NKK/0ptS0kkNpWjAsMwG/btFh2ZKxUsgUfCV6INs2Pn0ZS8jOcA23r3JRaPv3pmSC6s8rTutsPjipqtPz4MsXr9x9zq5+s9kaTvOcf0RBwxL1YYWxHaz3kOZ6820ls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R3tdZRQV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R3tdZRQV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC2BEC116B1
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 01:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719450202;
	bh=vxy7k8Y3ZbTbC8ySRcGJTEcPIlXUuj5ej96/f0h/XpY=;
	h=To:Subject:From:Date:From;
	b=R3tdZRQVhCx5VWpaKcbCmiBtcvIFqTKAPvSzePePWyDBGYoZ0XDMaKHUAblQ993Yh
	 n5ta0GprOZuxWQQa+EGdQr+VeSBnRhOIbVr8zPgRAC0PRLhMJOLqsihOrKgu/Vho1D
	 8hViYNpHjFR6v8me3K0nqFhvle27p8WHH1kTvVfzDQ6s9egTROpkf8E5uwfYohv1yI
	 19lgu+a+oaMfqvbDIeugbDFd94WclWxtvS778hyeV974FSZxuEhMoJyBurFDZ3rgTm
	 LGXKCbylJf8OAjkmd2ZBblK2oI3Y4iiAoRrpRd9+RYSKCTv488pDH5LqDM8LHpHUXi
	 iM/77vzEh1pJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9F7AC27C4F
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 01:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171945020281.20768.2530253701029457287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25876ea591b06be10915a491d9fe6087b835f1557a360bd36c2441f602e06a1c
Date: Thu, 27 Jun 2024 01:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719450202
