Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CA2E39C003
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 21:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774907694; cv=none; b=JzIeGKKETpZESUbBzNOwvRxqXgOW1b0Ts/DVL0PDNCiam4/Pb/X4VnkjyCMn7OdcfkEOrlIRDEA/AuDvWAVp2V/2Oni4EjqplHylNORo/dYBZGmeCQEGX8KMqg4A/ZexohVSkftuzOvlaR6vVEYV7D42m6O2/LPRol49LHe8JE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774907694; c=relaxed/simple;
	bh=4kLmGDzddZEJfflxCPaHkGihU9rUuTe8og3Hy2mA3FQ=;
	h=To:Subject:From:Message-Id:Date; b=eaiLEzpO0+rP5/Em42Vdsoe+q8M/E4VhsaghDTYTnzhKlf1UW5cU2BlKfXtWtl349L3CcUqcnjnvdYRhYNVhUulKtLVZKwE9PAIDEMKP2daMhj1p7B40Nrj6q0TdXe/elYFsCAHSNL2TUzK7zimPY+CBceIS1kHKsUPVPlAmQdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i6CSUCEV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i6CSUCEV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7620C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 21:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774907693;
	bh=4kLmGDzddZEJfflxCPaHkGihU9rUuTe8og3Hy2mA3FQ=;
	h=To:Subject:From:Date:From;
	b=i6CSUCEV7qCNXh5r3tazLBKFwpdQWGXZqcJz2jQK/2DAlFNdl22CtpGdHDxcazujx
	 TYbcyZwqQtNvKUSvTOCV9bNLyEJtKupqEomYi6NU6KfMGeMRptd9e5ySHOXtL4hoZw
	 kPd7ulzWHF8PyRhB7FSNbHbjJ/DZWLi8NHXMhdEOP4sOqI8uTT1iZiKGtbeyhDocGE
	 NCpS7WuRknJJz1shr51SqW+GL8bw3QIOm+4BXWnXRJIin7ROADsUfK5V34bnIo/d8S
	 71Ym/MPPXd038HT2AKJGYuPrXtYzRoGQzfE8H3gmtMG++3kUy6/CAl5hsj8WzFQ7fn
	 ecXE5a2i1SguQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A451061B22
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 21:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177490769359.28132.74092584049939555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29210bbe1ea858000f4e695c4e4bbedaba4e6196d743e233e32490b4bb80fa78
Date: Mon, 30 Mar 2026 21:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774907693
