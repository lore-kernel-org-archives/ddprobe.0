Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42E0B288A5
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738486554; cv=none; b=YjS3aNQjt/hzHmYFXN9c1Sf6vS+/D3CYokjMWrVZu8gJJFmTiugVwo7ZoCpEIcZI9IIxf7RMkFk/qE2Au0EdWe00OTtrtdMrjNn7R71X/eQmRjMCGRdTd5nkeTDc96VO+r0uq4EquVBFHe5fK7AQUVa/ffSAffaDodJqr8ZEGnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738486554; c=relaxed/simple;
	bh=AW6EUImWYvbWjvyDEj9Otqt3+ij+E9TxY19EMF6XFTM=;
	h=To:Subject:From:Message-Id:Date; b=pxh9M87VdIpkRcAOgak4ldJtws0WYlMFNjx/VlgyGxjO84f5Bq/OLYNKCXCr+xME36BLixbdIZJ9rkEPrlveoozqny5hKbrXAGzLO1lqJ68crBhZN4bWvjHWkvP1tBAF6BgASs/sn3eJ1xkDiUdmhf+yKMfngul+4kY9+FnienA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZEChgiZp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZEChgiZp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1362C4CED1
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738486553;
	bh=AW6EUImWYvbWjvyDEj9Otqt3+ij+E9TxY19EMF6XFTM=;
	h=To:Subject:From:Date:From;
	b=ZEChgiZpNxuqe2/W57xIIK9kk112gC9DabJqmjNVBFS4WhQ3mAqhP2I+4QhGYIzkV
	 zrD7C8S4Ov6qbEdPaHQb5BS3sLe8izTjVCVnO9Uji4Imy/9fPYlAfxUn1fR8Vzxwev
	 H6KjSLZJ2V+I8kbKJgcPah0MLrmlxlUufAIwJqQ5BICjR5SDdkOY4lFRdoIGGNnoHA
	 t9FO6Y09RJ2VVoRPYa1pBp7ncIk63uSILhz+7j5mxfhOhIQjKGPK4P1wqaf1m2yRrb
	 aLiBXOzBkhzjm9AAva2vIwkLJBWPs5wRCB/sKiZ48d6/nk79G5RGjUxfXktlLOG0Iu
	 W2qXtSlVyuP5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B3D9C0218F
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173848655358.17748.14579454380018264984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f190ca50c52be87fd0d5173c5f68ec299796308b7af8c5da8468ad28022a07b4
Date: Sun, 02 Feb 2025 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738486553
