Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BA9626A1C4
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 01:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783648714; cv=none; b=ige/YlSvTwyGDUtTG/cgZUm4j8X027BHwvc6HTJcMj/hWnHA3nk11p7D6gljgW7gJQERnzhpMOy8bZfpJTynuO0p12bgzD7jGsWSH5WjptdUpn+/aTdD5I9NfFJQ+2jES1aT/vZ6pb7ugVZUoaj6jJK3l/U/Uy8OP0sHrj+dqEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783648714; c=relaxed/simple;
	bh=f84wU5yje2BCwgo74yqVat79FkX/EW8px8sobegawJA=;
	h=To:Subject:From:Message-Id:Date; b=KVKCLrnJYAylMleWIKNmU80jj7ebHVNbpqHpQ9weSb974zqnidU3DRAdTnAybGitsRQ4zR/UENOIGj8f79kGqbFFPlEDXWzkZTM2IRhlD6AJAR2HPvqXIlGSUIE0hpih8SjeNGyXWAVBe3zaHWg9YVEygMjYePTkp34ZDcWpYuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tBw1OZ/6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tBw1OZ/6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA289C2BCB7
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 01:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783648713;
	bh=f84wU5yje2BCwgo74yqVat79FkX/EW8px8sobegawJA=;
	h=To:Subject:From:Date:From;
	b=tBw1OZ/6q3lmgzAz+pHXF9rf+ixlOrlAQYARtRIBk6h1vzj9OpFnJkk9Lkm9AHXKI
	 uv3PUnNk9INYOGF2ckTKQGVp7ZrQvbuk7tMhShwYt8zfCysVKp8OFJc/gEB+A9JDUP
	 BtB7//IemkptIAGrCvQ2A7vEkAhXJrCQXADtWSHJqMYoLBCR76Qmca71OoPzUDCf5o
	 h/Ex+/wGPw1RcIn/zJaN7e4DbJDHq0BhSvqpc2ADq2ioWll2l0f1FtwVwyK9dBoaK/
	 0XODEza+TZMOqNfSW8o09jv0OBFvLyXJN4cAfTQ8YWlknBAuIydFg9fYm8tIiRtanu
	 U8rF584JHRGRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97E0C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 01:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178364871368.31196.6488682080484318851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe71dbdad9802e7ba4b40fdf50ffecaf042587d12b2bdc910cc48f0e7fd49ee3
Date: Fri, 10 Jul 2026 01:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783648713
