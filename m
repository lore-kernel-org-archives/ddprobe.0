Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1813A2AD0C
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 07:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769844234; cv=none; b=dooiBjfRJXdxj186d/IZquC8KtVx4Y2xU8w7XC6GAfdNhgv7dmRYq3TOko0E6SBoQnPEkfwZQD02R56Hj1/Q2+01JIab+ugh4d9hevXsIMLDx0kjMSCCsc+fvs6Xf50sJ1miRW6itqIPMx6Z3zVB1PRuCJJjZq/vauicGCSGlJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769844234; c=relaxed/simple;
	bh=beNErpIZzVNHBXlY+IP5oYFgSaOkEeMh7lDysNk8QzM=;
	h=To:Subject:From:Message-Id:Date; b=E4uzIS73C78pXnQWoWhYsi5eDy1YzZap/y7UANA9RHfxMUFxPQ25Z3i93sPKeqt2DW6oKJfTjyaciFRHVkOHpMPlZHMM41kb5Hn8zn4CveKYy8IiE314r4B0zO4Af+WH1DPku7R/MDBDbO+tcZhU4o9p5vY8GGEH7scuUk31qsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N731tDY+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N731tDY+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC83C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 07:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769844233;
	bh=beNErpIZzVNHBXlY+IP5oYFgSaOkEeMh7lDysNk8QzM=;
	h=To:Subject:From:Date:From;
	b=N731tDY+ThsqBeRGh9Zk3HmSAhkM9Y5VLx+y40GwPtcA43IxM/uufj2tdybZzUprf
	 J9oeV+ZKmPmobFR/527ChqRZQAdOciw5T0Bqq8WLrxqfXvJ41GMibggc3JUQ5xSwC8
	 bpPH6l5L3wkPeuhQdOf9MOqm0xsbve0hjorU4XOoYNVCLx9ay8/OliQANRMgSIkDQm
	 TFOoLbHkd32RiFgy8loPVBvKlRLuaAbNjUKxDRjMNq7m/pwmZwzbMGV5MWZ/FeB7Oo
	 mP+f8LV727nJ6qYjf5HdJiCGruHTlVDAJ5+wP9hYc5K3lpiWa5WxoeEpZNbr1vwMjV
	 XEXFYM0LwYscw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA9BD79744
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 07:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176984423357.27484.18051459957641532172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fae09fd6e0e8c6fbb053a953f09824fc75fa178157e12e87392557bed0084b4
Date: Sat, 31 Jan 2026 07:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769844233
