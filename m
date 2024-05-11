Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 676C51BC58
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 20:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715457743; cv=none; b=P+knD6prkxj3gwY71BW3hRwAtMJLhlWkeSjanzUTLtwpAlRPsAlWzZlDt/RcEjVwI719MZJOTPiK4SwO7rDaYTYrf+ByeGivN2QnonH3/cycV39MAin2btUw7SmTNxU4VDKM9QZaNxPNgy3/MjYO0A2do84whnq1E1wKH3ZPKtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715457743; c=relaxed/simple;
	bh=TvsLRAj83z+Zurd5lSDMCLVG6BK3yf9Testlhww4uTY=;
	h=To:Subject:From:Message-Id:Date; b=AH3NnXOOkGIMxtKsAPRm2hmKwDF0NgzsRCyecCRJiCtQgC7xbKHKDeAyhSv/ofNEtAo2W8TmWt4rbtQfA8DtD6NSai+4dcVOmXw+ampLCKnNjBw1jPBw4Jzar5g+XEBrs3LygGt7qp7FfxezvDxFmpcdwrGDgyoVrkJnFiW3OVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EvLIccqu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EvLIccqu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D687DC2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 20:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715457742;
	bh=TvsLRAj83z+Zurd5lSDMCLVG6BK3yf9Testlhww4uTY=;
	h=To:Subject:From:Date:From;
	b=EvLIccquPstywY98V8/56pGD/ytoMTF3XySnTR75MQZG77unOsXJSxf4nlJva3OXa
	 ilebuuP2Ez5SiVlFtunLQB/9m22+PRqA0IfEqDPbM3+b1lHFTo62HfVGTBmhXV9JH+
	 xBKz1/HEJ9Xn1z+BDq0FyF384XSv/QoMFuSn4kmqWbs2h/KV2wkQq2K0bnlKBihcG8
	 33xEooTPKxwHaACbcJDFLY24qOgv9eQzpurS6gvcH48Kqs8QsXoVJbijLk8ZJBCdxB
	 n4RjC89tX+rhBdRcoeSDMO/xGCq8pCWqjaF1Mn6DFwQQxD5Tyn/3Uo0D1JCCIJnAJi
	 NUUQErXipaeMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0766C25B5F
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 20:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171545774278.17903.5205804794106915390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d04c2ad3a5609679a8f9b417be25285d702f881fb9f494dfcbe204b32472fe84
Date: Sat, 11 May 2024 20:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715457742
