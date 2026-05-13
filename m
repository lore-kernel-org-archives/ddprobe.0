Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD2933905E3
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 16:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778688633; cv=none; b=Y6avSFIsoLqVfgI0+Dp2Issva1iriwtwPHePCX9sAHdRmEG9XViz9/DTE0b4H/22JIzI68jGEHV06MnvYTBBWV8nsFkFzVF6LkLUqPYEvOytOsW8+XXOBckP/jqq2h+LnrdzdsRirych6456Pu94vAribq7eKC07/rSJ7j9AUXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778688633; c=relaxed/simple;
	bh=gY+X2lXLiq4Y+Bxn+nW7K5ZkqwzP44LJobwgZCQ0I6Y=;
	h=To:Subject:From:Message-Id:Date; b=E8XqfrwN/j06ujyffrCMKCIn6t03exqNnmLAfdHwYRozHKx0y3ZyuDj/TjhukmHNFndrvl4s3urpAmZ8FyQ/C58f2Ziqoovm0sOg79jsBfCrHn6UeKtS11pwSZoHlCxMSFkW4POOS8fngjxZjutlnMQQuCh4DE7Z6Gm8hJztVvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nd+mGulp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nd+mGulp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7704C19425
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778688633;
	bh=gY+X2lXLiq4Y+Bxn+nW7K5ZkqwzP44LJobwgZCQ0I6Y=;
	h=To:Subject:From:Date:From;
	b=Nd+mGulpNt8UCoOtf2DaETu7nTBA+SID8bdWfH89phmyvhptF7hYKnCA/e+muQodq
	 rPv7RVHCbbp+jYk3UPSmYCwg8JgDkYprXfvUHBu5vS1QrljkVkGn0aQuXdvYfofwzT
	 8eFAIBKrlR9XWyZzpm5gybJ0UlfpStFqXMqAeOCkvBonGHF+YG1VuAKFqL4paV3XWh
	 SeuDL3OuVzDRzcpncDk9SF69obTPJNXqU+75hspNgR3Pvsv4Q8+x9kWn3b1GouBmMJ
	 uDcKqHFKshDtL3vZaOMgCLbU/F4mWeHmfSh6oB/0rXtAum05AsG5nHDQghOXycoyzY
	 Cb97VQx5Cd8OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C80CD4F21
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177868863368.28645.15194792757129391158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f14964349d13fe5c1bbdab8351c26f804c40c97d98deeafd7d70284a54f1b279
Date: Wed, 13 May 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778688633
