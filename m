Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3184443D515
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 11:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791459634; cv=none; b=dBL1tFkeJw2jKDg7b6HWiScBl74nMNc9OkTs/OEe4250E3IUqRa9hbsDx5o2vxMv3y6LE/gnYEzzZlTF7BYzn3d56rqboQf0aVui5uB4qRZZRJ+9Y5/RvwMbVRttelPX+8qDsCQ54Awi7XzXoprq7mvH62BbpnQhHGYCRbd1kno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791459634; c=relaxed/simple;
	bh=EmMhAUFRP8FPJHaEHSXCRVhPRomHP+yUiAruVZWtEB8=;
	h=To:Subject:From:Message-Id:Date; b=RBzhN1PJOhzjpPtjs3LBCCzp5OhWR3d1R6QEdKQonm+4QeN0cNzx5MDwT8GKRS76PjyDQ3/qT48h8u9btQq/7FjWylmwVgrJHkunCMrx2lwT9FdDSJLe7ql8dHoBR0a7LJrslCtTnX0dBKWRNui0sWerj6qYug45tz8BrdOSQ98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WCUXskEI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WCUXskEI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBC95C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791459633;
	bh=EmMhAUFRP8FPJHaEHSXCRVhPRomHP+yUiAruVZWtEB8=;
	h=To:Subject:From:Date:From;
	b=WCUXskEIc5flC/mcsp7DlftT1FFZpPFn1hefiwHp8RCTT2W18WlC/0QyO0PSDmBOw
	 0eX4EDcGMwxgiy/1DJtftIJ/q529CHWJGE15iXtRSARnkbwPndx/jH5GMwzkn0P2/y
	 75h7gBZMvaaLhl646ljWzBRjM2PsuIKTrDCxI5QgvX8jfnqfVegyLprgs7KaaBH3Ht
	 TargI99BlSn5ge5tqcQNehvuJuh1XvvgPC9Z6cg1rPDD3OR54UJchGtB6q+fc0QYAJ
	 pZ63VAV4K/oDqS1V9ES6PZkdPtVl6gzyKW6VM7kd1gwjSRjTRM5ae0wj9+y2YaE70m
	 2zJSMH0oR07gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA92BCA600C
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179145963368.10973.5300941403092210565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aeb1a03ebd71bc67c3aecba5531bc768225c673b706aaa67c876dc74e26c8452
Date: Thu, 08 Oct 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791459633
