Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3494830100D
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 18:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767377035; cv=none; b=Q3RX4mecuo7WY3z1fVkwBkoghWA6Tv1QupZ5ENx6mr6Z5pEtQPlKCsKN0yBkSpWzMSSEl6Irb0CepcQ9RHAwUZR2/Li6pouzsDifoTzPZY5gx+Wo2K1QMQPmtETwTXPjuFrm45nzYlS6pKugQx3RBStz610kdkaO9V/4iDVyad4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767377035; c=relaxed/simple;
	bh=5d92z41xpdk83VThgAI1EA68fWz0xDkHAdfoslRv8Iw=;
	h=To:Subject:From:Message-Id:Date; b=KSdetMLp4O3LBIdLj1h6WOQQmKlPhY6KkJ4QT+3OxOIYUc4qwbv8N1QVjFOgQpffeXqOFWCkyefGiQQXpphtSobp+PPdIT3ZXdK67CmnD9Cj5RLI2jhXAILZbREE9gXl25bt3shqBFEi3Z6FAiNuV3NXzKff2MfRN/sZW+ag92w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V4VhC8o3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V4VhC8o3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70BDC116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 18:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767377033;
	bh=5d92z41xpdk83VThgAI1EA68fWz0xDkHAdfoslRv8Iw=;
	h=To:Subject:From:Date:From;
	b=V4VhC8o3nTV1Un4lGBFSoDI1fVbPOxUamJ0o7azAt/jTom6+SWkG/FswX/xCyl/sr
	 JTdaTUIJvY/WMXax/X+CvGKP4eQMVsa2nUnAdwsr48R0VBdU1XsW+XK/2mn36pY28Q
	 oQNrn4ACrayPa4WPxaAUrOB3CANijGjah8FSq84Y7Rulm0FwmRfqrFSsmU6sUL45zV
	 GI+53GMq+cwcl4D9OfT7mE/Qqk/6vD5b3sf+hBftSyF45c6pAgAwFLDBdn1NBYq4Ga
	 dxZQnRrUseCrMTsmAeirUy/eLfP6Lp+qSlqKpk1q1dcFnqFZH7GUH93J0Bih3FGi0f
	 xsPcLU39Rd5yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91691FA3753
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 18:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176737703358.27993.6925468674160209970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b9c01d6c5675ac1ae022b8b0a14eab2cd592cdf74452435605c819158842e11
Date: Fri, 02 Jan 2026 18:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767377033
