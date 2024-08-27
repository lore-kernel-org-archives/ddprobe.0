Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25A4619D8A2
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724751954; cv=none; b=I4RRvE9JAf0Enw+qIoHh+ulznjK7H/ClKd35euT9reCrpiaNb+mycBWpz8VkQ/i/GWTIHLoBKMW1KogC8vMcXzBVLni0HK86tlpVsj36kKCx3TImih1wPy9MM1GFJP6iOBriJ8HBFlhblhHSccAtMp/79b+o6+A7voaFRh/AdjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724751954; c=relaxed/simple;
	bh=IZ4av4KaX8OM34LO77j3u+Hnb+4OatXZ5IUok/DpSKA=;
	h=To:Subject:From:Message-Id:Date; b=Z6gkrKEFgXggtIUqehcSKWzH+onvEjNrlt8dM3or7v/rbFudjKTuSPeC8uqKOcEFhYmNuFTfccm8vVq4LY0GNJ3TqSnhfAv/qfxVReR1r5ibf8kIsKKoJFX0EcG9VPazWl9fKA5Astzl1CtQIntq6e+QkJAgxF6NmCov2lEP/cw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kxoKR2Cd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kxoKR2Cd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5ED4C8B7AC
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724751953;
	bh=IZ4av4KaX8OM34LO77j3u+Hnb+4OatXZ5IUok/DpSKA=;
	h=To:Subject:From:Date:From;
	b=kxoKR2CdAya4o9Np7C2Qo8KdaAC+hRtXCymyiYaFWlETP4FvV8l3qSh71dCoIgiWV
	 POfPWJrx2JUClXIzkbppUsCJUXwDvSPB1vO/yBSaijZK7bmiS0mPYeZOV08Osw4Zxz
	 FohSt6D5vmajgVByIC2oCEbDgXp6dkBkBrG7ifc3O489wjfJiQ1oCTKn6zUoup1ZAg
	 3dQc1E3M9Ta7UB8Ot35we2rh+KgCzNyw7BL7qEgrAdrdRctPHZ75oKWi/uRizqIxsa
	 jbAh78Vczr1PHcrNFRe1sbsgww3HT0jrZ86hGszTMsFV16uIoaTp8q1pYICF/B6dQp
	 Cxsm2U/Je7otw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A53D2C52D6F
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172475195365.25362.16043255441945097227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2dce783e09778a40d64245664512ddd80f344f1c8e16d18505593e273e1a3ac
Date: Tue, 27 Aug 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724751953
