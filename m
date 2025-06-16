Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28E524A0C
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750112395; cv=none; b=bk5eJStKu3fm1XQ+StvC6fdF1+oQ8C68wSh3+i51veoKuviSQBW0pqUB2vRhrl8qW8FYNDyjUtfKcl39txb/+36xltJZ/gtDM7ilwINnEC0L50/UskmtrCeUVtwIx6//+olAXPfapLwzBu848ncFT4rHhUtcgLzIeGUBtskttEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750112395; c=relaxed/simple;
	bh=pvjHXR6YomTClF/GOfXn02TRweLAkLQAVqPRq87oeQ0=;
	h=To:Subject:From:Message-Id:Date; b=JY8aM+6BW0xkQXpkEy5hBlZs9mf2EeZw9O89hR1O5MXtnKIWPsp+o1Kvh/5GE0HFiwEYX/QmF83rW6nh3Nr2vz52nGfWv04Y5G5BjTsVTA9n6qlPKMmBhgeNM/kAH0GnlKg+LyTlvYerg7yeJgBVBe91dSUMpPxsc9HT7sbGrRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a6CO+s/0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a6CO+s/0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E33C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750112393;
	bh=pvjHXR6YomTClF/GOfXn02TRweLAkLQAVqPRq87oeQ0=;
	h=To:Subject:From:Date:From;
	b=a6CO+s/0QBI0JtyR7h/3M3ehVM3O7VTpyQNQWlTWZlmvFCIdu3kzBc07ckYLOuqui
	 tm66N9yWgxZU47v31L8H81CJlcE0aAxv7PvAP8eg0DaJB0nieBz8WVvsCqkCdbjs1H
	 lsApdNQic+kFZtqxJqy1nJu6NsBSSyfH0w8M4p3OfDOmjc/0RCLplz4VS3Y97jObhH
	 61iudb8E1g7v31vr5NMI7019wtMkWDEeULKm8uzn35aQdP66+KuPoCDeC5N3HkQQkV
	 F/Ocne+l/tdD5cJI3IKa35P76GnAnz832w7RZh32IIsH2wjJAe5AmHW9VEyf0JoqI8
	 yoRhXwj2sXjLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9386BC71136
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175011239358.16841.6270526225107558963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a7ad4cb8d7ab569f662b28f64abed1cfd47d8b6d242758159197be6c55351d1
Date: Mon, 16 Jun 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750112393
