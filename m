Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2572821E0BA
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 18:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784399914; cv=none; b=Pf3h3Y3Q7f2iw3bmyb1nyDXMf6fDsExZ6VQcPWGrpZHcs5j6Ms+ai2HJY6LlcSf7DG+qYohDwdY89WAyHp1C9w/zj2aRj7uxGxuD+Y3QhabNoieJUjzyPlhthPjAVTYXFzXFxy6NSP4bV8EkHtfROGGyqFtx1gkV8H6nJAaAD2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784399914; c=relaxed/simple;
	bh=q0se+hIq9iKgrojUUsjJP/09Bh0aRLShuMHFIPV0RjI=;
	h=To:Subject:From:Message-Id:Date; b=uqJozqVP1ajDKE08p9W6h4mMcS/MWkmNkdzVDKoKcerz7GM6WMoK5M69DkpPTFCiHTmk1IKmG8qCk0l+LjSUXxpH2giWTUEVZi+A1+cgcZqWO0Ows8KsZ0dSK7BM4QpjI9yAkedjIlWHg2e7kvwQozvAMGvJml1suFHN1C6yhLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XDD60xuQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XDD60xuQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D37CEC2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 18:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784399913;
	bh=q0se+hIq9iKgrojUUsjJP/09Bh0aRLShuMHFIPV0RjI=;
	h=To:Subject:From:Date:From;
	b=XDD60xuQ8CTK/Ub6gytXMXJvoZaWdZAKgSqqI+GUmqQGTNNPxeb51aGN5yBwO1SaU
	 X62nTEN6us3owWskTwpNhH/YAMned4KbbOxc1Wjc3a5LM8lWpck7O3JjhWsZmRf+Pp
	 qHneDr1013+lc7NTyTz59ck1Bvx0hik/uWkUtuDnOCEUzr2k4Qxa0HBqhhvAypeKys
	 Ixt+NmCTnWotSDp4FEm6Zh/F00DsgkapDo4FGmsRzSJinpGw5Gmsj+YP9QYs08lJy+
	 41WFHDwhY9Za00uZZrXtmND+57hPwS0EVaMkceoyVfXc2R8YcTA140ZIW3TP29uWmD
	 M7gdMlU+qoVhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E5AC4450A
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 18:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178439991369.1441.5651191837010586450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 852541ef582163bb51c7c9583c92be90a477694f7f635f2c1ef36f6f54d9e195
Date: Sat, 18 Jul 2026 18:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784399913
