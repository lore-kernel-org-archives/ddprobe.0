Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4791815CD74
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762297194; cv=none; b=Cd+kvN7r/J4d3zzgcVNuQD3jKJphlRnnHCxNPCHsuNmb150r5u5+PHEuOtu899IsMZ6A0G1HP7BwLUE1yVepCDKMw1rUhk8Ec543iFE17ELCQvdfKs4MGhKw7iYJVu0hD78C3Fz5rdSoVjFAPLBfOZjIXRrBM1mBlAjaz8sufKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762297194; c=relaxed/simple;
	bh=xPsh3X4LJB5mhT+s77suDk0GxKQQTHyMsUclkD4ipZQ=;
	h=To:Subject:From:Message-Id:Date; b=VtyZ9ZxVbUEsPbs3oeXRm2MclVhF5CSI3DaEY2JqTYbnEtKr+cSPDQbOfYLFX/Ymdwb22E2zMVR3NQpWnlAupKEW4TOOupy0+ehiTKH8mhZoTa+2C/qmfCi2FTIZAjg6MOkZr+pZVP2xsACtKdMAGR8tNZBqk0U4Qy3Tt7fS4uk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jn51ZdKw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jn51ZdKw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4958C4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762297193;
	bh=xPsh3X4LJB5mhT+s77suDk0GxKQQTHyMsUclkD4ipZQ=;
	h=To:Subject:From:Date:From;
	b=Jn51ZdKwz5UitYtB+9uT38UKuWNGgUEVn2mmimxax9J2Mt6wp/s2rOeT0eHdj5jxU
	 hiYK9BZ31EpAXn7dhDG3iWk5TfQAyImp88QEoQ39mhRyzeQTPVXUJjR1PBG+8IujM2
	 mF7ylSJnSRvtKOqdZWPUR3RgD743LvMeGSEan3TfS1zxOHUHSK17rmxnYjZhnOFOfN
	 FSyBwAjumCxUlFPSEDRDcbtPLXVhnxu5w+6MmvnU8e5QSRNb2SRn0T3zcJqluVjqDc
	 cqNQRTeBLOfKs8zbCmljt3mnrPLssGr3GI0bBdkCXMCGrIxmp51c5XqcFu9L2yMDqs
	 Ft5LTcYpTno+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A40AECCFA04
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176229719362.24399.10205084152867481951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5fddf02408681595f931fbe43d7914ea460c9090fc0a5f43ad11b1527b3d738
Date: Tue, 04 Nov 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762297193
