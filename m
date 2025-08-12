Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DB251E7C1C
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755001794; cv=none; b=Nv6P0DymsBx26C/zVFt+Cwo5NWvMEsa7m0cWyJ1ZeN4J4doKg1gCv7cE+dPBjSGBgm+L79zHE7/W94NBFfypmxx3hhz2g6BBYjJm1pM/u1djJBI56EO7JVCLHglKwptQg9aaM18dwhKwjidQb9jc5d2HrPrqdc43HiBs5mRF9+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755001794; c=relaxed/simple;
	bh=gWRamkWTr2JqB02DxU+nw2Z2GVV5sBIaEgJOHwYROWQ=;
	h=To:Subject:From:Message-Id:Date; b=l/okRJOX19e35JdEeY3bLj6hCTeqDvh9tiddC0XzPRXhJE7Rpt0XUw8egmu/yvrf83wy9tYQbr7OyiIIlsp+gAIG+GZ8wyP/GDwgW5+rdKQ919Yxbq3LRQsUXCQRS4YkrWspQdqtEZsrNYkSeVKX4LJPNAJLDN/99eaVWOOhXnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XXkm6KIz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XXkm6KIz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6747C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755001793;
	bh=gWRamkWTr2JqB02DxU+nw2Z2GVV5sBIaEgJOHwYROWQ=;
	h=To:Subject:From:Date:From;
	b=XXkm6KIzMHcpwAc0DWdu+wY/vUWmoW4ZGTOrHq2nWqnuhtznd79kqSUxZYdvjAsBQ
	 7gbmsNLIDcWRuRJ2miOZZvJqEPh+ecIKlTKJS84rKKdQKKxNSJMQyDE9QZv/JqTLp5
	 uHwgU9rCjRMkVS8iff66nhYnbZfZ/c1TKXHFouzCYkK7k4nBpV7heJphHcT2bhHsM9
	 ZsLs+yxiAhBkwbXgCND+AliPai+ba3lFDzMcJyAoKsRCCO+Y2av7dC9f3QVTQ/moow
	 hm4FQ5WaC7cQUI6qQvr2gWxHPYpLUcK5+aOICvKpU0BrKmKS+wH2G9TsdOIETwgzm2
	 I/MkQY7rAPJYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936E6C87FCB
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175500179358.3657.10602739380450751786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35e51af757831c8d1d72b6d66698ccab4c6577709fcac4540be28c09aa566c27
Date: Tue, 12 Aug 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755001793
