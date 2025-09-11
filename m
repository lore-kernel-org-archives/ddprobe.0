Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 233C2337688
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757599795; cv=none; b=FEiOFPlMvyM/9ks2Xs5sqU6KBXaR24uIhyyHWsJBu8yKIYO5fKgv0MQhaulIdIolub4l6Hys5gmTvEhmAlnq2nW5xe02uh8ZFYkFsPLBz1Hcmz0h1U/QdG9EvgNhonjPJSzhMx1Q5E+Xb3GsJ8M/aBXxK1VdcUoDyWT94vNxx7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757599795; c=relaxed/simple;
	bh=KhSL+/a5d5nJro9hFBdI+tWoDwGTw/TtDVvMiEv+Wow=;
	h=To:Subject:From:Message-Id:Date; b=jO2nbBEJFrA/SQ55k5l+dJZSDZwPKKQ+ePL8AyBTQGMlfdnfLCCfrI0weOH3p07VMYIcjvUpUHeo05MZSBhT5sfn6N5ZiQMqmpWoOvIF+kduRnpWAJZdoPJqjY6TDN5Aeqy50ba/15SUVqwPecWqy3ITj/eAfH5Ww6O3dfuxK7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bUKceSNH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bUKceSNH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30F8C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757599793;
	bh=KhSL+/a5d5nJro9hFBdI+tWoDwGTw/TtDVvMiEv+Wow=;
	h=To:Subject:From:Date:From;
	b=bUKceSNHJlyq5Q1f4WWGOmKTFfXwMsCPaGeZUBG7Xwy6RZzbCKqNrV9fKomaWrUec
	 U97koX1rkRytv/Z6WxQVk/UrykEUlb0ZHP/u0GR5pKMAQXU5hCOsuOHomyM0p5xgUI
	 pXVPyaG+0ouQdJVbno5x33RVkZk8AnHX5IZtF6AzKhYzx9kEF+pwtNhsWwLfbkgbga
	 JBSGzdHfNh8N/spe5SGxxcpBW+7aBih9NTa/kTm2uIfpjELgvs57xRC6aoXimqRqQz
	 vHlQAcr3ufdB8XgwCnVxmB6BxN0j8I32J+0gPDroFV4l90x/XawF40LOpKEGkHunG6
	 U3vGft4r6/ySg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90179CAC58E
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175759979358.20211.3053917491216913298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: beeed57a6004f40832bbef9a31410d10481c31b3cbab05c0feb9871125d5fe0a
Date: Thu, 11 Sep 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757599793
