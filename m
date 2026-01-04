Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 323492D480F
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 05:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767504234; cv=none; b=cfH0Jd6VhJqtJUQV7X5PIfvPDlUraaNPv0FZdJS2Y4azX3V8wiU7pceAsbaPMh2IwkxBOr5+eA8j5BH9KCy+fiK5EHPNjja+weJYY774fU5UPxHDJiHkzGJMnn4+glVUagPjiWWUtVLBNNNJohh4+Z7hPJPsbJOCiKI5u3q2DJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767504234; c=relaxed/simple;
	bh=bfQYbqUjaCpuaJYEQcPj31vtaZCpv1nJx84nqCKuhsI=;
	h=To:Subject:From:Message-Id:Date; b=YjcUOtRBnsTVxtCzm9U+0ue4r6HoRQmwC1clxLc38BdP0tvQZFq8RQJqtQtJAQQbs9c6F+SBsSNw6BsNUZ/oThC6ItIKtbtgoXBtbq/7VhcXuf270w1dgu+26MhmbNDbWOo14p3/A71+d52JINP5WejG+Fmh083OLLjZ/LWOqXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s1JFCmWC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s1JFCmWC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A369AC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 05:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767504233;
	bh=bfQYbqUjaCpuaJYEQcPj31vtaZCpv1nJx84nqCKuhsI=;
	h=To:Subject:From:Date:From;
	b=s1JFCmWCGgovA/Iz3dO1zjJL6RZ7P5qY3FA5btgHbWgM3rHLAeynSlql3W6COxxFF
	 OXnkp2JOpIAkNMAzDkKozkZTPEKsDFuqhVLORfKO4RcBPXytVCAIMrwUXgvatF8/IY
	 VAFd9vOVQV3uX/+kVnaqbD2WZlWie8wmf3TX/crYCdhphtjSbS4EZ7gIgeMvrfA0AH
	 No2l8SRPt6IPTmK+hRSMDdJ+sSo25wdztioaTMkHHPMA7a77zjyWt5cGvpmgk6t73K
	 GzAC1A4WmAq5mrd/e74jUIGrkvJha1qXBbAj52ngPhSzpyCJTzlxHS1WsptLvwCCIU
	 l6RgXefaAVBnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F2FC2A069
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 05:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176750423357.31965.14513242039789028376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65b8f6699121517c94d24f516bd7c1826dfebb53a189504af22bcffe4a55f4b9
Date: Sun, 04 Jan 2026 05:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767504233
