Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F80EADC
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760399394; cv=none; b=a0Iz10TlFQXKazJ1Q441xt5rOcUq9DriR3nBGtsEIwwFyrWiMdHwaMmyobTNA1ziPgpb9WwTAiTzYCpB9mmoJLT8uVBVMF4HY8R04csjr4DT0ywFlF5Raops27PRsgBVP6nBlEbk10zpSnw3C+1nLR3b8BtE/dmICBRIvNhCkxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760399394; c=relaxed/simple;
	bh=JxRov7llJeDCIqzCUdEPQZ4hc4u0NmRYGQjYzIzq+6M=;
	h=To:Subject:From:Message-Id:Date; b=tph2zW37jPi2uRwIY8iWAi8XijbbqhFWrYS2egiN2aAzqNnV8VkMkg/z3GkKBblDnBAfLL7QBSUxEyxrr0KW33O91hwxhopBDQcchhmcUbXbfjVg6OWlIS6W8/D5pnQM84gQL+bRJMNWJj0KMdIZeQWtVsv/TLMQVGn+Jdx1NM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LdmVYOPf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LdmVYOPf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A428CC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760399393;
	bh=JxRov7llJeDCIqzCUdEPQZ4hc4u0NmRYGQjYzIzq+6M=;
	h=To:Subject:From:Date:From;
	b=LdmVYOPfgtTchjDrhdl2kwC3qNJLW2ACgWuJEzL1xkKcpXCcn+P1O34X31JVKz4U6
	 z8FdeGq+cBCUGTB5q+YWvtzM1PDuX60headTkjJ8dH69rpn4rtoxPrjgLrOEgzFrTK
	 tbv7b5UBtkDYp0mWqBgbD6vavrNzO9e6XIK+ArGOvBCyQB+exc5SOZoYyxhXk1L6Ik
	 KaHSL1fZzDcFKhh/5gqMh2lzTVuNxB4oD2oaaFGQd91kS14+NzPick3547j3cp0qC8
	 PeeQKgZoLEF7Q/cZpPWDZsrzFh2yDSKT+7HQcRDzF+nfzBHARJj07y/Hf9NjkqosSA
	 qmIrnZ3i2FioQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D4FCCD183
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176039939357.20018.12998912576354295046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81c80dfcbeecc45eaeef3d75e9b94157d1ef23099da797f3f714476a5111495f
Date: Mon, 13 Oct 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760399393
