Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B2DC358372
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 05:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779774154; cv=none; b=nUsAcXrlzinN8EIXHPinWZyqDg47FM5Lno/51Hi9BCqDnU/TUyUoraOKwQYzks67nHNDi0B+JtrQot6q6ZZYVz4CVKTO9dxmRSil8EvXLZ/iYUydmn+n/uHhR+r5khKQ1RG15xwEIavCU/q7hsZCFOzjgMgw1WZAWPTLAKc0JVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779774154; c=relaxed/simple;
	bh=kW7ouDCNi8Ksdl/4H4W2obxTxFzvRBOnFABiiiQOBNM=;
	h=To:Subject:From:Message-Id:Date; b=uFXH5AqsYdpxJbzrGDjMvxFLo2KTzAiOd5jbj7pQIDrgahPxSx1htLkhnnEitC0QuxpGIUMqlUyy5TyQj6WhSwLMOQqmpmZEOBt+2InHYbQ/2XprsJ1FokQB7+yobzLpmQnbbT/yozWEoXzYtlYdru8zhDuz+H32nml2wZ2el40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DxOOGbeH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DxOOGbeH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC68EC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 05:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779774153;
	bh=kW7ouDCNi8Ksdl/4H4W2obxTxFzvRBOnFABiiiQOBNM=;
	h=To:Subject:From:Date:From;
	b=DxOOGbeHQ83FfgJCph3vSyaRqJtz5meR/7YLj8ljq8oedJIu+iHcFlpXQO5C/oZm7
	 gAYK7rhO3ijrAIDjdRauOnYy3iet0CdamoYlvB9hgiGKVyL2Aa/ESAosUve9jHs8S2
	 4PWfs29OLNF15kk2oQCBFkUvGdbrCKvCDBuhoB4/xSoE2ckz4zPl+3OJqQ720bvUB6
	 zrgfhSvD3nBTWUz0a3yQ719JM11cfckErKUrhzt+0XI+AwSR8fCeyjo088vNkkWcBE
	 37cQdXBGbZnnTS90Ze/2lR6ygD90xt90j73TgeMfsJtsls3WCPfQUCd88SQ57dVn6d
	 sscXyfzWd4xEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B23A0CD5BCF
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 05:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177977415369.31571.16132567670715830664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 053cfe73ce2498759310c8f44b7ec771a1270eebe517c13e5f79a1ee10ca5feb
Date: Tue, 26 May 2026 05:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779774153
