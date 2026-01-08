Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F2D732AAB3
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 22:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767912234; cv=none; b=mZFYYzK5U+4K9H0rn8fcwh/fi1hl21onfkDAoDNcuTD6C6kM5LAkJMwvJCQtejnr/ZDNjKSwuymAVO2NI83JITP/SkAZqzHDMneT9UctWUwF+e/NIJu4RHXi2+JlN7YCfSmYEvBa6acldqkipyazu6joupUR13JnS7GD9YlMEfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767912234; c=relaxed/simple;
	bh=2Zzf6rco6qRf9Ltmgmkp6XMP9aaXJLECkgI53TwS5S8=;
	h=To:Subject:From:Message-Id:Date; b=XZiKL+ErraDMfw0ue1oNQLaRfNZYMPrDuIjIDvQjuUab2NJC/Ryez3C0zWd0da77QNHXOh3Xjs0iuTHp9rVYC/883q+mC7QfLwybKLvNI7jsBEgNysuZWbr89E/qGCvjENBGtGDJLwXv7EPmAGPKgKvJQ9WufDvXoG4T94RrJxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sN5WJyW2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sN5WJyW2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9951C116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 22:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767912233;
	bh=2Zzf6rco6qRf9Ltmgmkp6XMP9aaXJLECkgI53TwS5S8=;
	h=To:Subject:From:Date:From;
	b=sN5WJyW2j0XXnbPGyuicKbR8Qm2mPqESsRL7lfYA5yJPy3r2T3my4MgueHrfNHJ53
	 WLG0J/juQbYPhTpbPD7a6MRR7bltaiF53Z6FtL1FF1stN+ZL5S0g13+sbpipVF4e6T
	 v9bYOY9R9Ildzf2wSoyaPjIJdpadvUt6e2YDw92YOusijonmGcGV+F1u+ziusUMbxr
	 WdZGXWCYk8Sc1eybYgC/Y1mOw3FL/oIfI2fxy3b34MovuHxuK/fWBCii9UEA6+JFln
	 fEcroN3xniD/i9uJs88XRmM6p/L59/gj3CwhoAPHcRACfOcYyDQRmuUifGxQUpx2ox
	 TjMIj1SisaPNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90533D232C3
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 22:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176791223358.17576.4083997700685056355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 695dcbd78f32a24f08f0d7651e86733b15ba3843fc3262e5b583d3605dda958f
Date: Thu, 08 Jan 2026 22:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767912233
