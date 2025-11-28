Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10D6530276A
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 11:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764328374; cv=none; b=Y8aPtxt/ECXvXlp/wZP9lZ1sqa8pvn+bMZVJLP8A9R9SiusfftctKHLeBPcjRFF+7aQLeTEOj4OC+Shsk//wBnQJ5oDMMp8qe8aPB5smIwGLokGouQJPcXSgvvRaLGJpwEfciR82BNXjiSadrkLmCTIHd0GTZ9hIoPlfvghrOAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764328374; c=relaxed/simple;
	bh=ry6q6WWB/+PUsHOp0WOqlhlw+GfwoKmlECtyWTHJLR8=;
	h=To:Subject:From:Message-Id:Date; b=dWmZii/4Zwxg6OeT/ObpSZU2A6xgX4ugckFKObIcyq0SdLNRMwfoURdb9ZueHi4+XRIHSSwh1JsDje08QnySOS7ulIn0Mp4ZXOLzkFcxFJImn258qr3cwXNwMWdxwk7Xz//Xqd65BnOWh/vTRkg6rKsM/iQlaWYVhJHue2uqLFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sparlbnf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sparlbnf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5922C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 11:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764328373;
	bh=ry6q6WWB/+PUsHOp0WOqlhlw+GfwoKmlECtyWTHJLR8=;
	h=To:Subject:From:Date:From;
	b=sparlbnf5j/CIR/BvxZ2mvfiN4R9UNXGZTJ5YjmxHwQul5Th1+p7ld4W2viz5O3Kg
	 NJ8THVOOIp6BFPoqhNWJ6UWD4u8wnEksPW3igmibe2/6lhIUFadCUK8MKUEglMuDUa
	 cwz+RpxlY9FvONC8T8YxHMD2Df8SV5YZaZ8kehAzhKTNKh1dckad7CLSBLLNxzQSwT
	 yTzGS/+FfsMhK/3I9ppfZR6FN4MSr0wnEcub6BhFPrxeCoFyzm/3egws+EP4NxrW+s
	 xGUhzbIJ9yY2vhhtG9fiHNK9WI0EUWL9Nb8/Majpr6Smxs0Pg3befv0xLioyJBrFAj
	 80ApNgdft/Ewg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92472D116F3
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 11:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176432837358.19004.6425969682251230466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91eb71beae514efb98b9c49d0cfc720bf2b58e59cd6e600ed9c2f6d9b3675617
Date: Fri, 28 Nov 2025 11:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764328373
