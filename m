Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43EB91DF981
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737327954; cv=none; b=eTmsJH1uI1/zdzrZ78vBKF1RpsOuaRSd8pJS/wpVCFdk4DRp4ocbqoO2YI5wtUm+I2JzoqqIeeOgcEaLJvrRVJM4OfWO7twuKIFNwndgQz82l29OZhA2oSkcqvAR859xlxgE+vuRyk/mdUjqGDNVMbneixFevm9kFZqpMozAvUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737327954; c=relaxed/simple;
	bh=HX4ak0K+s4uYRwoedMkk2zIl8f2rHVh71TBpC64aZD8=;
	h=To:Subject:From:Message-Id:Date; b=cuPu0/KCWGOZBE9nQNjWur2yhSggIfeKVRp8T/ShVFcdRemDHcYbA/bhI81+erHF6ZGRKsWS2hy8BDiRskOFIs3QIy1FOUkdPiU+kbdeLosrZa+cJVU1E2TTsWMe8cZSCFZ6bPUCbGfjdCYm/icMYD9QyOdcM1Ss1O+0nOEPHu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FIEFXd+i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FIEFXd+i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE277C4CED6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737327953;
	bh=HX4ak0K+s4uYRwoedMkk2zIl8f2rHVh71TBpC64aZD8=;
	h=To:Subject:From:Date:From;
	b=FIEFXd+i2BG2S3lJfL43YJiq8Iu2hmreILQHu0qLOy97tO1EodOnmBFz9fhqPQV/E
	 3nH/JBtFHpcCzbqhhkMphdrpzxD+0B7aoJnKydzIufTdkFUPyxoysmw8joiT1x7DYG
	 /O8MAXRpMEhDpGufjrNqJ9yvZmH7+g9Bj+NlhKqqIZaES3pX8dFLQP92zS6Prn8eXH
	 Py65usQiUsyK0dejutif/ZmDNWvMP13YTPrOYPoBCCFUQLgUdWEmEk744u7ghz2rTC
	 772fMoNBkpWyzTJeUUQlLXi4ZcE1FWDMwzTQGKYs6XUpJhCOINISbA3r8Xbn8Xdo3r
	 prhKhbcIpIe3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BC3C02187
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173732795359.24349.9564739184392372507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b600ff39bd7cab2b4d11f91400acb6ab12106d07e450920792bdd109847e04b
Date: Sun, 19 Jan 2025 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737327953
