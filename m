Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D19C51D47B4
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 17:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772990693; cv=none; b=u9VnLn2eQMiM4DnHoqccFubAJTw+XGOYj5XiE7/iXlSC0uIcqq90LE1yxds8e38PzlJEWJiq/PIIkFv4dJS7UaoZ4JumOeAgUn/1gWYZbO+fdLwYGuiwQEnaQ66tqjAG8rKKU/9YNqZGDRS7f1t1j2gc7j1dxv7NHSGVX1hJK0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772990693; c=relaxed/simple;
	bh=801N1vly4ntDiYBe4GCdl6ToUa0iX0x13xdIJ4ox4CQ=;
	h=To:Subject:From:Message-Id:Date; b=rGUOLUl+Cdr5LCWUkXpdkwvrj6/3rf7nIzhdAsy8i4TcpsShUf8xUxdjFvrUH2qoSenMoxUTU5WnZBnIcA9FomyRzHzyS1i2CMOpoV9q01Cfu63xgOxID1g03QQelYQ2hHCT/ggW5NdAROFhNLOdZYHpW1L42+WZ7WTMkHK3nm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bc18CU/E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bc18CU/E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4314C116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 17:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772990693;
	bh=801N1vly4ntDiYBe4GCdl6ToUa0iX0x13xdIJ4ox4CQ=;
	h=To:Subject:From:Date:From;
	b=bc18CU/ElnnyfpACDYf09mpVY/CB4xErW81iJSkyWurB2odER8shlc/AZo0VCocOf
	 ck+l8FZWnYF29R0tG06gQBtbZNvsMm/T1mMFBQpaU/5j8X+GYjPx/ig8rgUcHkD6ft
	 vg8R1idpDKq7PrynPYBOeGjZW1TWEMhfOASruC6fD6MtwJG8ZEsdrtDUlVoT3H2T0A
	 oIUG3ziv7Ra9+w6w+sTqehH0vbaCH9LVRvMuVCvucbpLF9x0x1H/6JyYhOlyceFzxQ
	 hlMLD5Ys9RnFARssDU77ftkKtr4e2vbcm8UQNpctLmx7o9decg2GORvgIKNhLHfxqt
	 dKEjTwQu0qf3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3C81EA8536
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 17:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177299069362.17106.7042723069596873360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34bbe0990dea12fdde62ccf4bb06b0b7c0686298e049e800c3ed5cc2399e585f
Date: Sun, 08 Mar 2026 17:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772990693
