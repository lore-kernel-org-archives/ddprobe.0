Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15A29500969
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 09:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768035834; cv=none; b=H9e1Iy4G/L01iXssLxFffIPoD3XyxvXdcaO/8vJhr+c8dYTWtELcD+Gdall8NQMkEz50oavUO+jpPUj+rwbhiOpEAr0T4qeBRQ101A+83DQY/gO8oaBw0iuZzez6Zw/hYZdkg4xYo50/BFm+wNufgEqtEmuQkuL4vOqWrs2O/aM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768035834; c=relaxed/simple;
	bh=3E9iu7DujJEeY8F4z3IK3c4Q7k4x5H+1xUuHAPNLWiY=;
	h=To:Subject:From:Message-Id:Date; b=nxBktjln5XbXzKdIKAVGPq/x+SvA+hlAHDs96s0IGVZUqgpIFzdn2dFaDQsgdO8ggeMBsBrtc3/4V6bPk7PhPw3dNVeugWuy70LjVKm6Qf6V3qeVor3kwWXIcIZsRVi/GAP8tyH182SlmQkgWiMX6sJeDOiZX8r9zz1U9s+8w8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=reW9A72m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="reW9A72m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55C0C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 09:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768035833;
	bh=3E9iu7DujJEeY8F4z3IK3c4Q7k4x5H+1xUuHAPNLWiY=;
	h=To:Subject:From:Date:From;
	b=reW9A72my1gDtM1ii8GsGfYsp5cvaz730Slm7EhYZN1H66wE0Q+N0EY9g+9QSMw0/
	 yTzwKFeHDC/ZqmJsukY59QyMkFlsBcuxF/NLwr1cJgZkRarmPOJprLaSIBO2/TtPX8
	 Ip5s/nb0rzaf9vpgvBNZmUNYGIafSMJs6K5lfuvAPd6N5TihDdkPG/+fH/f9Bg0jQy
	 PcapKe1H3mcvARFatcPr4mfskFVkH3rINYdKls6T0/iVpMuJRWzX1PjYt7IetkHFqx
	 j6422OEDzcl066s2wGI3Gult7D+KgTgQof+ITTdOWKy/KRX1+HAEY2rvULzj5KdULO
	 GSmeb1C19nC6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946EFD277CA
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 09:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176803583357.19893.18024714573116934781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 087f27078a478ec7600995acd330602a7cde2be6ae05e9c27835557e6541ef70
Date: Sat, 10 Jan 2026 09:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768035833
