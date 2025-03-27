Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C690154423
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743088794; cv=none; b=sHbEH/L6EHvrWnSfrjzTHk6p5OniiNL0xz/crDZKMO9LceUIpkvXi0OKM6yjOAafllOL4z7OStlYj8mTvEaRRj8lpJ4DfMvktTkH5v3wEdWik4HRuiXPTqtO8tjfykENS5dMis+ygpEpyas4D5v8J1kidOvbYKgAd3ZvRio9IY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743088794; c=relaxed/simple;
	bh=flvGEtU+sloJneJ63YB2izCoTPZk5H99jaXGJiw9V6c=;
	h=To:Subject:From:Message-Id:Date; b=CNhhkf9yLPi/bz/oS7TALiP4qDOgXPWabeM3IG2dCZHAnXRzK5fdAZmdpX0pHb6qP2VtnoQpNcRgLwwhStmKTZscTtWfKJqOb3k+x99t/NRIUN4d+BkemE7cqrBlKjr1eIMjCAxHLEBoe9Te0oucRKOPA4uvuhAXsyhXo3K6SPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XVn3a1/n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XVn3a1/n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD20CC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743088793;
	bh=flvGEtU+sloJneJ63YB2izCoTPZk5H99jaXGJiw9V6c=;
	h=To:Subject:From:Date:From;
	b=XVn3a1/nUZjrMWCtSkTJ4SoFXxPsOpwgNAWU1+eCZZ1AhCeuTfzvspbhxsS1Yej1n
	 U8vNHHw/XD6X80821CT84L7rheb2vw74iHj1wOnLIWCz3pbRIwrMlaY+3nx/QaFj4i
	 024htZZM8kPg+q/9WJ00ncteUTHpDYg6obMd7c9b8LYRuWnMEeWiXvUce0bJudbRz3
	 WtwFBab8wOTU+bna09mZvu9DKMloQb/J97NMmjQWLGan2oNpKM/ZJBTxHQvHNr0+AN
	 ZBEwqS+5Aj/bvzm1uAwt1U+NB6DKxFosBKfMHboWHjQtF2iXZATEfdYE8PWuAHhMhy
	 yFUNVv5jASCPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DAF5C3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174308879363.22087.8111127076026593952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40d18db41845225842d251310d2b2c65578a1dac67e9a19c8fe3f491492ceae4
Date: Thu, 27 Mar 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743088793
