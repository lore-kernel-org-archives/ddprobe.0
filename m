Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 409C1175A9A
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 23:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778886034; cv=none; b=Ew722M3JL8Oy74TiEKy33paegSenf5KfuvDfpEmKqAtWANpJ9pwZUkcsNg1niwGfW70jX858/uVy4Hzbn8DsXb0qIC6fzQ0N/YN1HWU+3h9NQWFZfA4FPRITfZFKN7LFgyDM84KPlWkRo84mgOT/OXk2lY8Rh/QMCdfTsLzD4/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778886034; c=relaxed/simple;
	bh=QvhnhI5WabkZZbrKmz2TeOVji8Ja28w5TaJx+qTMp1c=;
	h=To:Subject:From:Message-Id:Date; b=iN1bLXfr0D1552TFtemffSZjKA4Ok03iNGMtXV/UkMbQAMX+9mPrjpJIWQfSsfnCi6/bZouZa/fvKZPfaE8XgGRjSlmOO9ycO1yHp2hnOX7khsemM4S+iJQ0pXz2wMlLLHNIhIHO1I6VDf0e59BswGWetStjJUD5aVCv5oCcb2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=naTKKLvP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="naTKKLvP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C49DCC2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778886033;
	bh=QvhnhI5WabkZZbrKmz2TeOVji8Ja28w5TaJx+qTMp1c=;
	h=To:Subject:From:Date:From;
	b=naTKKLvPG/WJwou/drpneoXz1/kt78DVZfPl0cctij/dbizt0sBXPZ+GiAkZE4P/A
	 4iRNvuCajP8nOB4VDyn3nUmglJc1PMsHJeV02D7vKrn9k5290rHrePLlChTIW254AV
	 rbKpnpnRx0dmUY5aQXqRyemK0ck8x03lyTQWKRD87zZoZtOupIRLjtRkCqeWlCYcTn
	 nVo0539wt9c2ZWCzSRXiD7DtAg8cTyw0x30MJH9hjaJxkE8KnqUxYYuTuUwAqHJMsx
	 HZMqvWX4Dr73rJtf4lbBWZNhaFRi4F2jrxvcmNNtfAjuvaYsU+dfZlv+HtbOuyMMzu
	 L4C9Ypo64h3XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B13FDCD343F
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177888603369.4298.3488808143382217841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36faa64fac5d3a7171c3173a5973a56f04aa6ec591588c05b2a3449d525b0b00
Date: Fri, 15 May 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778886033
