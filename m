Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21DEE1CC170
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724783754; cv=none; b=Zvh82BaT01+ySnSIMO30oqwNndC4ZFtfxP9G/ijlPC27aO/45jVmLRj/8OjqLUZN+h6enshuzlxi81d6r9EhI0yyq2oR8N6yLTyMKoa65foQe7qA8Hub5Uqi0R0hXXUp0b+ialHedp88MOY26QTwzvy92FHZpCYvQ+bJch+vqMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724783754; c=relaxed/simple;
	bh=HYeifkZPm15jLD2WyxWr6yXpyxpt9LeGR+MRMIoFj9A=;
	h=To:Subject:From:Message-Id:Date; b=DsULE/g6RLejyUj7kUEUcXF5KmHwYS2iCtwTBGpjY+dg+4G0JlWo5B75kydZBBzq3mhv6HRHkg6/NIw3Z6eeDzY3B2sca1wmYFqNZ0hjLEmlOMiA0shAk6i89PJ887zc9nEK+BScXJd5Mk3ai2TKIsFG9MxbZ3Ux2Q8k77yadcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m8QKBrbG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m8QKBrbG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB055C4AF18
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724783753;
	bh=HYeifkZPm15jLD2WyxWr6yXpyxpt9LeGR+MRMIoFj9A=;
	h=To:Subject:From:Date:From;
	b=m8QKBrbGDB/2pxuORFPMpYeTG3GKcM9mlD1RuNu6VfFsGQ/1CfpRaquRU1gwFvTW/
	 s3CzYdJX04WxwO0faJgtXD2uDe3ShKQgYeKtrkgyuY1Q14pDDaOaq/7xqM+KdMQTkt
	 ROr7MvP+RDXouXXW9sPPGB13oQQMZizmbXQPx29Ek4mH5UdjIdy34TvheGElxPCSZ1
	 kw5ws5gxL36rCT+7omCWXfjfphkfCSjhp073Xb9iNO3R3+QPMWInopD9dIkGhggKZk
	 juTvJ2UC1KJPLhrc86SMiwTXYBNVHAjqhwUlFXGU0NBCgkEukKbH7pxDFsMxyZQ8zX
	 m88iXZdzE/BPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C55C54731
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172478375361.3633.16092106257500788984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e97ac9e132798ec2f45d9316991d3b5fbb47de80eb58477d661a57badbfa6e85
Date: Tue, 27 Aug 2024 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724783753
