Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E68CC1DB54C
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 04:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778732434; cv=none; b=A7BO1yKXIzhwBGnH4fWhRu1MUkeEIJwQaslkBS28Dqe9dIO2XuiHqiFSaRIxemCY/Ki3Dn9wYt1cV/6VqWq0jj1c9kO9TaMnZAYQFDJrQD8aa70bRe6BGjVVpzNmfyJhr9lBjP+JDrg8aVd+AhMarTcdGHCwfhUNGhmEjLAFV4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778732434; c=relaxed/simple;
	bh=ymtDB01To+PmwQzhgSeYfLbuQmtsj0NJVejSuLx90pU=;
	h=To:Subject:From:Message-Id:Date; b=JlLo2nRl1FUl0OJy636hRCtAEFiZqnp9y/M0fpo8aEBuqqcXBMSSB+/hO6EQoYRkuLrO7IHI8M1pPMzHoi+aDZWCEcAsi+W2YTLDEQrjlk+7E1YVkTGS3mCHb00oXKtnrdXlxgQPOGfoQ2KjI9mR/2cTzQ/WSIl/Me0tSrnHT1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rXJcvrYA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rXJcvrYA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C939EC2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778732433;
	bh=ymtDB01To+PmwQzhgSeYfLbuQmtsj0NJVejSuLx90pU=;
	h=To:Subject:From:Date:From;
	b=rXJcvrYARpGMXIFR6Yu5TzUyiHeFSW8BvxaQK05Wcc4RA7ZHDxvGB91h1OkG553Fq
	 UqTX8mbVcDHuZfxxwdeSPVAzZ8Yd1nclpsuo/+Lib8uDPMfI37EMu9eGtM7IOuRXBd
	 OG157obK/SzaKaCwQT3puJRTCqIdeKQG9GwwhaFdEIkiOHHr5QyERj029r2ASD53Gj
	 D7CgghP5amBEY6Nu6rGKqshTmh003XtLa0M55DgHdm4x1hBEJSOVBLRNq/adqzE+mG
	 CTJ4LfpDvd9HiO7hrDWMcQlJUeyCZ3OR5mMHSyuvIylTlAyhukx1PyRPGY0LAjCFqi
	 09Brq34Angc7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3B4FCD37AC
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177873243371.5799.4946323967571798571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d833868b299dac47f3d80d45515c893d40350e7140c27cbc038d40f63ad24744
Date: Thu, 14 May 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778732433
