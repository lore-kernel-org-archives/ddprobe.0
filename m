Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A97D3F1047
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788030034; cv=none; b=F1bdUOCibNbjbPJqlnLmjULlVcmcd+ZZU/ehCXjZq0ulnOKhlbtxe9xnJVZ+i0zScKRHDRhPnRqFOiHTOVbCXt8hpB+TCwnn6QKjGtuXgkOZ59FgzLDYDPB+vgHciN01JAAVSr5QxRhwx7/Vvj4PbXm+cTewq1laeIIpOPpQJaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788030034; c=relaxed/simple;
	bh=o2nsuMwIv1Wjs7dqkxGG2Y13/n49fMJS3RFpFiu7xyg=;
	h=To:Subject:From:Message-Id:Date; b=sAws74s9gsZo/txmRzpDTr39B+JOmuIWMgaqvUg/GPBI7bz7Yyf8oODnx0aFcnpJD0hTWfMUt41+zPAd8iDC/9uydbT6MPqmPy4oGPev06+ykWUcVXLqAaa297PfMyLjJrpZfIiIbGSxAdSqoZXu/nwyO8VOGE43uOvBfwopU4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b2nfYT3+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b2nfYT3+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D34A1C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788030033;
	bh=o2nsuMwIv1Wjs7dqkxGG2Y13/n49fMJS3RFpFiu7xyg=;
	h=To:Subject:From:Date:From;
	b=b2nfYT3+UduxdydQ9AkQpdVMB3L3icpK5s9aalgWM+2yf86P6HRllD0A0mhb5bh79
	 sKgD40r8fGrotJKETv5bgPFTUhI5jm3qnz3SH1q8PO8UW5BQeoKeyTPUmBmW2jJRHO
	 FdFmrE69MVasdi1XMnl+9D28GgegXQT/Disa2V/BXHoTJ7EIqK94syJTUOMfF8MFlK
	 dg+FHfA5JbuKNSnJGdT3gi0lWKbpJhm2peV6PQTKFvYe2ngFG3duwUCV0j4kwtuChj
	 cj+r70P+Kgxnesji3DLdwukB/tkbIeeeWaJeyFGjjj0beHw8Np5b4tLXvfIQ1bQAzx
	 5Asvlj6wD5lpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB11C61DCB
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178803003368.6103.1573041427787241358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 891fe7c17af4f12da40526d880d2303e5d3301715d4ad2514602dfdea3c34fce
Date: Sat, 29 Aug 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788030033
