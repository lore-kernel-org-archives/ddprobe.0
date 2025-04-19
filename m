Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 430441494C3
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745086794; cv=none; b=T9VM0MYkk8Y2YwoiTHAvD/WskoO/o3grXgdJuiQZrCFQ+9o3y6xEJp8u+jAHTq1WWw99txGnR5b60qcU+XYSzpHQcU+pGtrDmIhhxzEdgxs6kVmPy1RJfgMs82rehxE59t+VnvVa2dGcbK1bPKQzLlb/TifwIrdqJetlonCNB28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745086794; c=relaxed/simple;
	bh=ZlnOJL5+jh031d8Q45dS3gKfwRgUgEq+qjnszxbuebg=;
	h=To:Subject:From:Message-Id:Date; b=f2WnkrY/qzcIGMNdmzMx5j+1d223EQgxRFv4uBArv27GNg8Yn9deAoCqf671dg3GdbNY9KnpWHsM4WrblYle4s8h1f/CKdnvJw2S3WzyJ2P7I8K6F/7KBx9pQwdKjX2AczSPTFdKglSw4Qs3DU7/KPmEd8oaYgnfIgdgltFrenQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z9v5EjwQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z9v5EjwQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEF40C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745086793;
	bh=ZlnOJL5+jh031d8Q45dS3gKfwRgUgEq+qjnszxbuebg=;
	h=To:Subject:From:Date:From;
	b=Z9v5EjwQgWEkr7AjanObpZqGRCUvX18BeeaaAWbmGjlROlodTieuAHobtQIRdBf8f
	 psw+1CRZD0SKo6xHVuARTqeYsclxOg6rggyBeF771lbcPhhhrQRvv8d9y1Yb3QjaVQ
	 OHrrj1ipbbgPrjb7Ox0PKc1Ierjcf6TRbtuHYcmLYSHzlVoAqOs9vY6e2W+Ty4xTBc
	 XJU9/OP7ekNpv2lyyTdIZ1etcBnt/otlKnLiXvOjAYAjZD8TJIl9+d7DNyZsH6cm7e
	 bBWtCtMrcl0zw6cXNxDzH2FA4KZua8li75+Sy3fUlDqFU0lrwZ4Wi32U1EyR0vptTt
	 P6+Zww1cgAWdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ACC8C369CA
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174508679359.18793.18414366183584544807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5373643ed045dfc4f3cfe515de4f9df73ea39a30be45ea3cfee317fa26420e6e
Date: Sat, 19 Apr 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745086793
