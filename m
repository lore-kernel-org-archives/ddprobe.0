Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 235F31BF20
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 05:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708146497; cv=none; b=nlmGlb2Vi5LkEujkpNoyBSmlGe5eDibUguGKU+ZmPpkpx22l6/RUrqZkAjnJp7C5QL3emlMuPnZ+fxBZ905h0vLwEyi8aSybRjhULJTESArYxrehuLN09NcHzVlvIMbvg81cUz4nFXJ/28I7A4NtPbrlzd7fcKY08sjg3qHPo30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708146497; c=relaxed/simple;
	bh=kNy8x4a6S6Jox1fIlmhNhtoBr27Sv+sLTt8OmAYLQ0M=;
	h=To:Subject:From:Message-Id:Date; b=Gel9bDKQblkfESSUMcn41deJF/DkRD0sKzYThDbRrPM4t9YW1r+WIO9CsFD7GkcL22tqHk7YKp9/EVXa7IaNz+NmHInT47hKump/c+vzyBkQhpYGjsAkdFAZwUkut+KhpdCMgTsWphfwRARUi/gmtyyK6DzbNleQ+8Lx0KF6XJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CnTbd1nA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CnTbd1nA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87129C433C7
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 05:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708146496;
	bh=kNy8x4a6S6Jox1fIlmhNhtoBr27Sv+sLTt8OmAYLQ0M=;
	h=To:Subject:From:Date:From;
	b=CnTbd1nA/Af7lU7sa6eSEzISevfhwPdicqP56QPaHjXv5AmDxOfPhVk/Tf/vSce+0
	 1Hwdd4Zz1ArGUjEhBzXA0lcWhGMNVnlNJd5cK5WwCX3T0NyTUTVAVhflkvmWyyRaQK
	 nNbHj7kB7KMIuM2mks9J2JVye8wAAjC3bqRh7UR2Ko53xzJw6Rp4YEfV+LWxkZJiky
	 Rea2Al70mqAHRHZTN0Kz6lZ9miQkdliUefK5GHqc6fK2p+X0qJY99Bi8B0CBvKO3i8
	 acUmZgQ7sBqSd/xRm5PKFiHGnH2pGvQT0gqLwv/qlRmWOHWprUNb9cxrxvnmmyyX8j
	 xvDQluNy5vBWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 699C7C48BC3
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 05:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170814649640.20856.15011992378213877511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 283f8cdb3694a2ed23e0e33c6fba0aa09a9847661bfcc9ee7f114d4f23355046
Date: Sat, 17 Feb 2024 05:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708146496
