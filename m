Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 409E937CD32
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 03:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772507694; cv=none; b=Jm/fG3gXJ/vtCMk2/Xofscn+tVMwHNNdTBtZAafxfDAWVIyFi67IKTm1EJoY9DJJUa5Yn1T9OIFYTTv92MsK83cQhRvKs8U0w5KFkCikxwYLZuUYQfCTV1VgJJvRj4ItVqSo3fSJp2l/8iL/Jihuh8lmJnzRlnI85VYLZZ12Orc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772507694; c=relaxed/simple;
	bh=3gHeAuR2F9DUsuCwSYdxEGKM1qLWWjsoTx7Yu/CtAS8=;
	h=To:Subject:From:Message-Id:Date; b=guSNr5vUe6tyqjqY2bXhzB1aR4Dx3Xgoqrpu9WIRwygSRP5C2Ie5ySk6DL+q3nJFAV98fczTFll3N5NZh0EeWD35pT/ZFrGlb0syFF139NJzFV87PdgbxnvRJ5BV7RyXu2AKoALaIKQEwgKBqHhS/NHW3MbpF5q8M8D/Rq4ioTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZqEtPxBE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZqEtPxBE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E92DDC19423
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 03:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772507693;
	bh=3gHeAuR2F9DUsuCwSYdxEGKM1qLWWjsoTx7Yu/CtAS8=;
	h=To:Subject:From:Date:From;
	b=ZqEtPxBEQIauY6btDShuut+0/ms/jcO9OGraPmhGIWI5cDkQxQa+ONTqAxoPi4vc0
	 u+43TouAUmPHvTKnXfc/2TVwm99r9zQ/QYI3poVtdyFnNH7u5LByaLrBjiqeWTIhEy
	 JpYsAC4kW8CZ1drU9FQ+m5BgEYuh/h3fBnmGganuFtHNG6tyN+0SqiiO7rEXotVu/t
	 T0HpFbbiWBlwIwjlvNgfMaY5eNajRljiw3L36SSPOtmDvqX6fdqUfOPPd1UFSUsnZX
	 1nCqDIu5a7x9Q4ExzaaB0R8bTicmUW237ntPOM7bcj/9V1OVcYwG2lIUz1wGQ+Le+7
	 oXOJ1C4kA2P9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1010EB365D
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 03:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177250769364.2253.1371880778506292020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 923487520d5003dcf69df29e1db10cba395d963817064025c3a9f2aa0997a7af
Date: Tue, 03 Mar 2026 03:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772507693
