Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B1BC14C583
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 22:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720649243; cv=none; b=rJVELRHUX4OPB/88pWLlLJIFOwJnxkY4I5Ewa7PfDQgoIccZIFx2Mn7d0vmMfOjIpui3J/MgK4vpXsIaipho9g5AZzIizfGTA/FrJBBs4ARZVZCIi8CeMjxWbDVj53M2Hmt4vCWbsuQksu0wm6ZVYuGZj28L6T+Spr74w4IsMFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720649243; c=relaxed/simple;
	bh=z3AzkQBriWl+S1h1M68NWmcl4N/ngef5w8dWULz88ao=;
	h=To:Subject:From:Message-Id:Date; b=abAH2lH9O9hAQQSwK4OHLxwhri3i6OOV692NbrJQsqxAy0fqFkGahQyE5iVjHMbx5M7QlgSlW3lWTKsxaaqhIBeaxtKyf2mrev9mBFUgMSwVUk7fkdRMZ5+DnvnohMy8ot0akca25vEKg5HE2c4zD9N8L2WrV6NYOKgcDAfBkgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UQHZ7tQQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UQHZ7tQQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF97DC32781
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 22:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720649243;
	bh=z3AzkQBriWl+S1h1M68NWmcl4N/ngef5w8dWULz88ao=;
	h=To:Subject:From:Date:From;
	b=UQHZ7tQQtY6Jd91nmCUVi+MRgle/RTG4ppHZryeAjKLPxUsx00DpMmyzmVPgOAXWA
	 kc/oni3rM6/rj4+RU3MBbnWDCxNo6s+oQNoS3kuEP7ApandWK/YYWLUS7JA7UQX98c
	 02Sn+fNC49w4gMqelQSvsxKOrFw3faVSO7CTJfpDX7dtKE2N3Xd2MHZtol6vguWS4D
	 gfo8+kRcQ/R0EfUDKArkCuXolwpBdgridF+QEGmOwXEb+LVboYdkq907k1n5s7bBnz
	 MTUVVPJHjFTDdzry97cx9HoGlQs4ADVylEHTVaZamROavvQUXDtpyCWhgSwKqMnREp
	 an7nNI/FbfOCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8C77C3DA41
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 22:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172064924287.4771.14204675287851589321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d4000aef6da7257e3a11d7682f3f423d61b8012af678abb9384f39b38305e3e
Date: Wed, 10 Jul 2024 22:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720649242
