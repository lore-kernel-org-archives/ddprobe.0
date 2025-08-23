Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35AF5257AF2
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755950394; cv=none; b=Q3zr7I/xuV4tPFizpbaH8A5bJZRlB4Gzot/UfxpXQCDwdAg2tkjQKRhB3h5f0wFs7RC0nZIv9sJXVU/5Uzw4i33tjNxLVGgMT/26mTyx7G8uB60yhjYUtScLqgBLaOqwSv4DrHXXPVPPJv9hJtRh1ctELES9BdFHQvermgTP6ao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755950394; c=relaxed/simple;
	bh=2z7auGP5rlXuLywVY/MaMqH9mgiHlFPaUwZqT811puA=;
	h=To:Subject:From:Message-Id:Date; b=ptfVkMekKE2q09lQG6MtIPkl7qB+TBzoY6acJSqmrDMzoThaQRMsAxbALWngxAAbJ3oSPwozGQJPsHVrVxtR32H+T6svGS+vQDsmAteiyHp5GMlk+nEgBsL+EuaY2KfbRKB4uWQ803Pbwdpi3DOtdRBFty4WROAjCCnImR5jZyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QvDN/R/U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QvDN/R/U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4769C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755950393;
	bh=2z7auGP5rlXuLywVY/MaMqH9mgiHlFPaUwZqT811puA=;
	h=To:Subject:From:Date:From;
	b=QvDN/R/UsSac+XiKJYMTMl98iKwvoyfReeT49a40J677I3kn4JX1vS4mtEls+WMc5
	 rhTu0K/R4htKvGtAykpT+3WzA6VYzFIfUmwQBerrfoogwSZRBqIXU3JfEmU7FXjFRX
	 2ks4od3wEdp/BsWtn1Cc5gILL+LiRsN22MZdGGo6DWiaKIfYQsK+ht8jMsXM2YJ/z6
	 x13b/8qiCVWpR5O/TV3c/SouPgR067y/x0078vTjPRImGut+gYkqhWmZwB/mAD07Hc
	 bHMRECx0GMG3ve4cHh9OoyCw7n51DbughpfDRxijDeEqjZDbWV03sc3XKDDYK+5vTR
	 NoCvLxUu/oPKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921D3CA0EFA
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175595039357.15101.2541520265516917339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e14b92525e4b305876a0ebd939dcb4623da454a71d452764542e82e228d3ff4b
Date: Sat, 23 Aug 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755950393
