Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11C183EA961
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 16:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779208834; cv=none; b=R/KbfxRR0UWrZCO3uVHBH7alCj10qqqT915oaNOvIfYYTNPgefWf5Z1aXsjXgrvIhFBqU6FPPyW5vGK5QxPphZgsB7JRGv6F1o0O1l4/CnwdEAjprSfVq9S9f4WG45htvwFWEFrev1+wWDDBjRPs4jyQLAZhaBQHKXHoEIElVwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779208834; c=relaxed/simple;
	bh=EM2SUlaa8gOWGROLekbiCpwcQQC98Ec2/6qaeZ+mIjw=;
	h=To:Subject:From:Message-Id:Date; b=XdoUc0aMRglOo7JmFKrbOJh0OVGZkZ0C6gHvT0VFvDIxKDAqHARI0ryJDB2cOyqPwDVeYW5QZo+aOWFu5WyHMlW4aXDx6+sAYykBMcxGbpMEuhKJAMef38uXNcX5NjO00FsTAiYDKch35ljiYBaWDGx0wrq+v1NucKFSq1UiMPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jQojq6vs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jQojq6vs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB057C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779208833;
	bh=EM2SUlaa8gOWGROLekbiCpwcQQC98Ec2/6qaeZ+mIjw=;
	h=To:Subject:From:Date:From;
	b=jQojq6vsNy1AabRvMq4q65X/QdFxdD9IYUWfUMtlPEVOkDuIxonpSIppqp+FLZdrA
	 SQANjaxNFt8UB96G78qCeTBLoPIANqV70CLXKhInhx+GUOwyLc8em1IWQfizBa02w2
	 Ezkt16cqvUy58QQbFwa5S29GKBW1Wpq129PQZTu29mGLZaNnN+CSUYHREdwe3WeBXG
	 iV/HU2aeSh5c+FWFlE6sWP849nuDhE8CsQAjNY2a+6UuUtKYNMWwOe53SSkBfI83Uf
	 f+L0Czr6jDRjolaIMG5Cspr2KTiXfsMWh3/yDFTvOXz04joZYLl0V0nIocwy3PDlJJ
	 CHYSy2ghebddQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADD8CD4F3C
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177920883368.24803.12049067607801855283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cd1ae8c3424c49219376323085c5a80984aafbb6590169d0faba7ffdefbbbdc
Date: Tue, 19 May 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779208833
