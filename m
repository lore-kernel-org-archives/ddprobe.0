Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B63412D1F1
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 06:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770704034; cv=none; b=m0jpIT6ihG7e+xVmFmiIhcyD5Hi7xVUhiD9nKiVBD0WcOZmO1Nx3zydml75DLGKEmWyAOoP+z0GRAHThR/QjZVS358z+Eqg1x7iVP8vKoGM/AA4kHIAg1VdqHh8Q6tQJpOmyha3Fh5GTwVe4EcZis9aiMv9h0/TDffKifW/1VHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770704034; c=relaxed/simple;
	bh=MIhfvLOvO6XRCWb144e3RwtEOp5zUfUtnC2oTK3Yqaw=;
	h=To:Subject:From:Message-Id:Date; b=QGCFNw44+8gdzY8oa3+Rq5NGmhhoWEKXVc8JrzwzeTFiFfWcRdmgeg5oRftZ/dtdnQJZDGxyO5gzJ1c4xc+c9TvMk8XbI4qyp9+N5e57DGxaXCIUXD1pMUZ1UrLVUo4+0kWuQbn8pB20eZGENisLF2waiHfOij5OQSBRjA9Kbhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mw95lPHj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mw95lPHj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F42C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 06:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770704033;
	bh=MIhfvLOvO6XRCWb144e3RwtEOp5zUfUtnC2oTK3Yqaw=;
	h=To:Subject:From:Date:From;
	b=mw95lPHjIwi/iB4lpB9DHpvM0DRO8Qtoy9EuxLVxXGXhMLppCzdqTD+rpnRaZn25E
	 lbn3P8MWMQfCWerSWgTu7cTJWyPpd4fcqXQ+iRxiyvG5+KgIxkWrZMCvi8t06zbC6Q
	 IZVOr2UGHOsIZlvW/Rd7lRViExdp2L8/xdIHu54idYvuOncJ92I8fYWpb1Tpc2MoN5
	 reeRR/cGMvhcvJj2N2MvpQ0Tduen8Atgk/ppDc3zhBxtFIpZJK96/u50s/CFAMpJNT
	 Lo32IB5AIvSkxa5wIxWJkmLf/G0PpBVpGP04zUUctzguxrTgJvIj5XnFqNmnPAy1lx
	 oCAm5QEW+mOSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925A7EA3F0D
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 06:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177070403358.1752.7764761925465054618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9b9076508ebd289dcb518cb7b234b4a995069008dcbe63ad008f599cbb4c2b0
Date: Tue, 10 Feb 2026 06:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770704033
