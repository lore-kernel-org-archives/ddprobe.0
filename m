Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42EB922AE5D
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748702994; cv=none; b=UpRUNJlT4a6W4u4qPxlc1R0AplWTNKAqFIF+MLO8Z6w/yULRt8LMkWoyTLqo598xHLVh6iZesgjXX2y1anUTKs0J9rbDrBfeRKFKcwC2jQobrCaTDOLdxYphid05tkL/HIvxyCL0zBM1LWDpbzsuGJSvmSC9XuAjCaYn0kM4T9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748702994; c=relaxed/simple;
	bh=xee1KO5U7dsNN/OIgY4XcXpPF3St+d5TEtf6rJ1oFUM=;
	h=To:Subject:From:Message-Id:Date; b=AkYVA8LZRPFlwmCgauuwO56FmLCyaPReg4NUbG5mlx85tEPCpaKLYhqnysDVkngsdwgwjMCAV7WcFCQ8SZB82aCCsmGcnlLva5TeLji5VC6qBEpoofTGlbf5vRjnJ5qLoDUQ5hF6PPnILq1Aj/m20cT1qcGkz2q+jZHM1f/2aWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JboMw5cw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JboMw5cw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89E2C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748702993;
	bh=xee1KO5U7dsNN/OIgY4XcXpPF3St+d5TEtf6rJ1oFUM=;
	h=To:Subject:From:Date:From;
	b=JboMw5cw+1OSXIgtYs+Yl9xTtB9Aoa+IkzJIL+kq72uaYMjbmggOn3M77/DDkwf9A
	 SUJkla69wDmaQLpLOV+/hx5RkmGEvpnSfqPKoT/k7QtwUlPC4Zdu8KKu1Bbb6Wv059
	 LApdp8yXL9/ZnHJfM4z+nosmvpwc0kzEg8d3KZbFo5ETk/epD/eRf3iYIlRUesbFRM
	 iPLx227QVrFnmf/yEtFLmrryuL2QAj7yH1wVf5p3kSOBlcLWWlOQzqhTx2CPtCwGro
	 cMbrrPN6pzuXOUeHoWwer3NCvi73PTUf/mWudiApKlSxIxK21FUI0HN8vGAPIxEnG/
	 S3Bhm4v254VzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949E3C5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174870299357.16323.6742487463379340323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2258d8b8d916cb1173fde8c2d916e6dc81f4f34cf7686111e661b30a7420e26a
Date: Sat, 31 May 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748702993
