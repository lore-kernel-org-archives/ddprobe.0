Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DD343BE175
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791132635; cv=none; b=r3IWLSR5pd9C0KYLsyY5GpA3XebbpGe0Xrba4WQWCiY2WGWILWQsx5MGU/5Q9eVHUYyxJZkZWCBYN73STStk+AEsBZttWUbhsU08Pb7n+U5jP5/A0EB6Frq2fOkZWD2yteImCTZ1b5wVBKINcgYC+R79wq7vn0UWMXRASnbyp0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791132635; c=relaxed/simple;
	bh=5IRDOpX6NCYd/58KDF9jkgSslgF2VZsJPEDTlFhRCj0=;
	h=To:Subject:From:Message-Id:Date; b=NlpJe2kJBp/2KiPA+TP1kba1WRV9Nf/U8xeV2sjhA9yZVKTSkzIDbernBRN2SV7Hd6XPO5VOieey8Dbuo+wcS2FhY0kyc0JV1o3xD9ibBj9CLEoJxt9kM16ky4JBomaoeIkjo7MRuwtXTqnhP5x5ETavPuCZk2h12YOFHFPcRqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NbI/B1GR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NbI/B1GR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA5B0C4AF13
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791132633;
	bh=5IRDOpX6NCYd/58KDF9jkgSslgF2VZsJPEDTlFhRCj0=;
	h=To:Subject:From:Date:From;
	b=NbI/B1GRz636stTRCYnHmQrDUFieQek3RWYvH/dUn5xqb0J30vbxXbVzwp0CPNvYh
	 HerksdlcpobyQyAOkA8lHDyZBMFkEBpCfl7dKjErkaF2EHZvC5C3ialB4/x+jTF9+v
	 AOd0z0BL1InQkrMEePz6gzwcB/3kwbWeyFRITMegVug5UrH8oPVhbj8IjgkLRA8BYe
	 SWpZfTm1IzN+Gdb/diw4gJFU/R9gwji8SvoiJQNQwwOi0cBb0tK1zOyPfumjfKGFmX
	 xS+Cs+hKpGA5m2qOHqfYOQpLrbvYpkaG/zK9jQIKfrAXED+MO1zySLUAV3Xf43weti
	 3nIqKE30ge7zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8FBBCA5FE6
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179113263368.29368.17083903461952704309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3f7cc37e16a2eda4d5b65da143f465cc27bccfbec5a6d6cf98ee8538c6c9429
Date: Sun, 04 Oct 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791132633
