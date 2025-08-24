Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D82319539F
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756067994; cv=none; b=H2V2K+6biqILRHeK0KF/rrQLfAkKqqBXi0e7bR55cCKEZT6/yInNGDN9JeCOpMHLuG1GPHbbRbkAQJbQF5EN6nAxbDgOOGPQSqxd0LZ4djAov3oSOd9PdQi1tNbZpr/vsWN2ZmneSGB3ml/CSVjgzzBCiqIIAHgkscAeIBJfJE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756067994; c=relaxed/simple;
	bh=ox+WxFG4NMo65pR4lREAfAoP9wfeVpG/mgK6FkKwBt8=;
	h=To:Subject:From:Message-Id:Date; b=Urv0QYO5GYGhCV8R+BcqE5XxJA4PM1hM6EEkWoo0Q2PEIdPc/dKbPI3FgzKzbLdhp4IOS/4rdvC1j3tA88hilkF0Ar1+nuZ5Ls3r0qIH3nqevXVRvbravFIMmrvfiOzyb2g//jr9JozxZgJeNIhv5nF+oG8r0OEQmUKx8JHkCrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m5tE5VTi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m5tE5VTi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A82C4C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756067993;
	bh=ox+WxFG4NMo65pR4lREAfAoP9wfeVpG/mgK6FkKwBt8=;
	h=To:Subject:From:Date:From;
	b=m5tE5VTishxNNPVni97vZN17Q4Dn+vJZ+XLh+ogkwjVO8FvrvsGUaR0RN/MI4WdxV
	 nPWrTM6LOACCEoFMxiiRbnBXEOK8mkVscdsjG+lllk/YGFyFdrffKJBisISSjWT6NV
	 P0XAhM5ZQTV1PsCCgHGQhmYwByz3fqv8X7I+LwFcESxqEJNRdpZZ2UzZlAU3DdI7iI
	 3wgRm0OMHXNm2Y3+wKjGJLK6s7HT1vBoWXKQfEGVnrezabK7f8XyLjh8x9BbQ6Efd6
	 smCL8wWlIzg0jcStNh0y72vnv34wwYLZh8wy85/eSLSzf8W5I7Ygvo+ks5NGyy8dwE
	 VAmC3wkBi3exA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CB8CA0EEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175606799357.8242.8987498251535501102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85bb09cabfae6c88eee20d8662212ef42b1dea5550fc4b79412fa2503ece43ef
Date: Sun, 24 Aug 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756067993
