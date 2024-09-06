Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B65E158555
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725608754; cv=none; b=UNx0CbLOBkAfdMKRhdO0Lajis4ilh+aaTSCsvrX37ZSR5R4cb8xGEf+PGVFtNhmxg6jcnu2LZ8TfjzqeBDPPMxX5AfWmhRmASTaMWyqEWjNi8/xvKsPPr89FkgR/myd1u885Cb2ILO1CgjwOPhVBi9rwdyKD8OcCfGxTtQYMHmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725608754; c=relaxed/simple;
	bh=fd4wmajwUWZ7n81ixC+ZL/DuXN23fpz1efWf/Im73uw=;
	h=To:Subject:From:Message-Id:Date; b=GlSsrJP3uHcbFB6NshqVKzwQSjtlPi9LZjn8AvkovwYl+AtAWhwLByOkYetQ8wq4VWOb+HQdSKvskv3TOdXQYy5Pa1qJydO9MaIII9yzT7IN18bkHDY1RCSvSy+SCJrbOBPrbaZISGobsBNhG7fXGYJYcOlSV6K0q1e0dKIdkYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bvlw+y2K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bvlw+y2K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9FF2C4CEC4
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725608753;
	bh=fd4wmajwUWZ7n81ixC+ZL/DuXN23fpz1efWf/Im73uw=;
	h=To:Subject:From:Date:From;
	b=Bvlw+y2KKesn+FRnGugswOgX49A0lvHlBI4kFwfKbhV63xrKypeuMJJHBH69Fz5zh
	 L4P9wpMBsSdEYhJoFiNzLv5jIg+hm5TmVzcVHmfHcusY9R3+uQlreuA7rftppESXg/
	 bn1UEwd2b8cfIrYdj4HS/4HZ5nPqAFm2i+nJk1H2dG5a8Xmaii/fuCpnkXdsXVsy0z
	 d/+/4X6qF5fAxMjAkpITTuVCXiIOAueccpSDZwD0fX1H9Ny46cKzuIVI7E1Uec3GOb
	 54LYi+KH6Uq9EdtgJf9NhjuyXpKoc9F0gK0eIMNzWjr3hoRzMToxApAKB+IhaiHCb3
	 YwZVdgHBh4Opg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E2DFCE7AE0
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172560875363.6968.13699498470907413036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f4bfebba0b4013040a889fa51e749726784b2e5c243a2f72d28cb69b5ff5e72
Date: Fri, 06 Sep 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725608753
