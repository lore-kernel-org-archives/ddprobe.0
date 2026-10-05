Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 535E854707B
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791173434; cv=none; b=O5ittkkZVIyruxp9M3MgtII451CET4y1B0EexUilH7CaHeL2bZn0MDAX0kJuQWY8+zLSH+/dRf3V6Ky8g2cjAcLZHN7+8x28tCQGszEI554lvPds6b44rTJ6EDIWj3FzMHQaGxxTy9+tmpLzJnkqdqrKQuRbqLMKERaARcYSEOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791173434; c=relaxed/simple;
	bh=DuOTi+vmg/QxnVV85U2bWd7vIecWRQuMsg0HJ6x69Ds=;
	h=To:Subject:From:Message-Id:Date; b=jdopI7rlJKolFXU2e6P39KrH1SPi0R2BqRl85PEJtaK32RGRBBVHCPFU4eX8+YBprgSiagShQaMoX3DBKZBJRjrY5DHMpMZHJ2vPXGMa0hi2f920TGUTSMM/eb6o+/VPaFRcpl0IF/SPiqt9m3D6IQ5tTwnA/h++Cbw+0Gk/E1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XX+9Ja0d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XX+9Ja0d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD8E0C4AF0B
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791173433;
	bh=DuOTi+vmg/QxnVV85U2bWd7vIecWRQuMsg0HJ6x69Ds=;
	h=To:Subject:From:Date:From;
	b=XX+9Ja0dUR7nFeJw5RywhA1GpZsnZgPcXDMXSxVnuGPYRw/SVlCbFNC8b3a9oA3IC
	 azW5q6BP9bLcg4PzxhqTLgCLyLB9Ebh9AknpS2H0SEHN39zCbltvWAsE8DfC4nHfAw
	 h9PXkJKbpe6SLorC7o70jEJSP6fB9ewmvzJzZuEyzWsQ/h1b3o6KAUTT4GDAc/CDs6
	 XHx9qNi8+LqRoWDgRDRZKp0j27MTedGacDkrTWtItORzzJI+6aaVzi9Tc1PyoL1gGs
	 hnhzmLMTxsj4iDo3s628lwqjnF6FfNE/xgu/G6L8ljwMI+xB82wL+LcW97fWejkSO8
	 xqlac0YDydQ7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4CF3CA5FE2
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179117343371.10607.10969108697912811887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 216a2d819f3fad911b94189ce90dde7c31558c04eeacb5df646386e58900665b
Date: Mon, 05 Oct 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791173433
