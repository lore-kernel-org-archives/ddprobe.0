Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D2972C0284
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 03:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768620234; cv=none; b=GOND53tQdTZ5RBJzEZ4WDBCBwTT0JgvmTB/zCzPgBraFeOORFffi30dknlv2shDpfTjf4KlqQncEpsz5IJ6L7qEIAgJXIyH3ke5RqZ/3edhG7/myxW9ssYzX2KH+d6VNviIg9SfPvVpZtBmznVaH2eQ9X3g2q75lCHO5uCSZdbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768620234; c=relaxed/simple;
	bh=KisDqBpOSuzo+X9ASB5epNkuSlDisdK24Lkm9C1+ZRA=;
	h=To:Subject:From:Message-Id:Date; b=mHIAnaDQG7KRlA6vc4CTNktVS8sJduhAdiEhi++2d39w3eqqZWm4RXD3fZCF2BhRLkFHoFpepZCOiOeZH4AvQGqnNoVocd+nxnPEqQd+j1CypZha/4zlBx004ymYkmPNPd1yFdrzdZRYmmiiAQH+ZhZ8VSTtsWWJeT39ZKn0NAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aqnxn5st; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Aqnxn5st"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFF4C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 03:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768620233;
	bh=KisDqBpOSuzo+X9ASB5epNkuSlDisdK24Lkm9C1+ZRA=;
	h=To:Subject:From:Date:From;
	b=Aqnxn5stN56YxRBY+eCQLGNtcWx0ZCdvFJGeXxUnW1K9elncvDd2x8UvuWiuInV9b
	 38xEQDzro9OyOpTI9j17Mpn/z0qOMEdUKZ5fHxkg3AYZEElvMJBeQnqb8dSWnK0xgJ
	 udSxlwasFGSA1SoIiGsF5WYZ17uxxUmmiuHelAn4bdiOhcu4IfVC+BgdSUeumrBcdy
	 e+3zhajeTs2vQFHIfoWcHDztDoNdsunpnc8dIjV+TeB9SweNXwQONLw2D+whoiLBmu
	 Q4PshHwslgr/WFM7porsZuSLTHsNlVIG8DT8nWquq0YjZxSy5khA/qukjmIKvHgCo8
	 k9UdcPvK9Np4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901C4D4A5F5
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 03:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176862023358.28395.1149394485276752133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a48467f0489ac89ce8fb6c3892935670a944bf2afa8789ca9782989278565ec9
Date: Sat, 17 Jan 2026 03:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768620233
