Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E5B360EE4
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 20:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706041697; cv=none; b=Ag9xZF+/dgCbq0Yagt8fjzmIw/Uw0nUB+ghnaYIZD8ho+9Bv+Rn8zaaE13t9DU7uJuZS0ooWry0HBKTSeP5jE1to5f3n3lO/W6WFK1jWFclhHatewQ/gv9K/z/+6/MfLljAP6wBAp6bUValBTelXIkvi6JAdU8kqCU4LUT30Vcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706041697; c=relaxed/simple;
	bh=6TWJuA0kK4eozNFbIoX6wAxBXObwbuzU7+Sqvs9eWog=;
	h=To:Subject:From:Message-Id:Date; b=XyoY6zpoVWDxwkG+jd4ESr31sFxLE68BE7w5MF2quuTeuwEzPDkqA/iWP3VPK029pmPq4oWubpOTJ6Xgn3CU9n/jm1AV3QoDuppZL/QaDXHADfnicn350a6p/2h194bvYjRux5pKuVVOH/TR1C+IfvlBDaANlAiutpH8NyOlGeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=imRaS4/L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="imRaS4/L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 841CBC433C7
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 20:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706041696;
	bh=6TWJuA0kK4eozNFbIoX6wAxBXObwbuzU7+Sqvs9eWog=;
	h=To:Subject:From:Date:From;
	b=imRaS4/LJbPzEYjZeamDYxjLYmDojCcWdqz5bU5doZwDOg0XUWpEZ5MZenJ4sHgbo
	 AOhqE4oT/p1vcY29O+AWv8pWZvTAI02mK5JT2VwgNXjb9Nvt4KPQfU+aaxC8jMi1mt
	 SGIVhODKTBFQKd6P6CO5L+UcSSqXvO03x+ROw5js4qpZ2dhzSezF67Vuzvq0gZeojo
	 OH6iR04m7pvmCQqblwgXmmybThpmg20p8GtHhfx6zclu4Cj8cIi614mW2ZtJMSXm9J
	 PNHlGpd/QdvTEaFwnq+lqD990361AGwuNCxZ22KmKN6opqPZFLIo2mRduMlWu0sydD
	 aeBWS98v8fEUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B9BFC47DDB
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 20:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170604169641.2335.1252747626137439695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a273faf83f988906deca4bf79a0a39680db00191dcaeda80af14a0da65d2a000
Date: Tue, 23 Jan 2024 20:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706041696
