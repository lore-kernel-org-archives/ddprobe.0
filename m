Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22CE422339
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735588554; cv=none; b=cZY1hHGzLRcczNtUW27iRyqwH7ZWR1rmLvVmTDLqoFTNId148Is1yNSJoORpCSkkRJwRBN94TZI+YhcVuDr0L+PCmFQHnwKCYoeoWNOebWPVbm+ppaLLFFeS3nNpX5+G24VDmx6/IR8/D32bcf1FxnFLB9gMmr7IMk22zbDdxbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735588554; c=relaxed/simple;
	bh=AZUIqhufU+Q6dTPkOhkrE+o64lotj2B6gVrzQLPQ+uI=;
	h=To:Subject:From:Message-Id:Date; b=T95kT+oEi0BrPUdK3ikU3YjUuK+roIx8HX93fzAH1yZizbE3KBtJctdkrjTmjTuuz9uVmsyBnmtaJAfy0jc8EjF0TXYTXUz7OyaJka8/s6kzs9RI4tIsbrwsUd1LS8FGE+bt/NgRPo9XDm+/K1oxkMfb8OOkKG6RE24CoBtkzR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fIBNO0g/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fIBNO0g/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FD9C4CED0
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735588553;
	bh=AZUIqhufU+Q6dTPkOhkrE+o64lotj2B6gVrzQLPQ+uI=;
	h=To:Subject:From:Date:From;
	b=fIBNO0g/lMrkXK59G1W2QTQ9bBu7hACdeQkmPOYvh8gqpHeCNuqwbe1v2Wd5eYpWM
	 5BQN4GftNkZBc+hJciEAv34Q7pdtKh8iw4GSpS4spauI3xFa/RnUlaPj7FlJn1s09i
	 ITdRTViLPrwclFPh5Li+vVOFUub11MXFsG01pb07iCQ+fS34iOHKvL5IrD2slDe993
	 C6RH7jTtWBgorIKjdizff8so0Dhy5zYmQmUPV3xO+tLhIVULCIn3Y+n78P5oFJpHQf
	 SjSq2cdA0AsMWdI4ZXjiT0IAVAqc9R0980WAYQ/QzzRtzMY9HhLNBjzYBdJny9EAOQ
	 AE7zbXB3nIIug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931F5E77188
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173558855359.13807.8061348358303922201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88a0e3c81bfbde391ad9e3640e78a2527eb7a79e9940e8b4f69e42d62d91b39a
Date: Mon, 30 Dec 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735588553
