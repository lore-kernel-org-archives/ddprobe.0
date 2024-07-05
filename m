Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59D60148FE0
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 21:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720214123; cv=none; b=dbSG7nQjPSLGyng6KQOVOQvsvJ2o9h9SSsMThK4zR1Zzp+gGZq5Ma3/DxY4xsShMdcZM1jQsiosVi4G6yUGjfzUB4Wk6ttHlTSAYQIJZHeGlqJ3xjYGHeNLRVK/41N0sMwSdxTXdS9Jxe2xx/tg+iaO0mT/OI4d/NyM+jd3QgBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720214123; c=relaxed/simple;
	bh=ji87rP1Je1tfAnri8KfJ2P/TsUQwproGzuZnnllWrgo=;
	h=To:Subject:From:Message-Id:Date; b=i/0KEJ7QSdxnDEVeuJH772a8Pr5afqtlQoRAkd9tzg0oUGGarnAQlA5Cfe53F1KHfemYe4JIPhpzddXp06jauNyOK6JQ4WSjfrkebL+r92BK09gwuMWMiPcQ43SY3mjieCtV6vNqlln1wFsnXYLx5Cd4GO0mQ2oZlyRcw4NoCFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pfPswLaE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pfPswLaE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9539C116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 21:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720214122;
	bh=ji87rP1Je1tfAnri8KfJ2P/TsUQwproGzuZnnllWrgo=;
	h=To:Subject:From:Date:From;
	b=pfPswLaEXjrA0Rac4gVYF46HMuZYVdfef1dJ7zAUZVNDt1i3nLFQ4XB2bNV4V+iB+
	 y47cx/MzG344PVsxTiBoFla5pxwCwbRZrexGbGJ100t456C4rgghLYXCV8Xsrd7eb/
	 fnN4mbes7t1+XD03X4OX7GrWvTuVT4922NgWHF6QlZxiyVgfQsK+Cut6JR1+8xOzrv
	 EsFKQp7z7UB519rAw7aB5ddlgGAbfqbIz2Wgkq2vpr9y7AVV6opc5rc4HvLUy/gZK2
	 3uyIVR8Xgjk5IrfYCA1RzGoZpu+QQGe+t2Dlr/dLGqDfO7L/0wEjK5fhY+lwe4fZ1v
	 BClzXg7HpTjrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C629EC3271E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 21:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172021412278.13304.8852207383246836017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7aedcea48029e579abcd40bbf4c20d2b05b363e92df48ccb9413b5b155017089
Date: Fri, 05 Jul 2024 21:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720214122
