Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AF2B3A7F5F
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 12:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779798754; cv=none; b=Ugpl83QuEsw74lScA2HzUVipk7adPT4RlTm/Pm0LYQNAPgopBZ1IaO9oyQcpOHURVBUDQEUW7ZVJLfgri7hrZ+iavG6+vn1uQBtP0J4YhXSNcG5CN/AHqBOTd2aBzl3LhQUecKT0rm0vOfFrxKOJ0K81TSnlFQoTwg6f6yvy2K4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779798754; c=relaxed/simple;
	bh=3AIm9uP4mFOJZJ4RrBR6tUmKWnpUimp5lHpkwY3JktU=;
	h=To:Subject:From:Message-Id:Date; b=mxHmQVUSRUS+XkaBm4e0ByHRELwv8zN2RlvLybnFjmgrTBPn0Q/Qovlud+7MD2MNQdRiQf+i7QxvTxatpS1JMXtLeNnc6f09O9aolp/EfMwhfkrSOuy4ev2B5wsDFgPqFSUOg05xACZ1j+/l/2NsJ3rGlb5P9MvyzUgLAIn/6Tk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mmsEu5Aa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mmsEu5Aa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB4DFC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 12:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779798753;
	bh=3AIm9uP4mFOJZJ4RrBR6tUmKWnpUimp5lHpkwY3JktU=;
	h=To:Subject:From:Date:From;
	b=mmsEu5Aa+640mwnqQo+H1pBHP2T0lr0uo7Y67A1HuVtoRe32TPwFHlk8pCa4pTIYI
	 6CQt18WinZkZTaYtQ4MskKosFCs51GDm9Qm5qsU/d724O+vueRCXb8vRCqz6NoUt2m
	 6AaT0UXkLuGBsKKplUgayZFG8yyq06Drr5mtiExHKe9nSd+YzlQUrbro5sr7gxvH0i
	 VvH9ueuyfyGsQIpHhZSai5ILLPWxV89LV9H4REza7zSJf7uIbkTAJuRzVWusAwwDne
	 8e2fsywzONHR/YZNSTtcZF6rEP/WjA8UfIFinkrfoU7zRJFkb+Lxkig7pp1+Y1KN1K
	 zVTxMcGAnlw1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB79CD5BC8
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 12:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177979875370.19458.14148261738740282142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad02e00e94ac54ff78d41e28ec10a79e7d256226d21ac78975ef0c45353fd7cb
Date: Tue, 26 May 2026 12:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779798753
