Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 417B9745F2
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725229554; cv=none; b=cH20Ng6RzbtaQlJIALcXtuGH1wV57Exks+xFoGniCQxJbFl+pHYFkOEf3Bvms52cOkVnVM0+jq9NHNLbdXEDMQG7D7W3vG10bB/1gVfbb9rsHW/htypEPG7cBSZ6BQvs7Fd3PG5wljLGdEixoNAM1eBEVQWBPe10Uv6xwRQobEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725229554; c=relaxed/simple;
	bh=lofCBNICAKeY8OOSuxxf2r/HxufTiAV5bvOnqu4nptI=;
	h=To:Subject:From:Message-Id:Date; b=hivAx5CmvWA1jy3W2muSNjAX1wFKei3kpRq/bx/zD3LEidoZzkT1K8uF5DzEQ4dtNXgt9eP4iTK5s9YUIPi3ZUkreZ1CShsBDt0/LT7Dzy3KFCforOIu91nbBY/y4QSsV87v4zXAZj0SV8LQoL0w1ZYUhb45Nevx1NLu84vDyKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LBibGAKD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LBibGAKD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF256C4CEC3
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725229553;
	bh=lofCBNICAKeY8OOSuxxf2r/HxufTiAV5bvOnqu4nptI=;
	h=To:Subject:From:Date:From;
	b=LBibGAKDElMeQNDiCto1RxHdlVBz+fFmm/pOp5cWY9vRszGuuq1ma/4Niw/OQCu2m
	 KfMQb+g8y2XlmOjOFFHzzSSAsRcvnkXlMDpXwM4srGVGRT/0agfykwaTJdhoWG2xJk
	 rPcDbiQu7FwtUzk7KJI7r6tAB8OS+su5C4Gd6dUaXxowkleqCd8AWTOKivDe/dXJoG
	 UKEhM8eagXEqOTWwZAZhq4RQbhYeIIG7JcoSPueSa+ooDG1y5qG4+ZBttfzFiemPjE
	 ZtohiiUocuQW3v5V12+inppKsbMDhIXDG/HozY7qMptYQvIUgAQJy/0bdel6C+aHuM
	 DUYhhGB9Rzd8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB6DCA101E
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172522955359.9335.7971192199049889206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3ee94a050a0e555e213657260b0aca56a801f52cb1c89cd9ee328ea0fb7d8ed
Date: Sun, 01 Sep 2024 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725229553
