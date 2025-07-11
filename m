Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A56E3C26
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752237594; cv=none; b=jWYjiALMe92wac01Bxps78aKLMXjTceKS77GACsGbRYHjXYXr51i9OcaCXgcnM/PPP+noKviquNz4xBckZuNsCBph2e1BKKRRdBxnYQDkag9bupCLi3fEBkPDQRFx+O+EHBFrvQPfm2spHiHznTozYVNaJfr/CqJByS3QWvUQoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752237594; c=relaxed/simple;
	bh=Lrb6BqBnzWb2ZuGjsdTUFfFgb/bzezntYIPDZMAJymQ=;
	h=To:Subject:From:Message-Id:Date; b=YnJZEZqzURe7ouolU4B+YYCi8PHD9D1Cu8ltSE86YK2imqdCbHxHW6EnH8qfezCFUPhB1rxjmFBeirXiB2ZeeK2rlMIOaUKOM1JT/KlOS7ieR21StE8kdnciaeOAQT40m9vxVp5oePgyj9z07LrRcNKeymeOig0Z/+icCy4V504=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bXOCOERd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bXOCOERd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7937C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752237593;
	bh=Lrb6BqBnzWb2ZuGjsdTUFfFgb/bzezntYIPDZMAJymQ=;
	h=To:Subject:From:Date:From;
	b=bXOCOERdCDJjyObwbwsl39IZtTNPxaDRJIJLuvsFpnHoRUItgxNbqSSx4XXXNQGQJ
	 Dj6ilMGQVOv/0I9MjQrP/0hYRcyh5a5Ysq5KHFh0O5Dc7Xupjm5ahFHZ3m/d1q9Ny6
	 XL89eltnWr/TtpPqWciSyElG0pqsIUZki75WMREpdUmYwxmV95wW20Jl4nsYq+y0RA
	 SFHhaTotCz0a1Y5IYSvP4FXPK94IEFYg9WO0/K+BaZEmG83J+M+qOD12UsnsHrQgrK
	 aq2qN7euR8IU7bQBU5+AfcF34qVzf1iqvPQdq4M4hDkaxLpECNPZaIZ/q6/s0c5ET8
	 g6WRb4BRgt/Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F83AC83F1A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175223759358.29341.12244757551452687452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e556cde4574865e3947140cabdf8e08d4e0bd964fe3565edda02af7d6c232cbd
Date: Fri, 11 Jul 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752237593
