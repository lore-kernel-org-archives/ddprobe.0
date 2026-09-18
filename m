Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42504299929
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789704634; cv=none; b=HvZZW0fhYcxelDRpXBjQMn9ufG2E5Zk4r+O6M0Pnikt3p2DGlEdpNWSgGZVitBelXVm1CKHCsZaHKvhkm3OVC5QGuUUUmNuwg1vWYeJ8i3C0o+DhwyTk0vxbhMjhmRYMZG0H2m6GzfT+Zynq1JoGkrBMaIlS7xqTfq7awYbnPO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789704634; c=relaxed/simple;
	bh=SCtcspmD2nyc7pTtTb1glsrr1E6cAEsVFQxKvu55ONc=;
	h=To:Subject:From:Message-Id:Date; b=FfU1Q7xQBc0ox2FUTDYqaQZoKsc/4ashK08v1wJ/RlHadOj+jEKNTmJn82YAnYzU1VvnRWvrptyZtzkCuh1BpLQrTjaPFl3WmzTzVLoBTapbLChGPNIlC+xyucrAeXKvoHnenXFghu/myMnv3gC1IoY24QoxNvSI+QzO/FinfPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o/wVYcGg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o/wVYcGg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBCFAC2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789704633;
	bh=SCtcspmD2nyc7pTtTb1glsrr1E6cAEsVFQxKvu55ONc=;
	h=To:Subject:From:Date:From;
	b=o/wVYcGgzE8QS8zutu+h0SAffldt6C+/l9Wd3qrdipvUdGtQ4aCXPdoH94gnTRJ9+
	 KxVXZ+Oq8Hkpc64/TW9DQJsv+rZPUUSTUYx3fRsa4/muFSLH/ld3gW67EPInbBQ2Pj
	 FAXzM9C5llA4kInCQci5kF1peRqAbKmkRGaAtkOXaVPeZQiEp4vTiagsqiLuYgQFN6
	 Q7mFNaT2MUcLgiJS6UVru+Fo29tH6OWPwvPW1vSzvdCQW1wUIpwSo9Lh318hj15HAL
	 CaPCVwhOSicXrI+riFAGY08PjpBujVTOYr/fJvteR043/YXFtAXLo6UELoZaY0VJSq
	 yJXii3/02Xqzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9276C88E75
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178970463368.7301.15729806034385454352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00eed843848500d05c1ae7f176d82f885937471a63dea9030a9d02e3c9679047
Date: Fri, 18 Sep 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789704633
