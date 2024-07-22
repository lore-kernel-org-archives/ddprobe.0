Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2516912B63
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721639154; cv=none; b=kpQjEvy0c+WqILTrBT0Zf3R6tKtothWbiTfc6a64LGWAh67x17Y38lai9OeueyMmSXqfrQjufKVAa1NFbXfPLNkOL8M2AdJnboqSXW+RUvtchhCySVwl1PPvy9jFeZm/1tDmh7BBS5paiKE+TwTcswYm8S0tdDpNMVYlETJxRBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721639154; c=relaxed/simple;
	bh=l0qFqJ6XDmgCl/N4Yy4kuj3riDFzLZcwdlC7RFeM8UM=;
	h=To:Subject:From:Message-Id:Date; b=TnW5xCbAw57bUIzc+amkC0TfiX14F6/tL5Mib7h+2y8FwluHez3EDfyiLoSRFzLwq3fPnFMFBP+fiyuqGLZEBLOpFloPRoE7hzzY3hXBRuNG1ixUlu9mW9LF9DwZP6p/IHjkSegbfLsATQK/JsVcIfgC6/gk3NT2b05tk1YnYoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SFesQOMB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SFesQOMB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28CAC116B1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721639153;
	bh=l0qFqJ6XDmgCl/N4Yy4kuj3riDFzLZcwdlC7RFeM8UM=;
	h=To:Subject:From:Date:From;
	b=SFesQOMBudS5XzTkvcGTGYMAqNhsAr2c+wTK6KzrwcNf5ZimPe7eHtHRJfR+gjRog
	 7zq5q1W3+IvHtOJm40Xa8pyZsnW/WGxXrzpUEutxzNYsLzB1sE/lZAlTGV3opZaAmM
	 LoB6UgxLskViVPQ+vCeklmQ1DNbLnWOtjxiNNEVacOBIOPnTQLCV2/63tNKxsixUbn
	 TQuGsmF0My5Wsi91wGm4ANsESSDj00sdEeLsetRq3L1ti4F8xkummCMVp+ijNrbTYU
	 razI/1ta8F0hUxwNNuP2wH5B6QL7qu4u6Xa+eO0tUFKzHoXmxe+kD7vyJwcRXYXA5/
	 APXzPdq1xb4/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DDDC3DA5D
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172163915358.26335.7160819977599006348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6350129f7de8050a183709ed1f1264b051a4d1cb416c22a93f5c879c869ea92f
Date: Mon, 22 Jul 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721639153
