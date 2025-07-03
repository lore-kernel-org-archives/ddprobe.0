Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 270BD2E62AE
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751548194; cv=none; b=LmRr+4UAypGBoaD1vsdZTxvMyF27gYnrzmvDwD+6nLqnjf7ZswvvhK3nh5IENW2QtOS6cLljFwlQp11E51U3ytMDuYzYZhfTxqsmXzj4GyhF1RixciCpxd/r/9oxBk70/ABglOV9+ky7ukkqlWETvlIFt20/deviLvoevl5QkqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751548194; c=relaxed/simple;
	bh=sno9mXv0rG4hDRkmxRJImRxKfbORdCf17QFFut7MXho=;
	h=To:Subject:From:Message-Id:Date; b=KByv1b8KFH6z0iGT29UlkWLLOqEpVY/mJE8WMmCfqgro56RI+kEBT/1Wdv+FvCwsgrsVYldepBXZjNRsMRen9/Me2I0rNYRwI+CFZc5sv8OuabefqzgSVMN+sn7cTWe1MIIV+tmFtFKG2I2lOlSh2bqrh7DoSuwdwT3G1yMudB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WrBkspZq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WrBkspZq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E8BEC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751548193;
	bh=sno9mXv0rG4hDRkmxRJImRxKfbORdCf17QFFut7MXho=;
	h=To:Subject:From:Date:From;
	b=WrBkspZqR+WZ/u6MU5WGmMm4xioyUr/eh+LY2qKfCIR2XUl0RZYezLjA/4ODr7KoC
	 YHSz6dWg0Azdm/0BcSFE4L0fIVLljSdyP3TT9qm/tlo2tHl9bnYu9R4IBF6+ZBrgAF
	 iDwdbXUpoqOdNJSWD7qfNNVb5VYZOMQHG9WeTp89lTZXHXg4MShbEcL8XE1sQNg72R
	 hwAnoj0UteIFPSqat1Sva3ggVQzWYx2XguwlWdOhjkrGbynQGeBDobhELppdjVM/kY
	 dIcK/M+6GOTuZVmoDFIPZgoQsLzwH3FkQN1ldCtoGDB9271vtwM55dzTgXUYPqU4A7
	 LdTBYNe2FfwOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E977C77B7C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175154819357.31109.9229070931401663553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d3349b4b99e0247a9c245c6aa68005c54b53cd16ca4ca36e4f2e6940b2a8b83
Date: Thu, 03 Jul 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751548193
