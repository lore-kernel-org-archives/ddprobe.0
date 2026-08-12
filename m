Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 470F240DB20
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786572634; cv=none; b=r4W04l9elfdiBgtQY/I31V9PorkPZFwgQBpQE+P/+DSGK9TlbVYRtnwf0EdW9AouEa1HND6V6siDeipGClkUh0TZsQcXGzKXrXadYgTVPPFE6MMa5x5y/XoIoQovDwePqk9CzGKbMXJPMWy7vTOCQZymszdPAMm0LDZJQQ9BM/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786572634; c=relaxed/simple;
	bh=D7JX86E6AWbd6Rpc1Pa+auTURakYMuVWIX7JkdnXdyg=;
	h=To:Subject:From:Message-Id:Date; b=W1PoS3jlWihAsP5f7odt45W1T6JW+2QI/PdoniQiyrBhtNrQoGGoR6/3SVBBl3VtcJFb7pB9uDfcTFx5GLG5wWMNjZLSetkVxmmQlW5TT6K7EbW0gd6dCzEKbtohFFppcObSj/C+qi5UomcNNS/0cHRh4ZfBdwPz2GJpQszfeAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=arYk1fb6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="arYk1fb6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD357C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786572633;
	bh=D7JX86E6AWbd6Rpc1Pa+auTURakYMuVWIX7JkdnXdyg=;
	h=To:Subject:From:Date:From;
	b=arYk1fb6sYF2rBvt5GWO8oxMav72dGVTC8xdGKFeL3jNx64wLrEi/1op0pB9FDf5l
	 SL/fjCNxHrSAc0ztCSbm8IpRHnopO1HtU1OetvOv+9PnhbGs4IoWOfCyoBPm3ZfoIQ
	 y3xUuNaxd/MRYT3/7+IE+Z7vKwjeyNSBlKpBIuh29WdE9xRKlGoz4FrQFrRoaaSg4z
	 hkGK+Ejan0yhKE25S/tD17yW4Y7hkkmeFABYxe0O3zJaRSDSLI0ZSmhfNnCyjikzNL
	 p297Rm/vuwDTihIxq3e/t3GpqUMcvzqATaLrJEvJDxXjPDtusWRAmjKcpJob2FLoGd
	 Vxb8bR3toxgKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C19C5AD5A
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178657263368.29277.7183896595454403689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c97436b69044b3494b899d61a60929d207634f08531aaef4826ea0d1d5dcaede
Date: Wed, 12 Aug 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786572633
