Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 309022343B6
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 10:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741776534; cv=none; b=fVXNNua/5gpmYt6Hx4H3TeILA4tomQsPc4SXKJiQ/cPFkbt2WFbhOOqZrX4J37RPfBMGR90dDDTwGDBG01FzPxBDmZpTkbRCkJZS2IJb8hZ99qQNYpIYar7xIVlV+yPfL6BCckVkn1KdUfuZh1kTxwEpskLSsAyMsgrdFEr4SmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741776534; c=relaxed/simple;
	bh=zPrJ1E4n9gOXxb0uriN3HfQ1JM33oEZKVVzR7OhuoHQ=;
	h=To:Subject:From:Message-Id:Date; b=a8Gvo1Rs0JB8CvcHvub67k97tu27d2nlrodAAufdzbPZpu6fGTjJCRDEIPWWSP5HMwNCCDwVths71RBwbDG5Bm5EPk1gBSn6AmaG1hftANheJ9J7GWdTtEaQU9O4h/FQ/tACL3ne+suOho2SBbVRPCoAY2gBUFQ3UHpYMVLZhjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tGXhq+4C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tGXhq+4C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7ED8C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 10:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741776533;
	bh=zPrJ1E4n9gOXxb0uriN3HfQ1JM33oEZKVVzR7OhuoHQ=;
	h=To:Subject:From:Date:From;
	b=tGXhq+4CZq4h2Q/nOFsdItktlUpx+pitxg0jXiYaWbET/1Q/36252Ofx7b5yWP3QS
	 U+gHT8ZW84E3DH+kAOanvh/z4JeK5DFrGek5OlLnUby0WpJnsBT9DGhhGCIQ6RAcki
	 92KUZ3Y/esGxVFoMQXx/Lj1Mn1p4mKc3+N34z5mjwHftyEIiJsyoeKmkjOJqC8VqC3
	 91oCiwxqVTWNiBQH4pxiYLkpL/aKRd76hAGXmYwsyLjLgNxAiZlZET3fh9TyB7SNxm
	 361PwqAnTQ3+sPjxwZWEfyWJdR8J4GbRGjBOhjACefKQDUUzX+eHNTVSORaOXGQjtQ
	 JbwD3hm2dKQMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C120C28B28
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 10:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174177653362.23778.15340884740502782451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f83bc5501b2df662de0b2148bcac5c91893b7d24cc6139efa78b32fd35bcd2c
Date: Wed, 12 Mar 2025 10:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741776533
