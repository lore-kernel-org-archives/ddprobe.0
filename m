Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3C2D253F32
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745950193; cv=none; b=up4J6Q2lHRv0rbzBlCCtjC7n7PdSQ/H6OXaPjV0UUZxoGFbzGkfMj6c2+2c7sAFYtzEFm8TtLiEVcgA/xT2cz9TGE7u8yZOJji6qEijFfD3dH7XhdMn/a/Y5x+h0v8oBi5TBFsBSdS2iCfAEAIzUHhLntcaNOxyKqpWoiaibp9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745950193; c=relaxed/simple;
	bh=/ET6a7tQYzvmrPfBjnHQYeLRzqWYxIkv3LD5qofROWY=;
	h=To:Subject:From:Message-Id:Date; b=lUgOLuJOyEhFFEPv6yex93LzCKXr8UJcW/KelZz6WUGrB357kAkfErc+q6YcWu1IpSlX1pDxeVIT8iIAuestQlk6ew7tDcKuEYDpEbs+K7e4/NLriLsKVw0rudwMqdSLGhXhk22vK5MLgCdUT4n+vs5zs1npOOdwHXVewbXNP3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hNaaF0l8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hNaaF0l8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73C5C4CEEE
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745950193;
	bh=/ET6a7tQYzvmrPfBjnHQYeLRzqWYxIkv3LD5qofROWY=;
	h=To:Subject:From:Date:From;
	b=hNaaF0l8ZcvSxNEim/lllE6utz3G+GMJUjV+Yd3LGIKzq6ftJXcycy7N0GrJUTmtq
	 GuA/hHJoTG5zddM6pNrK0Xi6ssHy96Id34MNkG5txoQAkkoXzDlsIycx/SPNhArWhr
	 aiNLKEa9fQD4Ku6oLUMkWCotiJ6g9PwoZvfxn5bsK0y7MOxsa8uLfbavVYc6NZmzgs
	 hMoBtPcP8EtD5ogDK8A+YchMSFIrKJZ6Cus9WgU/9EhyDOzXsXGxtjtYFMZPeoJHF1
	 rKQb/WSjya2IH6doxC6DseaxCtl6DgRE8K4NL4Tst8BC+jaDZWsXoyOGgAE47YYVAJ
	 wcj00v9q2CXdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 981E4C369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174595019359.8642.12091213249336241858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64a7bed8bcec040ce0cc029d6382edadeb128b1e6f7f2283fa41c81c8f10a662
Date: Tue, 29 Apr 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745950193
