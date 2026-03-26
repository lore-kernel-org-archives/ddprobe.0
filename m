Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D2DDA92E
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 03:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774494294; cv=none; b=jDybCFTdhZI/tbjIqvKSQt+DsW5tbE/76ZVF9scsFko/jMGYkot6JqPh4nceH8NAQdeJcotuAQepM/xjV/sGStbvaMy7Xg5qgIZi5MPRYA3N4ucRRewZZr808k3ujNAXDfQOjBgoW+1ekm/ad4iRd59RlX81BBsNuwy4sH4DY9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774494294; c=relaxed/simple;
	bh=KOIDZ7oE+8L6l20GYEWeqTKL8H9Ia1HkMPc6n6wmL4o=;
	h=To:Subject:From:Message-Id:Date; b=O4qo22w+4QLk09Ddf295WfOL1pXmVvIFu3fnNEIllwSwcLhe2kvqjyirXndmoiz9knLwaS1EIUtyydviOUOT4rwJHcFjXvrEaFSd3Q+fDKDJC5MXmcc9CGCr5OE0mqufOFMJjQhpwPNZUbSRSeiXmvi+gSumF8UqVbW3c19vl4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SLfptulW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SLfptulW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF0CC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 03:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774494293;
	bh=KOIDZ7oE+8L6l20GYEWeqTKL8H9Ia1HkMPc6n6wmL4o=;
	h=To:Subject:From:Date:From;
	b=SLfptulWYXxm9sdX/zJ6w+rzeZcjKXH9WWX9cja9e3Wp637D70aMS597g45IbJTIc
	 XQrQyDWaqXTZxIjTa1o1CZTezOgu9crFFElecPitFQ8LBm74psgONw0fq0c+4RQA/G
	 bw3h6oc1p16cug7Hen+UTZTXTUArvNNCiJihzPKflEqxJWet8CWyYoHV2dKvWDFpFu
	 pHWvQL8f/UAQ3r8zH/xbhz3beo+ts+pRQeplVcybDiAq4qLKrBE2kqhQtqiOtOqM+R
	 wLHRZiV01oXEy/9AKsLWfwOuGJP/Tz1/f+DwIXDwWJJlBFncGHF7uHIwN3EdCmGyFG
	 Zu7x0mg+kpWAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9925D109E542
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 03:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177449429361.8940.17549249420276372565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a87a20a25359b8cca6639203275c13683a7fdcc6ea47d82cfc568043dbf2e9de
Date: Thu, 26 Mar 2026 03:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774494293
