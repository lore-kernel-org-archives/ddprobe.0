Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B70C2905
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757377794; cv=none; b=k9A3q1KSo0rOtmijFwvQYFTuYOya30VxywsOWWLoC5QpCTuKSW/YHvPiUuzs0hztjPlPM2bKv0fqN5GSPcMZrG0HRw3I5miVvNFKUjNujjrgp6JzQBs3GD4hEVQaFSQG9ZldgpUQTRFVn8EeRo65K0JG6+5tXhuEVffBziwa5jA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757377794; c=relaxed/simple;
	bh=khpkNYFIJH0gG/C1kOAcmBYszDuGszPCyFInXtNggxY=;
	h=To:Subject:From:Message-Id:Date; b=W8BnVtPKPLYl7mc4kqAsKGPqvGnyTpNcrNfJiR8heOSgoZSCqB3GbHuga4/g/LXfD85Hd22YAoaIFlE6NCkpp7fwTCyweRqwjpjLSOfo9cmNpgo07ajrpfpW+0byOrJ6h52ePAWiP4E1MyEVO+K6bEDVa47cH9Gquif+kTQh43s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bhT4u9rT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bhT4u9rT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A95C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757377793;
	bh=khpkNYFIJH0gG/C1kOAcmBYszDuGszPCyFInXtNggxY=;
	h=To:Subject:From:Date:From;
	b=bhT4u9rTsysytSYsODx/3JU6CTUqEQTxQ3OzhWlZ+38Tq6wY+I3MLcEvCYbWp4F1K
	 Szyh6C2D4brlfkh9wQ/B/jiidJziF4c6qwuUyYkuaViRQGgxEfE6gcUyMqlK5qzSaV
	 UVIWWr+giCjLSwGmDjL9eyITlcki/Jp17T1p9khlh2e4Png9XUFDO62GUml+18Psrm
	 Lr9qtEJSR/Ah6jgiF/1gDxs9KfMrXq9jcqwkPoBJ2Gm/pDt1OMyr05/W5Cao7VKWJl
	 rHbY3gNprKjjnHdzZmwv1v1VAJu476vP+CKZcZa800VWTlZDJHjYs18G9ESDC30HIY
	 IAt+okbA99RMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A46CA1016
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175737779359.3153.11450871864003304437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37672f91daaddd44bee5d9f4a536aaeb57ce0fb6ac646c8452eaba4837473690
Date: Tue, 09 Sep 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757377793
