Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32A1F4CF47E
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792312234; cv=none; b=C/Su+87wXWHccFr1yXWybYSQ+KuQPB6cBOO4ybD0Jr8QsRKpQouXCZnLp2642aAElmZh8vBKmxYI2u81Bq6p9UlJ2aFWHBQfz7+hckJbskdaZxbaMzUa3/HOKVu6/EXCwGuX2btJDAi34olq/5lQ20F7OpxSu0S/6q5ahyDKyX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792312234; c=relaxed/simple;
	bh=edQElEpYDIGhvr7TAMfngOlaoQoxsy90wj+zB883XZ4=;
	h=To:Subject:From:Message-Id:Date; b=ofp/Ml3oVykX4UddOR0bX6te26hKjnX5vFhvOnnGAKv0d3VvEAgkGc85aiW6Iu06ON4rZp4+RMSLE4jWi/hnc+37+KVa9Lbx0bHaNdR5NqHDq9Pu0svj5WOg58xgwpW8NadqmX5BwjlDX5WWzNUnE8rdSx54oEGmaJwfm2kvaw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DBTvJFom; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DBTvJFom"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9302C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792312233;
	bh=edQElEpYDIGhvr7TAMfngOlaoQoxsy90wj+zB883XZ4=;
	h=To:Subject:From:Date:From;
	b=DBTvJFomkAFbpnHs4i+gVWEGYiiOIg95mHw6IUf/doFBe65J8a+YMXVOoN2n0EYw4
	 fK+ZvhsSmKIPUtAv3lXlViLCaAKC9qMwEv4Ej6VFlHLOqtgQv1185JeTjlbUWcfaSK
	 CNmJj3ptmGBivsM/r1e9/5JvBQ3ZSJKhh6MA2medytDiAkwFt8qULyB/TBpgwyPwlD
	 hw6NQgr9Ym42tT3mbqvO49dzo9IpyreLvMb4Bv18lowah98b8xNqAi5BhTdK60q9lQ
	 1z9wSiYagZLSuD/dGvPTvrCn7iPYkksyrK2eelkpesAjMPfGK8HJCBEvhLiTM3wa3m
	 KUKOqqlzFl0cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5022CCF2C9
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179231223370.7301.5083657728734278484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 099166a88676f92fcfcea28048e9dab00f58fa000587608970f879c990854034
Date: Sun, 18 Oct 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792312233
