Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 313E5221555
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746785995; cv=none; b=K0KswiDYhOiAI3ISQjwR/eFiL6d68dMGzweIvTsTatAWTkH7xdDk3A37ronwv9upzBwljevi5E3DDxVGmtDhcmD8DZoUuuHEovWipN4JqCpOQlbuNDoAckRERguqskEBwAxAv/w2l60gjLXlizElS0xZX17HDtfJDl6Be3aYxzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746785995; c=relaxed/simple;
	bh=ugjbvm3VafOPR7zG9JvbyYbiqqsV4T7uIQamOfXVvGY=;
	h=To:Subject:From:Message-Id:Date; b=btqjae7npWqYeAGHxgExj/0uNth803jfBPwvgd38UtCFJuBOojbapOd1zdDhhwQ3yjVJdnSkou83wTPUEE+N9Ng/379jQrAGtZatDrMvNfalvwaqf1cNIhgSp1fuRd0DQXXYHtp2IOhYo2+rJM+H8iMCrqpEd7yK8vH89uMCRC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lZJh9hJ9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lZJh9hJ9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BECC4CEE9
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746785993;
	bh=ugjbvm3VafOPR7zG9JvbyYbiqqsV4T7uIQamOfXVvGY=;
	h=To:Subject:From:Date:From;
	b=lZJh9hJ9uHpppqPm42yMiq5X/lmmqQ7zn4Izvsx3044WVmgSnFLlxYUsLausAsG+I
	 V5ov69iE8i4rrMlfo+eyAPG/za/1M1YRi7CZVnYiwp2LxHdF9Zziutml6LAfdY/buX
	 qTe1HcyOrUfVz+2rCYCOgFz/r5cHoStvL9bU5Z68FZXOUdFnoQHhT6vRswP7QFe9IG
	 fur5VFkbGSYlLnflKMbzlR9BmOg7DA/3gFAT0RXsgFzcLyn/OAS0tYu7CjXEf6yPZT
	 Zw6M2/QrXqknxujppbSxv7Orj9lAixKOf2AV7+1P4K1dBBwyRHoCgMturDPscA0lUz
	 yDTw1cis3J47Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D1CC3ABBC
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174678599358.24730.16107518325422945456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79b0da80ab4115a6e1aa0672687f61524ad82b5a8bad4b24e15690c88cb47dea
Date: Fri, 09 May 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746785993
