Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53F18330652
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789897834; cv=none; b=EXya6pH6egPmRswm9vYmaO8Gm5DGGXnph8a6UZ3/0lh+L3oYNtknOnoTehialpJ0OCsz0MsYh+FG70OnOaLNAD14a6fP8z9sFgeqDi/KKE+VSL9k+1nEZN+85nazvoFGGLPG+koLnaPl41AYLagwdBxIKcyTD6MJGp+cLT7rTDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789897834; c=relaxed/simple;
	bh=Ge3mA7SfXDc/5o837zlKjQHjvrKj7byRBjs19px4gSc=;
	h=To:Subject:From:Message-Id:Date; b=IVCc4LmIE7ND0goOCUyEQ5VwQlZ7PKuY2QYIWKD4cnUYjjPRwhkMqzwRiO/si0/VrTcsk/00GcJ1X5akxXvVF74u2z2PuasuG6KzxooU5MiScV3G01jC45GI//USA2NRrQSJcUiVgKthRHev7IOxzDdcEFeGanqnIxNVyE/ibqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UblQojs9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UblQojs9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D379DC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789897833;
	bh=Ge3mA7SfXDc/5o837zlKjQHjvrKj7byRBjs19px4gSc=;
	h=To:Subject:From:Date:From;
	b=UblQojs9n/J3U5IeswiXOnKOSYjZGsVLb3AMmJmEiXFnR/5mWX4plDRncSSfzs9D9
	 SDbaBI0LpB7NAPw55o7INgLCKnmgCjy5wRgXhBTydTHGOL7hbwey/407nESIHLcA7R
	 fy4sQri/pAeu/Gi9HJuYI1iDcBBuDD3nUvVfaCdTeAkLYO1dCduBvD/7cpv11c2+ne
	 Lr0TYf2uC7KqvVycuQyLZqGRw0sY8/C5agxzi/aeJknPw/EtpInI6nPPepnpVyShTk
	 7is42LrQDouSY5SsawOv0dv5RRgfGPwSfVE1oP7e1URmDxktAT292vrHdP3LTM/Roy
	 lTL2E/9OquMcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC7EC982CC
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178989783368.32140.17658665520167045918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 191f1eafc3874617a696a64bace39b117cc6509304584798a00a38f9c9df6e90
Date: Sun, 20 Sep 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789897833
