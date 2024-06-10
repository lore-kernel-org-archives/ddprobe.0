Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 445461E52F
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 15:47:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718034443; cv=none; b=SHV99oKaEw5dfV36ecdy3OGbrEXbGrct8AXfcU+AR1LPTaEQYGFnKJIfPQ9eVo3d0UDotE9yMo5Yk91SmwdcEkYv/+jvWpj1A9tbs9l05NK/bV8U577+N93UDjtOYlNDym53sqiG36fa6PLloD8KkR7oWccDPhqPPJcOPhJY27A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718034443; c=relaxed/simple;
	bh=6wApCZuWiiWJZjYQgM9FRBI+RqEVu4obZIfXZtTOZ4w=;
	h=To:Subject:From:Message-Id:Date; b=nlXd4du/MxZcffA9YvEeZ5p0tnvwnUUhwr2fJmIWLKE7VBJa62wFmnRv79bUJEF8l9txCDFaSg4OdYagQOADUitiqbPQwAWOknIS4lBXSCjTv+vfzREcbs1y+6r7AnH/Q0jKobRePUwNY78IgZ3Xkmqr4PmdJpDr9j8IzKgWJQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LirGzm0B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LirGzm0B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE2D4C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 15:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718034442;
	bh=6wApCZuWiiWJZjYQgM9FRBI+RqEVu4obZIfXZtTOZ4w=;
	h=To:Subject:From:Date:From;
	b=LirGzm0BgbMgOc7mcLMGS8OOHI5MCv92Q67/0TXBnAeRbAfrogzS0DTzzuIXm/AIl
	 zjTSn7byFkSRns+vGtjHxke3/Ll7YODpgP9Va+Z6kRMdHX8W2M+qZ7tVGE6mCOOy31
	 oaKuqecrDVJJ9UpVlLpghDk74IGkydWc1MDgblDJO+oGo+AEjmP4Iqct94hlh1hY1N
	 PSCnOHi0UAMjr3U5uyCWnTBWZ8wwziVifE8jwaUEXnIhLk3MRajgmihdS9D/gZnFVc
	 6IUE4nLvwn5PQZXxJJLyItRbH2Kjs4cHb9d31FoAxpgnrBm5RNtSglzZbTFXqnOu99
	 UrBlR+zACNWjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCA24C27C55
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 15:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171803444276.20120.10580384686331604582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acb0b28346e0fdc988f42d1451e87bb7434744c97018716539a1565765f3e8eb
Date: Mon, 10 Jun 2024 15:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718034442
