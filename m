Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 214D226ED4A
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 23:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764198174; cv=none; b=Ki2lnCOVHS8DWFYbe4HwtUeybrWFhQT+ApZGWjOkNvzAsv+kawKfq/f7rvS5alv708VwNvs3XVo0DvHoIW7UZwPoko2CDjdGrN9pOkXKlwwcZHqr1TllqzuLpVxK5lynGx0M6TcD+32Ni399pMHBJYCFI7RpdC9QirJBPhC0yuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764198174; c=relaxed/simple;
	bh=Df7Z4rEY8PzcdQMuBfBcLhczKaS8SoVP+bkHdTmI6b8=;
	h=To:Subject:From:Message-Id:Date; b=eBxYMIV7MEP3px9nuvUzcknnXrJ9wSa9wy7XT91aoZ8jh1K6IMQBEGQpPUNWv8kcGNy/KZD4lCuuURXYVhRubdMrgCctaQlpKOeW+kAOQ4qOEjLDi3HM1lHpk2Kb8t/3Lggp3PvOf4PaNf7RKNoIlda2raf/ItemgcJlHNn/+Dw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BXj0zeMl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BXj0zeMl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A4DC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 23:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764198173;
	bh=Df7Z4rEY8PzcdQMuBfBcLhczKaS8SoVP+bkHdTmI6b8=;
	h=To:Subject:From:Date:From;
	b=BXj0zeMlpmIZkLQp6mcYm3hGXwDzPFvZHs7g0B4lYznLUS+lNh47KCJ2Yi9HnEriT
	 018+GzpngvNsqQzlo8vRKA0mlMQXc3uqk72/W/KZVKdE+19TP6GZpOoEoM3ocCq0Ok
	 krG0hg+I3t1o6SszYVvoHSCuphbDNOCOqEmkvs2YqlzcGq8slF01evwSDG5cXdeuAM
	 fBpDErtppWqc2Ei9Mg9uuB7KvbEIRrwTye3yLxuvPuymkv2vYVsKY3slnwCtus1WKv
	 iVorylsVmhuL7FDtK3kc9NNLwZtj7cnlJ8kCJ/Tf3FInaktGXyPSiVCpj8j5uToANU
	 oMd0nQyBwJw/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F6BD111B6
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 23:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176419817359.19262.11964017083868991299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ab5cf007d5159d7e3a421f24d0570dcbb74bc02c63da89c2ba967a25081334f
Date: Wed, 26 Nov 2025 23:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764198173
