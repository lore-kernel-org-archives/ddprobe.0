Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65B303F107B
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791104434; cv=none; b=O3hWEMZl00+9XeGLgte/HO5V06ynnQfZPEkcK0wJQa6GJ+K5CLkO3esLhK0J3q3rifP3CABcj1yXxP6isladeg0W/stQy0QYEEo1tWczU1/Xv9wRcQ98VoapLOywn8X058dsxUUtnr9WjPlr4L0ULCj/8b8YaGwlZPQYzTAyJG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791104434; c=relaxed/simple;
	bh=qUfiGhB0sRYGBzeG8py9BtIiuefsybUXPhGx081HOes=;
	h=To:Subject:From:Message-Id:Date; b=EwrIVTPzmIvGp984NJiSmWxE1qodavzdHoGhz3YTRlbMK+gOS8p4uo4umIEcScyAPo9REZt8jrEK10Fxfv3pEnMh/7dOBc+Jgi+Uhlpt7ayP1SkroSnZ3IV7QDFJl3WgtUKOg+fPtp1nF/oQ1otx2qKzhWeuFVvc4mLwWFrPlIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YYlObcbb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YYlObcbb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9565C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791104433;
	bh=qUfiGhB0sRYGBzeG8py9BtIiuefsybUXPhGx081HOes=;
	h=To:Subject:From:Date:From;
	b=YYlObcbbQrJABS8IkDiexfNwmq9zLZk5U1COry2/cpPAUzt/hSx/R8KgtuyS0nIid
	 8irxOaaRr0HHgRQ47oZqyXSrecgkjjz0AtTtfXZFwQToKce6fMoiiZG92XteF/UXFK
	 Oe2oYN2TDDg8DkXN9T5riDLJreIo09CiuDtzWzpcZuwIO2Xxwf+Xho//PWyMt0eRbw
	 kihlamcweJ+EBfYDN0H6fiWjMcEaYtk92flBI/L+rSBKLmLFUG0OMqt52g8fhMeyPJ
	 fz1oaT2sqkMFyQHTTvFRkeBdk23Omw7Cw0ETZVQ155GiAKPjPLMLhQChqUh2hMwTh+
	 yRx1EiGy3Fqag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADABDCA5FEC
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179110443368.2409.1033794387460789830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e02124d041a88289bd9045dfc32598009301c84f6330574149ef41b204069cd
Date: Sun, 04 Oct 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791104433
