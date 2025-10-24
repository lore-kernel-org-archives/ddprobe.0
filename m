Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D8D72E22BF
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761336594; cv=none; b=QmcZKjpH/8Amgv2OL7aLwL+FSt59DC9/uximJ28Q+cu1L7mHGkoFZJhBE367cYNJn23ZTr1VCfOvFLYqesb4UlIEWb4nufGmVdWelsxdgv0hT/s/P24gDb4djtOKH7RAsPx8nNU1VJxRw4Bbhachyg0NBPPqqmzeaW3Z0LKEHpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761336594; c=relaxed/simple;
	bh=hyYTXKc+7g/5G1QWfxOziwJqJdW4CjPojrhBDfFVD40=;
	h=To:Subject:From:Message-Id:Date; b=f4tEAise5UNqa4NrrCWDqeZyRlurpDzjWxqTFQGUL15oCGn24XSzb0n9YFbcprLSr6Tjlr6cFSIIpS+XYH+tLWsIAOsJ0lZFqaq97YaLCKzY7eQnFZX8Ap1TTSmeg9UECvhWvKf90aiVAbUEOjvMZS4DQiA4B8PESgXZNZVUIaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tx89ejs3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tx89ejs3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABF53C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761336593;
	bh=hyYTXKc+7g/5G1QWfxOziwJqJdW4CjPojrhBDfFVD40=;
	h=To:Subject:From:Date:From;
	b=Tx89ejs3Cx3mGfDSymihsk8h/JtqS2ujl1XOBBZtdAXUE7tg2O/GaZic/xtc+5bJO
	 hScGN2pGW59lZ2GsuV5wbhOEtisaGtLjeFv6aGJMV7oo3tInl4Qd/9zvSgMz0+cNT1
	 o4k+egz2yYyy5pzFPyblYbkRUSoPOTyZACwYs7DLJir/wA02MeeGxoLuOzgrsKTrsD
	 eatv9uXbAmOOUvu3BPeW/HvGk8MsZcJTBO0/QZxqn/mWoxroJbr9HS2Nw/vOKUvJyD
	 0BRMQVJXM8/Oe4FC3KLrqtFGgudP0VRupIFdBMKecqMOLRPQy+u2R0iquDWBY8Zclf
	 zi+Skn/1SUzGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F63CCD1BF
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176133659358.32316.16715228630266139148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47ea23a2d8821509558062e755dc72dd78a26bd862b6e932be766c092e715176
Date: Fri, 24 Oct 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761336593
