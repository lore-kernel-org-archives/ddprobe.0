Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B70617F8
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721867154; cv=none; b=NigpTlkMvS/tCnO9Vjn77NGOTGUiFh29DsUMYe4hT7mJ2UPFbzrlVxU3ypMU/Yopkw7Kj3uHOIoGUWsKLA4d8uUr48+Q5w5SbwA+RGcJRZRNjE9DvZlZumJPNrfFp8t0yxg1exuhQ8sPK2JFt+N/Yr8ftVzJvHnwTu361mhyQ/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721867154; c=relaxed/simple;
	bh=/rB0gzfS8mbugXRR648kC7Wxrvh78zOn3ga6PNaGYKc=;
	h=To:Subject:From:Message-Id:Date; b=DLDmvahPQXbEw1YhVDK+lAVpfOhrHS6ZLAlYKccoTBF2BEOg7X6Jt+skrtvs4ouFZetXzRHv/kgKbY3tPuOkEMOp4V86YEt/+bqb+YRwGSGx3BH80o+1Dq37s8Y0blISfoPkgkbyXFT3yJEGPELzVecapQ9tmwPNCoMv+e5qB/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tVTIfE14; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tVTIfE14"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF0E3C32781
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721867153;
	bh=/rB0gzfS8mbugXRR648kC7Wxrvh78zOn3ga6PNaGYKc=;
	h=To:Subject:From:Date:From;
	b=tVTIfE14fXXjLQszoDBA4rBvpoXiftiaJjapbO7au2sGe+YdcpmX/7ZKUYGJdl1VG
	 G1GXRctR480wDVUPg0AYS3HzOG4E94FjdViesnzXxklaIACE3nlxStxakZJQn1NqKI
	 ZSkc/YlOagogj3VFY9BLDiYpziJXviIRhxBKWK0qR8Hvi0u2wPGnmsiuUe22+GI7LP
	 aJ9czbEASyQfMoCn/62R+6cnT0ivGeuJGIvmowd569WXdpSr/jHn4HdusUNXsSUGvG
	 7qPZx6V2t4Z9D9T/xJ98r0NRilh5F2t6GZQxx06E0xi3gGjmpicZTYNpvuF4MvVc5q
	 I2FmhKyiImTrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D67FC3DA63
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172186715363.23898.2878237278965153682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff7e34f3837f05a85b14b2f348c92f4794812ebfc8dcb28b437c627e7c054128
Date: Thu, 25 Jul 2024 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721867153
