Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C7353E274D
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 12:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774961694; cv=none; b=GYD8nZZyEEluzKlMSpbGY8373pTqwH/zw1CgUljZgT145Cf0GvuK6Vnq9kVS7aN/J+mOSYcJ95s/QYIBKPRwcdnyZQ9tBeC1gknONOK6wj+ZnPiAVGHJzLe6h/1JBFag8dorfGNNc2lP+mmzFIuxEyWuhm/qFaRhSj6aGOUz+cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774961694; c=relaxed/simple;
	bh=/AWXxzzcRKqPYoGH7ZDUgxLLQgaMfoSv6lQYVpwImIE=;
	h=To:Subject:From:Message-Id:Date; b=XYDdDq3vHJ8PWPSxzOViVpyHNpFwtEchB3KKoGdzosxlnEIzpSv/XfzyH2c+BCb1Z0X+MNGJO+FQhnvVZT0AcWRPLA3V3wvT4i1p1LfrUzrx56zbO44w1Z3daRFhXunzEChoASzzvitIG1YHY0owYuf1NBnCluGzzCqdM/CLDU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tvez36dN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tvez36dN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B670BC2BCB6
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 12:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774961693;
	bh=/AWXxzzcRKqPYoGH7ZDUgxLLQgaMfoSv6lQYVpwImIE=;
	h=To:Subject:From:Date:From;
	b=Tvez36dNWLpkKiDWgyJdgZoJVVtO/k++Z1CHgDN2a/guGsutgAN9AFItgrZmDhzW/
	 ozF+C8zWk2E7W6+pvi31FaFb+XpQUTrOOnjObUpoH21Y9klmmPWQP/M39IzYgywqWX
	 4ggAjM5kDJB8K6nrsp6pFdPJqCPcZ8PmdTARwwEOnJSEECFcsRmhw1UwUxLECysHQF
	 smtIPNhokXYZb9RCh8oUzz//BeH+AGiVoSZwNSewRGhl54t3gVyr1F5TLoC43yZB3F
	 xkMApzIKOLfJk74/EZZBImqvFHFPbs2qpEgj/PHerV4WKxgWXEB1sWAD3Nst4s6Hbx
	 rOOgpzjgSqCRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FA26109B464
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 12:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177496169364.18731.12231550388788283028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0576eb73a062e38082bed56aa2c88c57c984a3eecdc43f53a3d079d5d76c51b6
Date: Tue, 31 Mar 2026 12:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774961693
