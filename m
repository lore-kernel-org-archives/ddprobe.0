Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CCDC3EBF2D
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 00:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769386434; cv=none; b=UdmbW4vuHDs0DO3PwVFjZ+VzIiFZe3rqMPj1fWu3wL7kfyf3azOXTuww3FYy49t15OE8po04m6rkCMHD1YSBfv7lwTPw+NbaiaJKyLJUV5jrmK8qCafKUn7Tize8rbR2tlzNk+J5Hi3/frcMWwTd3AUCuznMiGoS2WENw9ZenaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769386434; c=relaxed/simple;
	bh=p8ZvqS/E03kUJYvZuVH7FuZtftXG0luW7JsxTqIVOQE=;
	h=To:Subject:From:Message-Id:Date; b=IZS4joGnDhzcW4THofmaWm2/0wsls5ZTIOKuIZHahZPRyMGwowBUschX0in+VeP8Tr1FhzAoFQLacNOSeHnI4ziugvHxzR2KWFJyUQ9hahwFGJsyJvIqTsaHVobzONRdEXHsBpN1s6XDXQdoAfEjy3CdgpPddv5KUppxwVa+dTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O4xeODEz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O4xeODEz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FEAC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 00:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769386433;
	bh=p8ZvqS/E03kUJYvZuVH7FuZtftXG0luW7JsxTqIVOQE=;
	h=To:Subject:From:Date:From;
	b=O4xeODEzYIHgZ5ctEUxYxs2DFnogF+3+MhW+4pUQj4ZouPYqJNS0wU+BIATnufUAP
	 M4APHC41CJp1VsgP9uLdYwzFO/BeozletUy5IOvdmWyP4HB94XqA7skANuyHoc2LBI
	 MNDk+veSWGBpTUyTG3scPbVSJhy+Y4iu8SkDBearSmsUYI7jr+/NgTabM8Ct6QJJqq
	 EQZJuLI+5tuIe+TMU0xT4p1qxKyvacEAj3+5EN4vmvwU8oWg/7m2hmtJukt7ouYEIq
	 NcfiOG6XVvPe830MWXHF5lqCbqwKJfUbcDeH9psxo36A5u8k/FOGAdOWrUUDUKbxhC
	 o1lVltAyh97WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B07E63C9E
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 00:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176938643358.27667.7724558067536293223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65c6e7598e26dd78f723a624090702e9ddc9414e0b4885530ada03506c1f0e3b
Date: Mon, 26 Jan 2026 00:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769386433
