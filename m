Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27FAD1804A
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759378194; cv=none; b=CQKLofoHNBJx1WsPsUiXZ86TjGq2NhWuEsoF3tEaqn/tlA8uOtEJjxF8hha7QZu/5ZKkSO6jHKXmJ4cmAKl7DKOAvIll729aX20J9MgLRAo+4VWd/y6sYa63sNG3sz97ZvGNEnKzWG6CmQDe8UYJU1F50CoU3817WXguIGMg2Uo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759378194; c=relaxed/simple;
	bh=QTwOfRzlshIG/Lr90HqJguqj0xpr4LlJjLXc4SaDTZ8=;
	h=To:Subject:From:Message-Id:Date; b=J6Hs46t96pvIUFd6ePkXxzhfPC/ZcU9uvV9BuDz7lY4hgWqGoYPEY/pCQL5nviopNJ6DoDGdnq1d3bscDCBjJDNJ1qhIX3nK2ym/0MZmxgmAOL42JdCTTKsqLfSJQ8gE57jwgEmV9C6jNpPdDg9gif3eBtNYrAMxurXQb3LksEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S2mwV3iH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S2mwV3iH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66DEC4CEF9
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759378193;
	bh=QTwOfRzlshIG/Lr90HqJguqj0xpr4LlJjLXc4SaDTZ8=;
	h=To:Subject:From:Date:From;
	b=S2mwV3iHRbTp+DYv8RdkV7G2+wViZyK9yGw8pyljQ1IEL3/60i8+95g/tP/6fw9mw
	 PhLS28QXjME9Ax76JzKqhJ2T370ZvMVws5UEHo5aR/gs3qVKyQy83WB2Md9382FcAB
	 VrEjW8wYwxtgXMhCFqLK7rpR2iSHjRjUu1kEZoLlHHfXoNaLZOM/YpiwbooCAAjXmK
	 BrKvUS95zkpGmxMRDzb+eWcF4LS4MbtJhVbAGeEmvzGKQrkdlJ+s/3v2IslzLxSezb
	 YHjdJiTdwgUJ7UVqL4NIcNaR/d1ASTIA8TCmpyICoPOf40whQbESvWXbcuspJ/m21V
	 iXt3BkGnUnskg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9233FCAC5B8
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175937819357.7118.8993392614996394478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35b368244f7a3dc9b057c96f7a6bd974abb60e3e786edd129148d09be0ab9cf4
Date: Thu, 02 Oct 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759378193
