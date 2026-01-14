Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13DB711CBA
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 20:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768421034; cv=none; b=Wiq5Kqk0YX0Wl2CR/cXJmW0ITL1pvE2+YZbFOoZZD5+rwiz/BbiUWLMMc6XBkfNoon6KsdYaDRPJ6GT83oOVMS26xF7CAIQKzBshqtHNPsEcJyo1jcsYRKQqvcSsFoONyUGf+rk9GDNgBMHNgR2qmOS2d8DvQ5RIXXY3iGLAW3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768421034; c=relaxed/simple;
	bh=Qz/+0zHDzDlsiR/Nu1je03gmesHqHNAM+mfI3GN+ZLY=;
	h=To:Subject:From:Message-Id:Date; b=GJKUVHfuSxbfc0kOJx/kkDN2U5W5BY51G9ondf1YgvJhiMaFKrR/99PBsCXn5U13fQ/LAqn6YYcjNIJWcnVzwcOYdRiXX14dyh3xZohzX+0xIfbHJK279/AeCEStapj7TftJiHblR9z//8cnmuTdlAsKheSpbNHAkXmZj8FYk58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jfvSh1el; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jfvSh1el"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E92C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 20:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768421033;
	bh=Qz/+0zHDzDlsiR/Nu1je03gmesHqHNAM+mfI3GN+ZLY=;
	h=To:Subject:From:Date:From;
	b=jfvSh1elxWcEEFa5NLjq1abHPba9PbrhKKIVI8fg6+QLVcm1169cjS5537nl0PM2H
	 lZMniQDJ8QicJgrINQSuIw9QQAfhDXZOgffMQ/II6tZwAYbEmUB3ciIR2zLXMhkR74
	 ZWZFa65/sO6ltZ6GfbTGBBWOgB2orOq1eIvcqTePZMhYU8kW7lgtJ5VDHNSQo8699P
	 0ecuSvRjLgTCmALDuNzqnzz6NqA2PM6e+S2vsKzNXTj4qQWGhU5H5zheadi/+N70RS
	 PP8PuBOcj+NA5UnQ5ASSN93VEidceiyAWLcp8gLfm9TC9ZQDCjcVKe7LwzFvJ9851v
	 DajzYhovG1XKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957ACD39011
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 20:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176842103359.14917.3823748880495024915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3d3e9e0fd182f5d0eadf3f277fa7180ef54fee4727c7b0ca3c55b410389c900
Date: Wed, 14 Jan 2026 20:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768421033
