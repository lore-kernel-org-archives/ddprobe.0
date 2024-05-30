Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C172219F6
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 01:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717033463; cv=none; b=Je45rAzgX+PlwEZKhq174JP8E1hKMgIrivPF46J7gwlOEhgp+y3FDzzHB5djnAM1ncszZ/RrbehsIbgnHWQoCKwn/Qtxs6RjR9OXaJfq7sEEZb1ePBSWfNty/IQS/ejIRsRDTvyGSYcARubI3Jf+mQKGYe3b+bAjdofzVsl3H3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717033463; c=relaxed/simple;
	bh=7g+lwoqslQRQmh5/sF84xcORgXH8wa2t7NJEqBdsFV8=;
	h=To:Subject:From:Message-Id:Date; b=oiLKkIZg0uFwPaf/I0sV0cqUA0YMkiOs25OIqhA2SZDgNCsj9vEDpXTSTuUPU1jVOVh7Qjc2pNbbOfWiTY+pMpdmunYurxZKSGN6393pWPwX26sXXidWIFVoi+RKRR2mlewywH7sRsC1ZsAsBw2y1fLV38SPMfAfJkN+7LluCmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M63tAJCN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M63tAJCN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4F0AC113CC
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 01:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717033462;
	bh=7g+lwoqslQRQmh5/sF84xcORgXH8wa2t7NJEqBdsFV8=;
	h=To:Subject:From:Date:From;
	b=M63tAJCN3LZ+jDgDfyAjtXAC9TFwMIYLR3v9J12cUFB1rTp6IPu50JvoLs/4zFthM
	 fkt3FBT3y55ZCRWgymGw8GG414A52ox5/oU+J0gc+X29kw044EqtzeTmg6Az06oUc7
	 4pWmQJW+TfOEkDUhN58Y8QLvHb1o9sMj8d6HIe7yeXkL5z/pfUmicqgWj2bITuJvIy
	 DqWfEfls0cOoYL3qlx+5x05JgxnwS9ULL+BTGAuEXC05XkDg3CS64r2r70uV3XjE/w
	 5wavLWQ+vcJfV4mHnOQIoH/RiuJS1mjih0rnDnvJUWP9CO3TdsPx0cWsVdzyiGzZjy
	 QAFdehJ5fX3ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C574DC25B75
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 01:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171703346277.17281.10302532841780407623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ae6be8c42bf3a4abc2a9c6e658ece35993b9e2c97233d4ca940e3bf5bfd3d53
Date: Thu, 30 May 2024 01:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717033462
