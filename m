Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15A2A1527B4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759687795; cv=none; b=C5/19YxL33fhGg9EO4APASk+pvtRLPdVqDU+lmWcF9cGzO+dwK2+ygWNeheDErYbf2lEKrNblPruyCdG6fHLwO6cZ/h2bSbgPshBGzmjaVKlEor6WcadmGpkD0hSW6vaTrUIyyv4fBRYiVbwCRJSKf1tw42Uthj0hESTN0htVWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759687795; c=relaxed/simple;
	bh=aXoHPEGPBDQKsGqQtBfZHldDvRi26vN+7Aa/5IXF9u8=;
	h=To:Subject:From:Message-Id:Date; b=FUPgTQeYvsyf+WiEbuLzyyQR1NkMSEkzFr7MixsmxYDHTWiY85aB0FAWpmrRJ2MB/5oyQ5pIMXf1M19RmbTpTsus0zbUaNYBvdJgzGisHynI8GstkhJ/+qEeerUHRCbCN1cgIBwSOUriO5y5W+YiYqOzvXH1vSrfU2RZQXrEkO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pjwBT+9d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pjwBT+9d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC9FBC4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759687793;
	bh=aXoHPEGPBDQKsGqQtBfZHldDvRi26vN+7Aa/5IXF9u8=;
	h=To:Subject:From:Date:From;
	b=pjwBT+9dKtEvw4SlUKlMdgTb8huvShDTUXeDQ0qfyvlFI7dtfnFRr3ag/E8DcHtSA
	 trcb1gLoHlwjMmB7cz6JtxE/SUCaSsL7fqyJmSeSBZbp+eIR4sd8pE8zstfMCfOjaU
	 myvQJlChGdB5fV5CbVGnxhbt5TDDdkFrhyOAG3IiAJnYn/WJymrRKtIQbSoYL7KrFD
	 vR9/4l/nC/j3+f+rS8b9zY9yn929+0j4anoAMBLYFV8QeqrGu1xO9/XeRPgOIhlBfN
	 spn/se10dkd+2jFUziqYNUjBFOB7G++FXDetnYFISg0zjydblk1qwJ3uTpwsuW1qeP
	 VfM5k1WK0m/bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D70CAC5B8
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175968779359.20231.14933663681175958115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 520856db7025ab77869ede71d0188c36054bd86d54fca314cd2562ceb26b5c87
Date: Sun, 05 Oct 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759687793
