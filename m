Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14FBC33C51B
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 09:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768209834; cv=none; b=sai3OuoFs0z9dnTTDsZnZNrw4fAo4dZy5EiKgrHcctSpnVMrAFWVi7pBIb5m6NSeLohclCtvbqkcAAEW3Uy89oSD24egHqs+coqhePxgy33XdclPDVbj6E0xrLGrGZH0cLpv0dop/u88kS9DBwz57Jx2Ri6orkX5xRMaNgghMX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768209834; c=relaxed/simple;
	bh=rb/h7Awz9RNBqhSF0tOdTZKR1XmRrYnxYnJuAF6tSPE=;
	h=To:Subject:From:Message-Id:Date; b=dDOVSrdnJsSMB7Ut+E0L7f7JbyOWS+X9OoNIdfvvxqMSaARWDaoc9AXv0Dx9KiYTfkCgGseamVPMl/0TMUZdKetC429LNZZpOw5UkEzMOBtdP5s/II+5wsWuf1Hpp1A0soDN1zXsROytwaI9FZfp4bYCP9mD+wURJLolKsEMyU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uHahOcht; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uHahOcht"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE98AC116D0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 09:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768209833;
	bh=rb/h7Awz9RNBqhSF0tOdTZKR1XmRrYnxYnJuAF6tSPE=;
	h=To:Subject:From:Date:From;
	b=uHahOcht1gihA7ay7sgCnq8h5ZoY81NkROyQyQ0bgbhhYplUMIbQ75KdYvJA3kIHT
	 ZTjOoVpYMtCnLfNDv4s27M31FOcZAAsMSCWqAwTnTVlRUZ39vInqdnakg7nwTszvl/
	 ZAnbjNRdeZ0m0co+e13v/pgxECoou/iQRausQaHoZau2c13ujR46LVt2FgSQDsKHTk
	 uhHDKtHsEnN5pv6a1GX7ugWiGfCvOTAea9vtzAiUpJroGXXAG/32yDdLlo5D68HsbN
	 Jyz1wsqCX3gVcuAsem3Odt1SWip/FXc1VB06ABW514o2F4QoRJ3h7iTraRBt+bVbId
	 +fPZkvXnAJfsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974DDD2505D
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 09:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176820983361.15505.13687385632420704788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d92ebb57c8a3dd5579e2444effe53273794ff086dacf3b2b17978ff33231d0fc
Date: Mon, 12 Jan 2026 09:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768209833
