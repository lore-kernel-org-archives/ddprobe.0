Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B32A1EE7DD
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745308194; cv=none; b=HWsw5oK8mkLeAy4gr7HuPB6njqQJ3lF16N9sT2An0FEvCtlhLn9i5orz3lSXRFDt+kKI2WbobvXaex00IDjRIbB+1S07ijicUrkcdiHcZeu3x8foPaFqUatdJzyfqSFgoekpkLwwnA6sKcW+sZWTyn7y612RmByDaVEWWOnVzLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745308194; c=relaxed/simple;
	bh=MwHqLS23NwgpiKBXfXtnqLgD52SXqBjFSnLLRDgZRA8=;
	h=To:Subject:From:Message-Id:Date; b=C7TZd0Ozb1naxV+/vx5R4f4QBoHL9DKVO540ud0PtR3g0IpHeTgvvxCOzyHL6NYzJIQJCaKtRGkJ+WGD/rX0IrGcPFalvo1D8V5hD8P725RC7vyfJ4Ji4Et3AgnIJ3GrpySvuSSFWzTIvMI5wlLgRyU/BP7uE4EM/Zrwz24AbKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qvuGwT5S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qvuGwT5S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B1BC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745308193;
	bh=MwHqLS23NwgpiKBXfXtnqLgD52SXqBjFSnLLRDgZRA8=;
	h=To:Subject:From:Date:From;
	b=qvuGwT5Slm49ajUcwIigZeO65kR2wwSphdX5Wc0yEwLu+Lmmd3Po50i8Uq6HF3+o3
	 NKt8cEix3nsROhPBC+Ol9jZ7t0BPZuROV1KBO5HvPYc1BFRffTwUVCrafZgKqsC13D
	 rXzlUPhDmFt0bUO/QZCwpyVeV9Wz8+0nwnbwqt5tnxwaSOFArgq1vj0itv7bFuDXAO
	 NLb8tEkIC7Wbq1Q1/k+EGG4FB+BZUhjsZgT3ihg1ClZeBp8X59039J0v1P+oPDbugG
	 QMjvJvUcfAuFDylkFwGR0qhYJZZzpZWN8faQpiUV9eF94TwKA1VxiaKLASgXW9JQmA
	 PQEMZNMZo8mpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BDEC369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174530819359.10509.7488095164546326004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ceb380d1257eb73bf1bb6ed432a15513edcb9a19017deddb6b78e1959436b7e
Date: Tue, 22 Apr 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745308193
