Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33A452C032E
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 19:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769975034; cv=none; b=LWyx5SoJIoaiYnWaITLcpaJQEU4PqB7ZfrHAlj6jDpZh1czgN5E8ao7Rzrkxbe0n6a1ppEM2Q1rxBxg2ikz9RA2E57JPVr7Rl+0drZ2xCHRdLg/oYgAtFlUuVrXLZiGinqkgI+d9FdVtY6OALBlwPKVCDUAXiNZx5MtV6T1d9LQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769975034; c=relaxed/simple;
	bh=NoILA+YLyobDjdtStrDjj9CCo0ASaIwqyqDvOC8loz4=;
	h=To:Subject:From:Message-Id:Date; b=uKhgKOWdT0z6i8qtajv7Vq/aIkVsMXxIZytHgF7vYdHhq7s5qSlL3PijIP/LQCDYE0WycSRyzbaHsnetmssSKVi822+hnvEmbuu/a8UPf7EYtYC2UyANG0hW/wmHJZbnLNMioAb8CaOSewzUDEHk7uNKwE4ssE8SdYF4Fz1N0JU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mQwso+ji; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mQwso+ji"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8353C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 19:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769975033;
	bh=NoILA+YLyobDjdtStrDjj9CCo0ASaIwqyqDvOC8loz4=;
	h=To:Subject:From:Date:From;
	b=mQwso+jin2rxmlETWX5y7d2KpwW6APNqx38SElnki/FrbE9RSemuUUKvXIhFQaqOl
	 dmvBEi5KEbcy6W9Fdcz1N7a430HKi7NQZw750FeNYvFEsiihTR7jPSCnIQy8Npo14x
	 kVI2vkiBWuwr8PQ9XTvobL3xaUMDXX1qcXFo28cZaeRT/u7XBOTpDC7zf2bJPLrTRF
	 iBZ3+f7k9WCqtBjkY1OWSHnee69OAl7vGrTxRvqyP+j8UePecT/n1RDJlqfXWBWgrR
	 3lnQpDPDYfdZ9W7Q7EX+kjA1Lq0y5hnXo19lSp++H0MZetg+T2yzbxpRQqvAOWZGdT
	 xTqeuHfFEwH4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9350FE65298
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 19:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176997503359.4102.13694934106013976359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02df0d48c055d72fbafdc5392b78422a9db750920c53416e24c58986031cc53a
Date: Sun, 01 Feb 2026 19:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769975033
