Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1503625557
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757031594; cv=none; b=gvF8QUVO7zK6vpsArBQRkFmORl6vS4TNpKk+Fu0DwKdW1p3N5ot+l9SDS4AHANb9SaClAx0GyAXOsV7euaj+EyIgBrKYqehOkOTOh5DMx0JWcew3vkPX4Or2sr/nBRDm60IzYmHC9G6mwwSW/Qm+cZP7kG3H6/5jbd2AOmx9d4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757031594; c=relaxed/simple;
	bh=d7e+i4bn/KjPB3UhcqKhVaLMcCR5NbGPUY28c8PEqpg=;
	h=To:Subject:From:Message-Id:Date; b=AKmf73OwtmF35D/GE8swnjZeS9MtyuiwDv+w+XlvVbQJh5zH+KfqnbfftpJ+sT1qeED1w9s0mswBNnG/ZtfxFS34cB5MBJRwJIY7m7vOUZ+YiCIIOK+Gpza2IHbnTGJdl/8qN7cdQ1A0Gef049jbGcT7h9yEWtoO0IXIMYXC5KE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WbePeJKm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WbePeJKm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9AA6C4CEF0
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757031593;
	bh=d7e+i4bn/KjPB3UhcqKhVaLMcCR5NbGPUY28c8PEqpg=;
	h=To:Subject:From:Date:From;
	b=WbePeJKm5zyhLS4cMs+qpGT8Jk71Pzfr/d2a//pLCuGy8L0N0YIjbSyMoeZIqrvn/
	 3zlTOBjfn4nCkuZpc3bdpKd9ICQc2i0XNqMEu6N8GNVcPP6nFs2BQg6lMTEY4SII3G
	 FLeMvKvUyi2ftIc0GCLqmRszW5yo4MBqMnPCsNKE9d7PwQo9PShdLtlyIGYfXRYaAX
	 oK0L7+gzafmbYetLqSwzw+zvCRl/Sd4XsxGTcDdXQx8vTcdI0TLZevz0KKH4cSVBKO
	 ahLeQW274bT1QHopQekPfkLr6o7neUbGlvxwKhi48YfCPujEy1XslG1RNPBRFutKHs
	 XIfIYrhW1oWTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9389CCA1002
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175703159359.11963.11049610128886559686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3b7d8c1f61e2c648c0a81326f6b37f940fdad430a00360bf55ad78e83a87446
Date: Fri, 05 Sep 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757031593
