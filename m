Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F4003C17
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724685354; cv=none; b=NyjwV0mDk1u2yzPlHbxspQG13cYX9fbJK6/8OAzDtTWavD4dYk+VByBt2yTl33NTwLgrc1xoj+eZsFaY7/WQgQB6Mny1jnZ9g6OipTXAcz8Beeu+m6/nhvDUA3TNmFQ4trrfJg9vSBM+Fz/5P7XKHJRx57mMar5ZgIzHDLPm8Ng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724685354; c=relaxed/simple;
	bh=BoD+JkMM4s/v3mK8Lv+PoeRR94uLdl+r+kI+icTGvA8=;
	h=To:Subject:From:Message-Id:Date; b=C6A6b6QTkQWMTP3iXLD+6ydVv1Hx88EU9n7RIYHNqkPOcgYJs8yMvbNML84+hKalZWMydQzEVvXmjTlzAM0TktjtTdQqy/cLLTw3N/qCfEsgE9AdpB6MHVkcPmmbwflt6xf3t40IMVuOy6ByslZ0imxVhGq512beYSSIjokoNH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=elKoCzVA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="elKoCzVA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7491C56892
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724685353;
	bh=BoD+JkMM4s/v3mK8Lv+PoeRR94uLdl+r+kI+icTGvA8=;
	h=To:Subject:From:Date:From;
	b=elKoCzVAM/omiPDldtSAyJrer3IcTM/hpyu3jWtyPisR3B4RdzLTK0ym0Gb/18fki
	 edL+XjT3PyKE9cDqen4iTts3XhpM04H+iG0L2qyEIrFmqWcH7wrmwlobhOL8dWZLQo
	 glolyoaWD7giIUG1FoThqt3JHoC0LxtweeLRD+chRflZBn49qcIp4iGh2xn7QZKNIt
	 GLgUFO+izgJt3Ay3IFOR0+FlUshgYZeDg0xBCqKnMthPe6ghxUhVAA1q90znX4JHhg
	 J9lWOOGqdkgH9y0vk0/0lwYtiHS7QzMMUmPjR0f/ktcjSG/dZBrZUipyXCL+tHKcFN
	 O0QcGnyhed1Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98FFDC5321E
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172468535361.21883.9014469742517222047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed764ce8978d3af6cd65e2dc9e7dcc369a40ebe9a77734fcf5684c68c3ab7fea
Date: Mon, 26 Aug 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724685353
