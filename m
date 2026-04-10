Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2226B2D5A01
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 00:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775781454; cv=none; b=j6CU4lKoMx4Roo9gZW8RkSGrC7XjutTW74w1fmLpFxZfpG3o/8+KzqIZZ7GJjYC4FHZUSl8oLSfNLXFBzz5kPjp3GHioy+sffcWH2siq+2o+f7z42K1XF/EoW3pkUXDM8iFfoGY1y8HzLMc9AtBp3AfLh4StslshHF+hq4CMIKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775781454; c=relaxed/simple;
	bh=nUhY0ah2D1ygDzuVmcpsI7p6cNWh1x/RKrtxiNRMSmg=;
	h=To:Subject:From:Message-Id:Date; b=NqWLxaAKv0u9Ub51bfHo7wGLs4bjaBIHdoQm7iiHw1KcoI5gYvlP2b3QLt3ip/LN/CmLJPCGRTooulHoj0zmBeQ1Q5Jadng5/9d7Up4n5TR94pzVv1N86PQ/AKC52eDYW/uRVb42+tp0ko2YWHuawkvzmhuWyPNXEGokHlkcKWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nJNSzbsq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nJNSzbsq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB1C9C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 00:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775781453;
	bh=nUhY0ah2D1ygDzuVmcpsI7p6cNWh1x/RKrtxiNRMSmg=;
	h=To:Subject:From:Date:From;
	b=nJNSzbsqwUnuyYvafUfmGQ/Ery1mBKokBoXJtwQLh4+4d6X90oVj1kqShQ9wgHwCr
	 5zCP4E+8p/Nb48npClJrcyqK2eW00E6IkQYLm3YlypPqVIQu3sqAU+TgolWE+SGqYQ
	 6fmb5jM25qXNAenCyhhDzu4eLnpItQkZ1oiciNRNS7NJlf7xT0YWDxcLir9Q5A5xbz
	 ExN4z3z4Cxah8hXVj5E6Kh/vR90E2ul0tYXXnWb/tsqy67PIG66LtLZPjjfW0TQAvh
	 O2BrgMk7lUsQRfbKp8WXeZWpOIJ2kvTdw52D1Ecr/oc9yC5WKdcTfAjZLwZDX6TqJs
	 Av3aeT2wuPiLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A910FF36B96
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 00:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177578145368.15618.13217038222461419593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c40ed62c56e94722b2f5d14f65a91ce1c61ee093758f26e636abafcc6601c71
Date: Fri, 10 Apr 2026 00:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775781453
