Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27570DF59
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762706394; cv=none; b=ZaspTI5oEMZOon0w4e0MYfmfDEWRFWSSuU8dFUa8w81TRpysD6G3B0JpIzYz+D/CWgpGKprMn5BDQEy0oT0r8cRidHF3BmZiA51+uI2GVGEat1Ej349I/BOVgWuQqjyQRpPueEhQxXshygtlFMHvT3RbibEvLDufJU7/UEHq1dU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762706394; c=relaxed/simple;
	bh=UNLgnFqZ4P94I5RCIPADsNqK90HILmt6nSTIKxMuxKA=;
	h=To:Subject:From:Message-Id:Date; b=WRqmjvxigIR5wt7mTCUSr1zrA49+lWHIThZsgqYnYe4Kgx1l7AZnBUAEblQV69QziSuo4NVm+AImWivYWNo7PJCEr3y4MRzODQGgO0fq0bVTU0mCsvAmvxGYleUKz5BGsVqhgo+Wx2RPP8Ff1px/8ouUDIrV1Ax03r873j0kUng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MYdzufI9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MYdzufI9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B257C19421
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762706393;
	bh=UNLgnFqZ4P94I5RCIPADsNqK90HILmt6nSTIKxMuxKA=;
	h=To:Subject:From:Date:From;
	b=MYdzufI9QapG8hFTDl2ww9od3ueQqifX7YPoFvDjE5W3E+yE3bf7cMJAW5KclSK5Q
	 2553kJyie57A9DrJQc5FrCBCaM1XJ4pqYdDWoHqVDMlhrSpPUZV9VzV8ijhhPj1+m2
	 bFRn9Ct58BYnGE7SEWJnezqKK9y4kmWLyV4s6DrvNUz2AeSXzv27QxJjzIQAuQJfhz
	 k2CqDV134b09hhMhreFrwTkj+M2yDzzaIKI1mEjIWn+Y20/kp4qCG6kg44xWqyKXjc
	 3JWCgjEeXXAzcVsoPfCz68iUwqVkmFYKiHX6724khvNNSf332/sWkl8iypU1qEkE4p
	 fq5JrRGfL3/yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2F2CCFA1A
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176270639357.10322.13708373546956412110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b66482be8d84f15b89bca62937634cbff1c2142e282390e146c04e6350f0701b
Date: Sun, 09 Nov 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762706393
