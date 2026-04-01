Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09C50324B32
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 05:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775022894; cv=none; b=JQYZSXpJIQCzc65YGfwT3K5TqM3tSf5jyf557vX5ODgnWbX8r6TBTfEZHwrArup3dl1sDoi0+2TkXg9xFAI+RkQmBAeRgcfViTxMx6qGhoo7JGkOFdQVVlr+Wq9QDL9V1n6y40l0q7g4Shggy/ZDgfrAosSH98QO4qQVVp8/lew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775022894; c=relaxed/simple;
	bh=5zOWyncjI4b/iPNkZZY8ZwNwpUPlRi5V8/RHAKpmlTU=;
	h=To:Subject:From:Message-Id:Date; b=H12ZW2AqsW14vg5rWlbmvA3doDGYlisPdnr09uM3c3ltpt2omOI9BycT2SDoxai4dQXswKqb1y9NWMHgqYv9oRd6hupZSmwob/iWQrvwWOGTtwW+UJ+YM/lvLP7ZfELj2mV6uwwmqS3A1PZYvIKvyCAuJA6CVNUM4zD5zaVri/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iBfbM8hn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iBfbM8hn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B56C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 05:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775022893;
	bh=5zOWyncjI4b/iPNkZZY8ZwNwpUPlRi5V8/RHAKpmlTU=;
	h=To:Subject:From:Date:From;
	b=iBfbM8hn95kQC5mNG90m3C5EWUdBW1OR0AD6GCCod9vU7zU3021kYMflG3iu7kCI8
	 c87wmtFqovtgAtvyPVBkDYUeZXtIbWdHY6RoNLvt1knrx7VblJgcHOjJNjgSqu0NbT
	 PvqgNo1qOubCZN5qQyz2WqnRbv9/4LVkSIg+Yil/+shvNXPOLGqejliUCQlAmDSBlL
	 gkEs3x52dJmodUkwc7Vc8E9i44img80widt/9m/KFhosPCrT7QqGoWroFqWVP0M5j9
	 p0jreqqf/kARfmKJtBybL+NiM3w/7gwXw7AJEOwVlRPKYyX+9CEQ8AAwUogxB6dWjM
	 41T6cgKgr6cKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9303E1076370
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 05:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177502289359.3199.11858439981393481719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e90ddb9e265de39a49c208ba7ed3a7b7d3f067008749f2dcec806916ec0a4a1
Date: Wed, 01 Apr 2026 05:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775022893
