Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E4A226A1A7
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 03:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780284274; cv=none; b=XH3p2FJmfByLVB28J8EjZSb1AWFW7V5HKzaQw6cvWIvqJ/KbXBLIlWuX4RPJ9epHMDML9TYqu8CDQ+jM0ri8JK01EHhRviZtzdbAX/MRs7chKGeGoxqdIehUHYcNKFkZ9PrUPSgG3sRADwiz2KzIEvy5L02X3bVxB7gK+nBpooQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780284274; c=relaxed/simple;
	bh=raQfzL86ux9cRK3QU0R8JuNNeJZ81HFvOtNlXxKbilA=;
	h=To:Subject:From:Message-Id:Date; b=DnJCVCWp6J8AFz1u8JNwmNfww22RBVnreI2gpbiMjPIbV9JWpOzQVQ3OEfFNlJPB3fomzZkIcpjPepR5AwAY/iTEFg1IIdCqw/RdFm946JhijhAx34NOX0p3zKOkpfj0sZc3VZBqinN877iDxUh50/MjdTqGGoQEv8iV+Kjbass=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q4IUic/Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q4IUic/Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3BC2C2BCC9
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 03:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780284273;
	bh=raQfzL86ux9cRK3QU0R8JuNNeJZ81HFvOtNlXxKbilA=;
	h=To:Subject:From:Date:From;
	b=Q4IUic/Ztjb5NF0/+w8csbrKmxlRO3K2Mi3LJbPmnb9HQCDedOHO9DWb0ZBmvRUrf
	 mmjFNrv/wuePsR/zSLxjf5sx8h0xZEoar4AF6c2KgX0FFzqmuFDC6rrRu70WUMYXbi
	 lJ1e41YPJ8D6ilSithrZaUrGVtnVwdJ18N54Qf5j2vA0+I5sCW7H+nNEpWIYHMBgPj
	 8Dmck9HEubAHUJUDsm1fvS4UNif+qD32bsi1HI+Cg3q7OIkrqLs1sairyE4IhvNW7Y
	 qZEWrQ/jvfCAJaOLXlDtKHRSfKi8kXw+pTAJvVFW8Bvo/zkTcCUBZu+Ndtl54mDiTg
	 DLQ5eUpLrRXiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCCFCCD5BD1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 03:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178028427374.3067.15622057505983790246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af854a7a440c0be9041e728dc45a953a885a9c277294c7c54cde417c4368c107
Date: Mon, 01 Jun 2026 03:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780284273
