Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AED8C422530
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789446634; cv=none; b=DjtTmR8XpGSmu6SZYVGvs2knrO2TY0pF83+IrVvS+F0piloccwMoctfsV/0htUOZ8SbyWDwyF4YqTldVJHZ1dXo1XSYpgF9dHMCLpvtow8xwxE7m/OyI+HY49t0awfSsnJ3pE4Ms1b8jyoICjIZDPFMBB7yw9C2Ep5A6uTDDl9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789446634; c=relaxed/simple;
	bh=4/TfwQyPm3y/YELD5M2eNksUCoq1BBstN1cMLOXC0+k=;
	h=To:Subject:From:Message-Id:Date; b=JeJWf785WfAXLM15Ptf3RhVTQCWPG36spi+TDmvCJJ6RUSH+1VFkHfcWGIcDCmOS3WKsIu4GxsLRv7gOoVqePaE++QBiiIr4F8Gj2qyHlKk4JcriYOY6fNxIBEPWmkSp9lQLZLmHvnSO4aXYpANc0vtx4rfP/dskKsK2A/mu0aY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SLvGrKjS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SLvGrKjS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3198C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789446633;
	bh=4/TfwQyPm3y/YELD5M2eNksUCoq1BBstN1cMLOXC0+k=;
	h=To:Subject:From:Date:From;
	b=SLvGrKjSC5Tb88RV3Hkvd8ds6zA6RzIRGX9Sc7kz3DjK5pzgKrhMOemYmiJTiy+sD
	 w8eUmLpD2J5cpTVTkA6yF9JcbeXQryK3W9abrh07H8gcKIUDvsTu/CCt5PAwnr5OL/
	 zTZNrZiWzsRFaZLIR/QKb4W9zSA3gmsW1XvUSE01C8ZQnFkkMscIDFeVtL7LqZB196
	 nONgW+HFmr4pjSu8DhkdfPnERzwo2DuJKy8SqzQxpc6aN4pJcsCxp/FrkIo9VmIDjv
	 K5LGoAN/P0nptRNBO06zMKnX9SpzO8t55/rHIygi270gc15luRP41GsjyRUZ/GQ+lv
	 y5eLavhvQPILg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF94C88E53
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178944663368.2266.13554427789389603948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3affa5bf085bfdcd03094523338e7a62c8b5d8782d7fbc46abec535352a737cb
Date: Tue, 15 Sep 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789446633
