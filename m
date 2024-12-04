Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66289219E4
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733286354; cv=none; b=CATYo7LLpK7QMjpe9rzSjhQW7MvlrBCH3OMl0K0vSYDiHSK7paW8bemAC9oKeDHtI1v1O1PvtjDmGdxCw/CUE6bfWiZ5fzm5ySbUHbvkhtx5w4Fat2bWLTOY4Jr6DHaeEd92edHqoEhQjOpHm1QX7gA536zdw9G9EKnruzaIM2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733286354; c=relaxed/simple;
	bh=LiCe5srMHVjp3J7X8bzu4TpOyXpngLCvZS0yz744xPs=;
	h=To:Subject:From:Message-Id:Date; b=E/HfXVl9Qd8HNUMY6UWIJwJmawKppMJNkFlBIbz1m1Z2odu9ZYr59WMbRwg6D/VtRjXM50wItmT3vCJfTh+G9lFkiFHPDEG1FMNpJMBB+RgjwAD4kkPy66y0JL8Fhu6pJoSmmfM+nC2kdfFFYaQYVHx0FX3AcHHvjqa26tWmMmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o9kUILwg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o9kUILwg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8126C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733286353;
	bh=LiCe5srMHVjp3J7X8bzu4TpOyXpngLCvZS0yz744xPs=;
	h=To:Subject:From:Date:From;
	b=o9kUILwgSFQlYFxhtOt+9VPttGAIY1urIOs7Zf37mt03nmaKe4RjqLbPoqPozTcFa
	 4AM3D8uVhKTmepzrkbAuGxbYX0NdsK7HxUZ2XtBsbTV1W6TblhWRd3A0l+UbJxjCaK
	 cKE4IJ76CoW9kTJP7LNZx49Npk+QhbCXKfsgDdWhbYTrpUOZSVw7RHU2jqtHeDXAAL
	 jNsPn4LPF5vlsqwwc6Qb18VPDM4bT5DYPm+ig1bMF7O/k02XWy8+7Yk5new0YLnYcl
	 pNGqqNP455gbQ2LGANDp/nkqm8eSzDcmh4cPJQVr5AHqoCZuPeZtyjbmTdObhQfxtE
	 UBpGn51y5FL/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5306E7716B
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173328635361.26483.4619739931779543160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a448552bbe0eba7f1a443b481fe2a41c2f4e0f82762c4c112c39b61474ba455f
Date: Wed, 04 Dec 2024 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733286353
