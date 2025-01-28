Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 683841CDFD5
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738085155; cv=none; b=L9yx6Gzo9Awhlqc8NRBgGKybircuFaPVu06gSDNjGIrGvFfR3F/ZuPEUAALgrQWk2zBul7cqwK7Yw1EfBRR7q0imHrr5van7EAN4AKzol3LugsubcTpjvsOp3VQh+QTp8bHlqZ1fK8/Zu/Xti6oCMF7pWPOpFyWjj/EoVD8fy90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738085155; c=relaxed/simple;
	bh=hSH261xHEG1G5NOfFBDSiNf3TvdCZshEHOCVRSTz0Y0=;
	h=To:Subject:From:Message-Id:Date; b=lEqSHVynqjs25XWdKgCs8PmjYFq0VRE2ygSf6huXUnoa4FUSywnK8/eErXdjvoA/L8KRNw4N5t7g8gm7x4gZ+rDdy3F2ZivKpSV/c2fiRyvt6n9UkNUZ+lWK/Mr5cg+k0Yk+ZsqVDjEdjU/MPpG8/5BjWm+HgxZkmaTTpjolclk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ql6AsZoK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ql6AsZoK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE8B4C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738085153;
	bh=hSH261xHEG1G5NOfFBDSiNf3TvdCZshEHOCVRSTz0Y0=;
	h=To:Subject:From:Date:From;
	b=Ql6AsZoKNAivlugBRNfsLuAFykULt80RV0+YqRbpCbihOG52wQmca+3jUnKQa3wb9
	 YIgng1qKvRpFFUsiCi4xKzOcPVrgb8qepm/EnY0W0iAEt64sSeJPkGs53i5p45zlrJ
	 okoMZQCqniNP36h/TQFLRmF2QSJ7KwXuTq/RMbOVm699t8iJbKT9IZo+JIiB1l5SU5
	 uSIpTFrAeg6gK2ir4IReUfzevmfJVcnjgggDNM1k25Ka0PnqcnizgfpU6NgEr8PR8q
	 M+j0z4SXO8FHF6aks5Tg9mF/gfLHpsYRs/rpaWpPVsNWbEUgSY4VH4L22w6Fe5wQZH
	 quGtZzq9SIkxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2BF7C0218A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173808515367.5762.13970588601816316830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1904127acfa7bfe69b496f655c034eb65f8ec344e3275bd94229e4023ea7291
Date: Tue, 28 Jan 2025 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738085153
