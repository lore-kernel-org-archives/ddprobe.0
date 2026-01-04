Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 247081917FB
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 08:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767514434; cv=none; b=m6qnk25Mo4jvz8Jh0LdiVB5l0U+0A5D35HdA7S4GtD+qDWKT+d5PWWGSLQj1g1M0Y5SiUs40pc4bTDNfKUNqBcZSpFOoyQdGBfqiDQrkgP2dNJlwCzXaN1RLxgs9h+sF/kc0J5vQ2tuk64W7MpU0ZaXM+2v4qqg5a084iP+aOcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767514434; c=relaxed/simple;
	bh=+k+CgNpldpwdyIkQfblo+6Xv7mT82tm13B9FhWyCyRM=;
	h=To:Subject:From:Message-Id:Date; b=G6O/rQAbg/1KWWR29i3ChBjRx8Ke7cuxW5DFjCxIQv+4howhyyCs1pANKDBmOsBh1Ptn1Uyr0jri92Zfh8pnjjSBX8IPiSXbhG1bcR+mZU6elh1d1A3tifcLD2wie7xDILX2l12FuWZS25E8I3QC7glnKO7yej3hve0E1mgshJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kSYfLnd5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kSYfLnd5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5360C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 08:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767514433;
	bh=+k+CgNpldpwdyIkQfblo+6Xv7mT82tm13B9FhWyCyRM=;
	h=To:Subject:From:Date:From;
	b=kSYfLnd56eX049ZCSGRkVrFcirMheTERMmFssAlJ/RVVbCZfiWoyCAGF5rBPXJT60
	 Jd6/axRZLfLaIQiO2O77lFnn6hQka9MPPMe+CWL/ye7FUkl3bYJhwOQiz8BHqqoj/h
	 nqHihAZ5Wcb4cr8RnaFrhK2JMEwch+5Oi0rypzgbrtsuIqCgsZ6aw955iBVFBlLt9J
	 k7PKM/0FNVQfX/okgmIaKRZabl/q3eHWl9e6NXMsCkwsRh685llfiBFDRB9TvWr2UJ
	 bBVRSoSYp20f/cjNmrML3VFAzT4I8cLyfeVuU+b/jYV2C0uIxyZdsUDCpt8oC86rVs
	 0kQCA7jAWoawg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9207BC2A06C
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 08:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176751443357.14249.8973405811398675745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9b8c746d2f37dbd6a36a74befd1fe6698f0d4620135b24f8749051d2240535b
Date: Sun, 04 Jan 2026 08:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767514433
