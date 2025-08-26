Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AA6030CDB4
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756248594; cv=none; b=I3NWZ/KGd8YqlWaFG3AVIauq705yuneCZ06sxs0e1a4VZ2gbdCLX2a0aKBkuuXsGWWuQAFYtAGirEt54SbC1/sfZE3olj5AOjyH6OZq94VWJEVLL3XI05HOZCqeluN7DFRvZybLNiyODHWeGkYhcirBG+zcxGqivUvUFnDLY3T4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756248594; c=relaxed/simple;
	bh=egOnLzItvDrvkT+kquYWtT+m0YgXvIOIEuf1/AN02as=;
	h=To:Subject:From:Message-Id:Date; b=Fju9Iahhg4pdEzvGcZMPFqahuGqYfBUVdYMiV59iSPGMHjwIYj7gVX1dmBwoQ0Wwx3NrDAw7yDKMBINea0semAERQoJ3wtdT9V1cBiQPRefAfrvBEI2Wn7OhrcHh1hWb8ujA7fTT/HzJW2bL/LaOshbCPPQka8hG4/+7+gcPio0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kGetZBcT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kGetZBcT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A91CAC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756248593;
	bh=egOnLzItvDrvkT+kquYWtT+m0YgXvIOIEuf1/AN02as=;
	h=To:Subject:From:Date:From;
	b=kGetZBcTyUMtuzaQmkojTIbPRWK4Vr8pHnHxXRYox05k6bJl0GvVsIWOxFq0SbQSu
	 vHxb2SxtpeTg/XvxSy+IBHhkV441mAojbUIeV7G5dAocIpib97nQASy6ClKU2/kj6F
	 Q8FMsKCtmHDDSlD89kiy2N1lwb00rpwYHXtCc4t9X6okQoT6tZ4jkEkSjSX/7aDxa4
	 tuLrzrs4qX+FMAGo3S7edvfYvZv2Uu97B5Ao3XJF8vEuqbzz8p1goOoxLnSDIQyQsD
	 O2VIdfTG98aMYRB08sJ64YGrpHt1Qdo2bSKOzR4jhh9lwJBjNnWn0+vJcMPLFzsBx2
	 mLCQgeCz652aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE9CCA0FED
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175624859357.7523.17253798014481053442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 681d25877258cd7b2144ba4d3a487dd550ed1af9753ecc31f4055747b448b82b
Date: Tue, 26 Aug 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756248593
