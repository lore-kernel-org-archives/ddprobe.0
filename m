Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 309F433AD9A
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 22:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781475994; cv=none; b=ed0jtGUKlUoXJuELiSGyJftoH7Ft3qAXuW5dMGzcg0t1SUYlZWRscSksAsXZfy6+OM8p/JhiXoZTXdUk48jmkBRG/HkkcEPaBvRE4RhNJHYivMxFJpy7WwEQqc69JpNp5hctXNDQZRCYdK7mlig4p1L5wgIB3+KGM35vKpTQR6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781475994; c=relaxed/simple;
	bh=tIdvCT2Yrcx0/2ls7vVoKYc4r56nWndnN4tIcORimVc=;
	h=To:Subject:From:Message-Id:Date; b=bYM3AWV8uHSwLPSoviaXVRJ0qgaEDzG+SLRkMOxBKloOHDhYwEELEr7Y2ES8Fg7Kzj+waxydyyCLDoj4Vn1jMTbFQvjOHBjpQe8IQT1JO1LMOMp2aBegF1+pnhUS/wOpwx1RN5zPk9meZboF6VpcolLLP3pfjfy5L0r73jiE1aE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DZpGDmJz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DZpGDmJz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB270C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 22:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781475993;
	bh=tIdvCT2Yrcx0/2ls7vVoKYc4r56nWndnN4tIcORimVc=;
	h=To:Subject:From:Date:From;
	b=DZpGDmJz83TwFwEMSr39tU2mJq398E/Jk/YpL7lj15Y6/1xAfCIEb3xp7ygAG4qZi
	 dRflKYhzgQyN79WJkd0auuxsgV21Y9uAwagR9mMWfDx0eI9E2MzkaUJfU8tQhj0HwK
	 fYOggkHLyWmVibSNT+OUMjdO4G6kzVRKA6GFbfytphCEw70mF6PD2ingfWP/pjzJkh
	 774TYynNETMc8uAvQszCu958L3hgtErQb5DqoHRLQ74fY94VY62V4LJQn7Eax3iOZO
	 o5Q9Il98Rw0dI+B90jqaA3fJ5nNPbhrd8xl8eswAv5XrO2aEa3LKdILAJ/wuICQISw
	 5QITRyXwhoSvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF683CD98C5
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 22:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178147599370.9290.3873574446273888443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79fc26819fff5790b622287a86ead8feaf70a8e16609ef4d07a97672f2d3622a
Date: Sun, 14 Jun 2026 22:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781475993
