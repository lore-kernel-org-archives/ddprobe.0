Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E53026773C
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758097194; cv=none; b=RKAb1rbteg+LkRotSvgXsEEZzkKImaYOnciE5iHSwecWvXwk93G7mAsb7PaoEgPuSsg3xp8kTV2yVqMW/naD762XcCiocYU5CoIkjA5D7lefRqLV3CcwCiF3upN0smMY1uPN2kxCgrKCnSfrOXx1hbY3uckMPxUNlZuYZp4pvDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758097194; c=relaxed/simple;
	bh=LkBBkSIIYEG51VibN6kiKP7ptEc0VmXTS2SI0YGDZ4A=;
	h=To:Subject:From:Message-Id:Date; b=I20ciM5d0BpHDf1+iqT0SWl3OZ8J97fin6N9lYqneqPPeEQlYx1O+KIVMXmkrXC+u8nmU8LS6V7RGLyIo62YVbi1HHmOqJugpDsODQ/a+L+6kvynLRr41VGtcRqnBfQCVcBpdegX93y+xl9sdJLFtnYsKF3C/CNR2wiG4H1LPRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eWPKBDUy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eWPKBDUy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28EFC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758097193;
	bh=LkBBkSIIYEG51VibN6kiKP7ptEc0VmXTS2SI0YGDZ4A=;
	h=To:Subject:From:Date:From;
	b=eWPKBDUyJzlJ1c2XRegf9kA9HvEsNFPg5iRvwwjUC/zx6c2+N2hrxqVr4mDxd3V2K
	 u+e+CMCOp0n20FxZzCho4CYL7mbLeR6BST1UXRPVe3sK3Gl3wzXvJft2CfBIqC0OiD
	 Kb8ldAPXWToojW66Bp4AvzLgrYPpo45VdqQYIhOXUpC4c37RuI/LuK356Snf611Shl
	 cvnH9SUFtWmIWtt2i7WVb5nr+3Jz2FiJjK0WNlxj9z7ll/bJd51j4ja1zN1DRbM2wq
	 VdEwO4zIWuojenpZlXjiz5p1KOwu3Y9qOGXYJTGVhXodx+wjAqj+kp46ANgmlNGmxt
	 0lJ6dBUNB4dmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90332CAC598
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175809719358.13564.15236905775440091573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25bf3d9e885a12a39de44a8f12b186dd7732f230cfb29a0e43a22d0e120055a0
Date: Wed, 17 Sep 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758097193
