Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C16D82F6903
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760708393; cv=none; b=akw1ww2jgQudJt/UqnpSQzdRntIIpxcWxyjfZySnWB5sUOxyxSl58M4QezV2n/A0TjkAIe6amEdgSzQz4WCxEWK7DkOlNLRVAakQE5xNWPOnK8sR1WPjCIqHnim1cOCBzqCdy3XRVVVYii7QvXpIPHKg/9XXbexEmRMsOYs2sic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760708393; c=relaxed/simple;
	bh=RGkN5naod+wkJEN76/leXWLBCgwutKfcdf3v4C6+fzU=;
	h=To:Subject:From:Message-Id:Date; b=A+5JAPvf07yWk1X7qffGkUZ3CrNNZdk1NZA0SmN/tWskLOnob+9T8WBzW/R4UBt+AUTsmYtxdgbcGsjh1MM0+di0Vl8etUtwZE5POInNCNwnpGxnF1LnfMAHZ9o00cpd1REodENUMr0Ro109fGrqLQNvtfsRWcHQ/HVUh0TXSuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mLdfRlMh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mLdfRlMh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27F2C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760708393;
	bh=RGkN5naod+wkJEN76/leXWLBCgwutKfcdf3v4C6+fzU=;
	h=To:Subject:From:Date:From;
	b=mLdfRlMhgJgMGDD1wHGyZtTrvwcEerCsuc+RNxcewZbeH1H0X9BXT9oQjFfNPXEaf
	 AhBTESuPb+eQgH6XuFhju9XQEb64htjAbTU9sdTwF9vuQKWkxImokafUt51YgPdXVY
	 vnGF3TyDLZzeCKzzISv1gY+x2aZ7dAGpKEKpw4bSilU3WYgQX4i6w66AijDRne/kQJ
	 glQ21Rd2Z+/Y6dPU6jmF0+OGZ0QPAcgmE3R4oMahgpVNghGz8aoUPLQZnewMmaw1tB
	 95qrgPOqNS55BGGujJLjoXhDxuKu+RcG9Zs3zpq6XnRPyrxS4pnFgFrOjg2/8ZQJGv
	 1fSGPl94ao3MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BEACCD199
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176070839358.31785.18367572125375907733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 334096c8877f0955992a31473e7bb6306aad9e65c5740dc67fb81aea485a43c0
Date: Fri, 17 Oct 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760708393
