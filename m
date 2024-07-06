Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6984617E9
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 03:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720236323; cv=none; b=BBEJF9+2DBPpyVDExB5UMFVnbFf7QY4zq+dZpAtBQT64UmxoXHPc+Lf29MHneBh0RBiLIo6mvpJBSb4DzZmhjstqtivD6raffboCDNQunHEFEDwOBJI82v2UeJt3QMtPHj26r15FK3LCP3FqceNHwOa1UsakKpSJKraHp1sf//M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720236323; c=relaxed/simple;
	bh=NDXL75KanzlRI5eupUPX+M+EvBavagYFd/dTB2tKDrQ=;
	h=To:Subject:From:Message-Id:Date; b=jNJ3nxtqlvp7QfYtjvTp1zaIxPJaC50ZKUOFA8x16Lw9YRGRWp0rySzS6v1uSxnwhw8PrPmPHl7sWyH/7zFBY9ZUXaGgKHq/gCgeK0rpne98ww0sJqgG4BgPmzVT/4+q2B8jmqZ7iiPuZTmqb+EHkHNy0LuLPftJVHqxZsrQrWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qCOGBjjF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qCOGBjjF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC110C116B1
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 03:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720236322;
	bh=NDXL75KanzlRI5eupUPX+M+EvBavagYFd/dTB2tKDrQ=;
	h=To:Subject:From:Date:From;
	b=qCOGBjjFl4F81j1nB/YvBCKvRbrmyo8D/c0lNQv2+wb90qjjIzno8+rMMdUVJ//m3
	 e0YLKMnKNRD8sDKd8lrlWtZQLDQx2jPCYVYrBawi8UGOxwvgIZI/lM1hH/Sxkce323
	 FhxjjMxt5dHfshKJho7v5AGutrfdGgNY1jiY2SkHHuVh5JfDmy8Ml2av1Fx4T/Kk0O
	 cL+T0qEFolw8k+ABX6g8X64A+CrKDFSnTyMUhyZKoIE4eCnVQUO+FwGji0UDko9Swl
	 WnANLANlKkpIWHOtFW524VJLV+Z+IDmS5vXDEqK2gglJa7RCVcYhrjnQrUMkqIANim
	 DVBaUPmUVx7pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C101DC3814E
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 03:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172023632277.31841.9198061580675856420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 616dc45048302b8a43dbd97ce3ea79e1920c2a309f6f7aa51f436666846f0405
Date: Sat, 06 Jul 2024 03:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720236322
