Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09FA5311952
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 03:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768794234; cv=none; b=dHiCxHQqwRAfJME5q6nc9AJR/X2vy09H36+IxUfFcb7TmIX7EkeM41P5qEQrRuZtGueG+KissQ+5AwQVVhCX1/osjojN0/hZH4O3sjqX5PqojNBNn6jjKvJTIp+30k3wyQN4erXFp51gd19duvR1LQAUwWNqklndRfUi7LxjVh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768794234; c=relaxed/simple;
	bh=zF9fmLlriSwtyxuBkwYlJKETsFRVqoWDs2veH1tDmCE=;
	h=To:Subject:From:Message-Id:Date; b=noKPs/erKdqz5ZgDzplj50mKjj64w/xLVEzIKMJwRfiMuvPJyTc/v08QLTsVkCiR7Ca63AlUDsCOQaLFg5+5iqQB4Y5YOpcOu2r/0wv/wdr2jNtBJaopMvUs4wpOwOWmqG6JYzb21OmQM/VKrOg9hZV2pa+oE0YO0bXHDmyNogs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FwMfkfpS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FwMfkfpS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DAD0C116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 03:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768794233;
	bh=zF9fmLlriSwtyxuBkwYlJKETsFRVqoWDs2veH1tDmCE=;
	h=To:Subject:From:Date:From;
	b=FwMfkfpSVHWZ81LT81OfrLNCrSpDdPkrcI/6p61SkMFJjz3SeA6i1RNr8Z5Dm/bgc
	 WIYSX7rTVpS/MbAz5YWdqrV/EgcjDnO1/AULOmYpgHJFLifZ+d4JD5jg8QGqyxH2Io
	 joLTG8H0dJh2r+dLrwpKXGhh710TKzUfndNQJn2aZ0sAB3Ku2GkP/Z1ZJpGD9wWPaV
	 HBMT4cvNIl3CtwgVPSNXUo24WssoP5yU75WSTitC2qyD1CZ4731/kQcun50PQqvMXK
	 V0LxTpbL21yMN9mGmGNlzJZ7dssKYV3Cx5tPO9VkmJQPUsvOExq/TkvRjWdSGFsJoh
	 pXgcml7SEKX0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F39ED4A5EB
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 03:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176879423357.32253.18365750011750879350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd421226bb0d5e92676d1e4d73da682f5aefe6ef8bc9e472b45d7143a4fcee10
Date: Mon, 19 Jan 2026 03:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768794233
