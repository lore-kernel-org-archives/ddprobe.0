Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30BA9283FDA
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747235994; cv=none; b=ud63QGWxi+jP48qNF5gSzihEqd5pS2ti1ejinNNNTFlm7ZyiToCiPjGH5ml5U4PseFwbz5yxAffzljHIYvkJLXD0mjiWuCT7b6LoZs58AVoMNs9kFxHVXSyJDlOUznJLLH953fB/eiKgpSo30uchZpPPdyXYFW5eaqstO1NL8Qs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747235994; c=relaxed/simple;
	bh=IwPaLGkId7c/zw7mEzviveZZw/aPGxYpX6+2gMCLpTg=;
	h=To:Subject:From:Message-Id:Date; b=hDugBPZBSMaeflFgpjoLLa9Yw9+h85O+wS/N9LsyGxRX51ADLjqslQGEnd/+6GwIPC8LU9Wj/z9JdoENjAdJwiEPWsImt8/6ZV6hwoBTdFdbFDlJZi7v2IC/bAaRS/HxbiQcvZO03YlnmR2EWciRtG3/iuOAsRQnOtv4I3y6S0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kidTvHiq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kidTvHiq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F363C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747235993;
	bh=IwPaLGkId7c/zw7mEzviveZZw/aPGxYpX6+2gMCLpTg=;
	h=To:Subject:From:Date:From;
	b=kidTvHiqJ8jDWJeBAeIjSArZN8O2y0l3iBihQNbfPhNBr+oBVDBA8Y2h4wWu6wXQR
	 CQOO36dyFUf/Z4giIXqUo/32P7e6uqdh8a4/qoJWIbkSgDJtvvKhHJkDXvrXNMvzyd
	 LiZqBPwlM92g0y6zxz5E37SNTpnIf++M8llo+FZTk5KhyUnUjMSRDYP/revHPevKlG
	 o9ib+jIiZyCjltFX5HRI7UsFcqHm9MJcbpH3mmEQIt+5tV1XyTr+vzEYuy7n2tTylC
	 Nbdz2tqOvBeuM2JAYcOLp4B89F2CFxPdGbH89Gx7+QlnnAsi9+kOgi/xw2vYmqlXvt
	 Li+TXCKt3vk+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBCFC3ABD8
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174723599357.4483.6776309008407323197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72e92fb55faedc74aa5f457b0b814890912e51ca548c9ffa4e3d45cefee92f33
Date: Wed, 14 May 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747235993
