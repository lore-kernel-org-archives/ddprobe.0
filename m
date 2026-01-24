Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E5931A2C0B
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 13:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769259834; cv=none; b=EXIZI2wtilbdK3tuqWxLb4shl2mrXqeByiwGDPLkaeugC/jsDcrOW9iE1A4Gc9yqYlU27UxAXTMXu6E8Bs0zp36vnwkp+v23JQPAePU/GhcwA+p6RiGVAYffzBF7/gxPvnP5cXzrOk8xtZg2n5C4cdE41rF8jPHK9vWAQDEKh18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769259834; c=relaxed/simple;
	bh=FNykrcc1Nx+Ctbumz5qA0HIr09yW+jYqlm+5T1NhWb8=;
	h=To:Subject:From:Message-Id:Date; b=XJpDEr5AFawx4pjwtB/dIMT5x4XF8V0KvGM6pyzfd1awScRUGSATI3nysqeGvjaS+737t/7WLcWP6vd5wDV4N+Qq9BIpzAsePTif3pZOEKIomfgpT9vgfQq8RRtKjNApzq3K+90eT7fE34tdSBqWv7UBuNP19MZprH4w/dmM2V8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=epOtTs7b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="epOtTs7b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E52C116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 13:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769259833;
	bh=FNykrcc1Nx+Ctbumz5qA0HIr09yW+jYqlm+5T1NhWb8=;
	h=To:Subject:From:Date:From;
	b=epOtTs7bSA4pnl/1sh7Ru6+8Fh24wQvD0hC6oQE4WSIZj9fzbeIK8e09T0SFndpCF
	 xhCqSWBb+NbhWoDLuNVr7rTwtVEws4Ca6hKQ5jnagQWsd9XO4ZaEtzhMjctlPQAF/M
	 XuzBoXpNIeuUie9H7I2Nv8zjNsdNEFy4svLJ103Potnm4QAiOHiXJaI1zA5ED1g4H2
	 YIq+0ADcbWJ6XnYEvCzypP3AhcEPwNKGAEcAH8nonXpW+XMCnVwksZLBrXTwOQ6Dmz
	 8OLtLzZe2a/nNsd1YRBCAsmBn6Hh3r1zJktgjQBHuyhf/rJo82OnGESnXLeuzSIKXk
	 9nzWZZchDZ6aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92417D715E8
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 13:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176925983357.19902.3027817783805079869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82864c695141738d76160b36af510b01788b2c90ff1bfc2bce94aa436ce6c0d6
Date: Sat, 24 Jan 2026 13:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769259833
