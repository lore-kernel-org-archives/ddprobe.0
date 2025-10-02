Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E175279DD3
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759412395; cv=none; b=Hk3tX5ZG2mHL2R1ezykGOOBzI00SlFqr1ZaBFgk09Nxikeh82En34oCF91xpGpoSYUDQv9Qd5WjqDSWEDqS0m0/O64gkpTBBBcvspJBdR3hfGqf5NuF2hSY4VM3xAwr4YFRSijLwvM340qWbYOR17JnNi/jRsIi40/X4gR9dBHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759412395; c=relaxed/simple;
	bh=YkyPxqQDF3rGmPLcf7lPilxkvw/kJDqtPH0noJm67O0=;
	h=To:Subject:From:Message-Id:Date; b=dVinbbVh27uEY5NtsqgyKStEgOYUtH1Bq0GO6wVXqeVP8NwyFkyx+MlK0j9VBMNGUgRGwjG8h4xy8Pj8NFnh23DVz9bIy6o8EEnWvrmMZ1wW1B3LL7wvLfkDlxMcKFuw9hG76S2R3pQleqGtFQq62F3UIQXEgH++/Usx+7n1/cY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cbejQhx8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cbejQhx8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E9F5C4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759412393;
	bh=YkyPxqQDF3rGmPLcf7lPilxkvw/kJDqtPH0noJm67O0=;
	h=To:Subject:From:Date:From;
	b=cbejQhx87MpHmReIHm4ReU2nJoXkAZhYDyWwISeQJWaBOWEo2hIMIeeZ25Z7C9EAt
	 V/HL8uFBKGo1FTxrGP31w++sc7XfWMVRZEgGrGqKBDOpDnaENK+G0Lm7DYd6UAJ6VZ
	 SssXeV1vhU/05IexxfftRGfMM99KRGckQ9OdxnRS3Tro+WxxlBC78m8+QwpTPEwxup
	 h3qtShE5jlJE0JMqi9QKvFErc7m0mOO6MaeEwnOCzFwMdcOlyAqMd//PdIwaqjWmpT
	 ligLZZl6w98EZDOHcEouoxw9Ze5jEjdBEGtq1VQw0i57MZwli877E7+8pPaJa+vP/2
	 83GX5bnZmu+iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4ACCAC5B8
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175941239357.26969.16208508139375516633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbf9ea7aad595dfa9acc6e276d66c79b28d54714cc8f1d88472725714eaccef1
Date: Thu, 02 Oct 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759412393
