Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 395CE218E98
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733420754; cv=none; b=r2n5RnJDfHgU+UUaT2srMhcn5bqzlZICqHRWWP07u8z0MvirkFvIlqZLpyT97eUzl87YHQJmfEUbWhgXBixixWPnwQtXC35tlKWglmrXmicB9rRLwsZs+zCVFbHlcyi4LpQNxhOqgmt4cpiAy6BfA+7zoz65gEv9bVXO5ay17Dw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733420754; c=relaxed/simple;
	bh=cJEj4a/X7zNxSkyhdKtHslg1z83XOd8doQiAX2TcSbs=;
	h=To:Subject:From:Message-Id:Date; b=Oxwor9hRKju4vEEdw5NSXoQsCKs09ajwDelQZh59LqAwkrInG4cLBlH4PDvtoXUhIWe4WDgBgZ6RdNCdl8Sa6HdM0k5AOadFG/gs6Szznytbve1d6uirYeXstt0UMLXxXt8g1yX+xOXujOwIiA3aMDksE70csAsx46wp94FspCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=umKi4RTP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="umKi4RTP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5BCBC4CED1
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733420753;
	bh=cJEj4a/X7zNxSkyhdKtHslg1z83XOd8doQiAX2TcSbs=;
	h=To:Subject:From:Date:From;
	b=umKi4RTPHSKq1Kv3MWB6mZSeh152X9pFuq//3ZU6CKFvYMYf2Y9B4yIoCZVJNPn5o
	 wdUJdy5AkkQ58BiDneuJ5vk4Tx8Vw7oDAH3m1XGrdw1XHMsJgKGKkvGqr3iOJlLqV+
	 +NTCSdcX2rE0vbWM4pUZR4eVSoxsg4JuvkPdxvg3V2V6R0s1gNlqhtyJsoNMcBEa/h
	 hP17bNP+c5QRqyN+qt6M4MzQveH1OtVBy42i2S0f/4j8N+TcgJuf8uEHPeDA4dQAgw
	 Hz67t5BE9gbn+IrKpU4naUvX35R3cuEAhe7rCs6k1txT7RD64ePc4ci4UPL5AM5j8d
	 z8OwpC0NLamEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DBEEE77170
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173342075363.31755.9363426103889299271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b08a56961582b99a29f8852b330178f51798a654ac14a8afa739ddc172db523
Date: Thu, 05 Dec 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733420753
