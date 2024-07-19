Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 486BD4A0F
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721349954; cv=none; b=gi2DHnz7CO2yb6zwyNbwGkwyftViGBa+kXkzpQeiK7X6gvVmLSSJKy4w1eW2ARhVwZGZ/UQHflklvQtaJSXzZUorF0zfhvgrQbbd7v3tbqlr6W90vKekxnd1iwOLbgmfR2YXZZ9zCxKH5T5fgBvr3SwjzZ++khrgskwc50f3CQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721349954; c=relaxed/simple;
	bh=TlOI1OGbO4Qt3fN8nbcpIufctdJJvVkL0ISgl3S54Xc=;
	h=To:Subject:From:Message-Id:Date; b=EZiJem7t6BXRbP6AyQ0EKFaLGjVURI3SypaADrnzyefTJD31eTo8R4iFFuEeQCb9QyYpRxmT3XeZ39pP6Dyk920To1xvXMci2Qadb8FqyukBfJbHMe4b4KoA2QtP1udQGREotqb8p5n5Jk6lbALNXsGz2ro4sqG40kpi9J6yZA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mY+Vil39; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mY+Vil39"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0105C116B1
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721349953;
	bh=TlOI1OGbO4Qt3fN8nbcpIufctdJJvVkL0ISgl3S54Xc=;
	h=To:Subject:From:Date:From;
	b=mY+Vil39/1kWo/9rdwE6FRhiqhgWJsbnTDtiLhJ5pCrHJ9Ybr865d0ndkSFD1EBxJ
	 30oMaDnUHe3eApdtrywDk1oRrl0aOVo4boU/kKYUMYGXdxGSgzO5QlKID/acvSClk6
	 9hjr8RJrZBxO4uBfR6my5kCZLQhd2VJvFtCcT/HlYJ2V4Hf/swnSGc2IKLM3nImv8t
	 J2fCmcnaeAgMT3A4bHUSIXpbZRyrNYqqgjAks6glKP4/n7dnJMt9yGw3n0WEHriPNf
	 uZ6e6s8FcxrkT12iMEqS6grFmNaFvIdo1kDMjxvBp1GMS0d83v/owTtlRVE6ceWhXX
	 A8Kor/xhrLybw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2E4BC3DA61
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172134995372.26073.14605785714296827300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d51afb7885654c235974a55ca5605f5463dc64204a680a26aba5ef9ff5e6eec7
Date: Fri, 19 Jul 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721349953
