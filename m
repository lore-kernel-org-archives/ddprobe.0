Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C326D22B5AC
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748626193; cv=none; b=hRKZOXxCAIRl+HKO3I/bWUjkmlqF3Qo951DHSsxb9acjQ5VcXvlCEH+7/b0dda2Y4opGorQ9UZddnPz1ozFgHpJFluE4sSknF7KrqwujQ1ZnRtB3/P+AYaZM31tjuBuZDcLxZze2/r9AfzTku7DDsnoSuSRs7BVoleoKeeuy7Ls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748626193; c=relaxed/simple;
	bh=drdct45D7Hn4IUSi9Zyvo/5AH1atBCa1GrCvC4VXybo=;
	h=To:Subject:From:Message-Id:Date; b=koHU3WDEZ0bc71GNTHSL+qe6DjR39IUmAiHRdDUs7c4zEC0rwzIxlvVWj3W2KVisC2QXA4osATJIS8bzGmeZZUThDN8Y1ctjANcuOghSk5FVSvBNHuZK9IiHo18gd/+SFmparbrVBQDMxlTwjWAH92RpDkiZJtft6OOARPV3080=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lvd84802; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lvd84802"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A233AC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748626193;
	bh=drdct45D7Hn4IUSi9Zyvo/5AH1atBCa1GrCvC4VXybo=;
	h=To:Subject:From:Date:From;
	b=Lvd8480284nNY/aCZhtOvo+AMvznwBwW9i6CykQF+7GifHrjgFbvOJpLR3zG/Mcmf
	 9Gr8UtKQ6f3BsJWhTWzS8iA3jD5BCr+4AfD8+K50Rm7np5AGN6s2XSyi4Jc3flGDC9
	 EJTKZpn3f7LOLTSQ323x7MKAnjOyp6zjUi5No1aQ+qFhwMdf9Wyli6Iag3JfeyWPs2
	 OowtAUVvn/wnUEiOUWDkhDRwDZKZyAZrYe4D0pPKlAMilCGkrAo9BNihLNySZvPWG9
	 KZEmzJJcP2nUG+iZcpqavBAnVPa7JpeWCvFVp9YA9El/1/vzYGO3fO8LFYXuB0TY1f
	 J+c5aU7FCafuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDB1C5B543
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174862619357.25400.15587627729740611939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85c203a44a2fed0390c05832b5473505bf6acf58787e867804d50b105dbd3880
Date: Fri, 30 May 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748626193
