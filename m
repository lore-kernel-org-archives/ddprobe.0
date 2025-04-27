Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DFB9FBF6
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745767794; cv=none; b=XHSzSgyNhvKZChut41faw6vKXzC9qYkUFeZewi9/xHdi9Z960WcO2X4QcdVP6sjCiTYXtGsJ1hGzBSPdOJzSdeoeZBZK9boAwHCB3wGUusJEphWGg3rir24qIyjE63N+V4yz3BmPv9jj5KhQURJBBJCvLM6P/x/NSWkG/UI/Ago=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745767794; c=relaxed/simple;
	bh=ce5M+u6nsKuBdssw8UC5HjoWQLPo9bfBCMBmgdr/af4=;
	h=To:Subject:From:Message-Id:Date; b=F1JMByx6/LIgCRtxdsJ1bDgp4xeR2+zKd6Q1KCRdPImNMclM8dZSizy4gJrZh9FkQKjjLbCr/uOS2wKhbqPakz0giOqEVJGKPRP6LVrg+wYuP2g9yMdBxDEGWYOEiLIU/LTVIQXhNEzMlsfI5XIQkLx26KLIDB7Nw/z6cY06l6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y3aa9y3U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y3aa9y3U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E85C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745767793;
	bh=ce5M+u6nsKuBdssw8UC5HjoWQLPo9bfBCMBmgdr/af4=;
	h=To:Subject:From:Date:From;
	b=Y3aa9y3Ufu/ZKsMrh7owik/vbQ5jbrQZyAiKTayfAkNhstBYClbPjPE3qiqU7tiW+
	 lwWUtd75+2Nk+2FCPN5lBzSB0E6WA1c6SwiDdMBQn4WDBMy/XnH7NieSW98113OyO8
	 HRxSPS4uFmpNz6angcy4CL+EQEpRRczTQDPbn50Yhq1zw49kfxLhJyicSYQpuQ4qEd
	 BTgBC1n2V3uKZ7ujQGwxz13EWjTETyQ+DcKAMtWNT99FCFmYg6XdHlzUy5R9UyBEmM
	 zRsVqFZWBXeTNXJv7ZYlVqJZhLf/goqp6SqZmiQK34bVpT/ClWmzyqMSUp/Ro4RCey
	 w+uoqfvM3KevQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CECC369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174576779357.26528.5766539622606237394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e63da2432ad28976f1440757b1c7c408d1b50df4b5ffd7538d6724d9a126b3b
Date: Sun, 27 Apr 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745767793
