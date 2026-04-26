Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E068145B3F
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 00:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777165054; cv=none; b=Vox4Ue2kYpLIJvzA7SQhZ7P4/sl20BcWfkd4SHbxL7Fpn0Zx+L0ypNPbx9EDkHP43kN2C//02kivCFAKoHerUFIjP3hZezLl/VjegwJGG63D8gBItBh3mrPBaVh1xGR62861pUI/plztLE2GhqlE97kDMi0Hg4cFqgjrh8RZ+3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777165054; c=relaxed/simple;
	bh=8bkmt7TCkywJc+8dHFClMXSn9tNlxl0jruJX6YbrHl8=;
	h=To:Subject:From:Message-Id:Date; b=YI/P2ybF2w5et3yuLJD0T78DyquzfVkLdw/OIdRjtNL1b44/e9va5DKO5aMh/RZiWhuXKLRt24JfI7nEVwd+EWSpXYyevlPGOZrd/IVt9nJkcDbjIoZfP0YePL/loxHilgFvD1uDY0JHqchTOtUhAhouBSOnpS00mu+pk4pg3k8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZpCx48Cc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZpCx48Cc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF1C8C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 00:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777165053;
	bh=8bkmt7TCkywJc+8dHFClMXSn9tNlxl0jruJX6YbrHl8=;
	h=To:Subject:From:Date:From;
	b=ZpCx48CcweF21Qp3uvsbEsdZKjVnPI53PqS1+MJNKswAd+vbOY+YMTwa8gtKM5V+3
	 7skno7pLlFr5Z1MZcabWiyrrJ3ZC1aeRQnb4SXfEojrHW915x8Xy4hq3qnywByRP88
	 2b70vCafy/+XObQ7Q7RT/m5wuCMqhFqRVdViEC5lvhwNRmRIT+dL6l6hPGGMo60IwD
	 yZXGzABwtLQ6RDEtEwEP0jvStc6JAo5oRwrDEvdjtYB1H/sf9cxBjqaAu1nELpOomY
	 csjsRO/V6WVwx0c1DJfHfCGnpa0NlZi1hwBKmvSLG11P5roMtoHZr6s5bUtvWw/oOq
	 y7ljJ+T4UtLuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF4AEFF885A
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 00:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177716505368.15765.15958611159543141972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d89de26e430440adb06985d2ff9192384209aec1ac3a23de34f0e9883d1e7873
Date: Sun, 26 Apr 2026 00:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777165053
