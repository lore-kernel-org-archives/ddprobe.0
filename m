Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1865829A9FA
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 10:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767089634; cv=none; b=ANjc7P7XNh7mZlGhAcZaxrn5xvD0bWWK+7kogRkR8CaO0CbTzJhhRUuaYEnluSjPTR2TvYPWcP+XijZEHgt21naVt1Y2J6GizpFc6uXb48JRPiwqPJ7iz9UCpw+KR0lGxsuPtUCrOYFO0rgd5G4gNCeiP1RI7LF9g8OeQvBsfq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767089634; c=relaxed/simple;
	bh=83McNvL0VBthElw2y8JXq3wF+VyYnjEb1e4LoV6vx/w=;
	h=To:Subject:From:Message-Id:Date; b=OfyoOY+38N09rgppqszEaxze3LddyRc6cLUCJo+AgMGdm3XSXUT4YECMX6f8LcGUIczNtoQCMCBjpcWxC8RrYxWMu2nGW7q2W2uJoDoc91SE79/tVQXdt04NKd8UuZOOyJ/r8YHrtDBioXaHmPq3k6lFnsgQlfWfv9nxAUQq9+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bvbWP3YU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bvbWP3YU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4314C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 10:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767089633;
	bh=83McNvL0VBthElw2y8JXq3wF+VyYnjEb1e4LoV6vx/w=;
	h=To:Subject:From:Date:From;
	b=bvbWP3YUm0EsflWQLITqxL3TqyK7ISzSV2nzxtaTw/AtJcDLL4agXVIW60t5dZHNp
	 cjllc5bcLWibPKQQXTgJjBuvRiv9gtSCYS9kNy9EShj4fCs0SkeBG+08miM7Lwip6A
	 GlV5S9wEGY01GBMuw3a0qdBcDsNFD8p6+7zPYozTzOA8YevYwT1WHB9cq2YXjRsywY
	 laj3qeHwpUDU1+U1lvCh0csD3UU21aUVmazFiObCAkNbCWDvTvor4w2NlC7lOLodps
	 ya7AfkZMw+0MtmYGmKLFqqXhD9/dJNcak3E83oUTlUrHDP6I0a4/IXeUlmcnP+0KPC
	 8u545CJGn0euA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954EAE9413E
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 10:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176708963357.16648.4317065666145507900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87a088fccc318ed492f5ae92b069c0c08fe468e594d56e9ca3fed69b7131e0a1
Date: Tue, 30 Dec 2025 10:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767089633
