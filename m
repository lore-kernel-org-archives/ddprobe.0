Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34FE5A41
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736653554; cv=none; b=qFAsQx475VSNNinz1nL25chohlrlAA/4cgmkjScepbOoBRt2I3+rmxowZKXfNaytSeQkns2Gs21RmI/Zlp4fenOtHvnK2iiePogQM3xekxc7looxKAEGKSjOMotMtlsBe4GaAZhReTqkgR8wLNQnvLOiZoZJCWqGCUUxPsYrYlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736653554; c=relaxed/simple;
	bh=whiI3cudr62jC9effcjBWCzyR0OlsxJM9/zQ0zFUoYU=;
	h=To:Subject:From:Message-Id:Date; b=as3pK0XnXwsnlx0BVCtJw8rx/wR0YRwMfdF9bIcl9u/OVL5VlH9wOuiWBPV4uhiLWaECU+D+OE3bQzvOS3GVssxV0iZv3tS+3q7xYflgRvyaoTi/c9CFNA3GD8ixuC6dY9SpbVP9Gob5r5LjhO7yHWvyh9p4eUUFUIA8KS1ucLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bn67iimP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bn67iimP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7451C4CEE0
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736653553;
	bh=whiI3cudr62jC9effcjBWCzyR0OlsxJM9/zQ0zFUoYU=;
	h=To:Subject:From:Date:From;
	b=Bn67iimPr7uNp8Y6FHqJCqkWp8io7/sjfINCtTluvMv0LbHqf/QopQT+ViL5vQ3UL
	 p1QkjxTFUSY4WPUMOcgzibQgL623AjOhzUrXVJ0JaWMQbigRDOqtZkEN5oWEXa6X7Z
	 HmtGZuJuSF2kLt0LdvbIJVPEDy5L3JeX5mbbX8XDcSrkB5avo6dhAOoviCWHJ/lPbv
	 TmoQVDtZQ5W4ya9iyop7SEKifPqt9UMNu7ADHhjUP1l7aPbrJu8tPx+ZAYbpgw6PZt
	 MpJsgPp51xbX8uM/XFgYADqMWdGr73sIdIjcCRIehqbExLXIm7XEQ3goHHAS0Kai75
	 5M40rd+DqnEmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E796E77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173665355361.32601.10216931154821891809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e518aa62d479c4a6bdc1079d760a209b93a286e5e4246712bc07c5abee1f329
Date: Sun, 12 Jan 2025 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736653553
