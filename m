Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 659E96F316
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 22:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717107263; cv=none; b=RRM4e+N1x6pgvaK531RSZTtskfSikaP4LFQ9Tmcv2q2Sg+TPuM1GddJccYZe8+1tZ7UqRMDLrHn7RvRdGo7CLfesiBYW+HsR8gRlrEpRiC6NeJ6yeCrxEVt0wN9obkrPG19V+MH2RCMn3lq6IH0+nL2KL2XrarKhx0uPJfyLYIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717107263; c=relaxed/simple;
	bh=AR/5C+sy3E9BkZnJC/ISTeq9hRns2W6bAofmCv4VTeo=;
	h=To:Subject:From:Message-Id:Date; b=jjBDbKJnq23SEDc8mZw6dkNK0JjbRPYe6SLwvZ5QWiMfh8PEGU6PYJz7c00wuYwA+5jPBx2Zr7w3sS1CqPWQDLryBN+8RQbkLVmt46KL1OV2Dp008siUO+nLaByo5u1EzaHQHJFfDrvVQb/0UrI00RNE5DltANIxHcQrB3Ah5As=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fo4F5ykn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fo4F5ykn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF157C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 22:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717107262;
	bh=AR/5C+sy3E9BkZnJC/ISTeq9hRns2W6bAofmCv4VTeo=;
	h=To:Subject:From:Date:From;
	b=Fo4F5yknLD/U45xQ+FJM9JOcLwQ9n1yPfmBYoWOeH6akQ54x6yoEjQV322qUSBdxq
	 zD09kCi0lfeVUEjspsg2wQ8Iqus3Arzuik4rsEMmgDt2YtRKukMb/zxJKQWswrlOkN
	 Z1At9liH/rOxLR2CNzW8GFENoy48sOGHjLZzpJyd8wDEc4FDVJNsWyue5sxoT6BZhx
	 RsrclRp19/U+Yb/b01LeiSoA6mUf8NdnTQfizo9JJEMY9MFH0cQGoeIRtMUvBzWv2f
	 c9AR1bwg9nD5exXSMFStN99DkYVdkECl6mYvKbVeImd2dm0+9aY2i0tbpBA00367D6
	 dKkcgArz+GcAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAC29C25B74
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 22:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171710726279.29848.2086198834719503593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8631fa5d168fefa39638957562c0d110ccf908d0e3d50b6c1784390e6257194a
Date: Thu, 30 May 2024 22:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717107262
