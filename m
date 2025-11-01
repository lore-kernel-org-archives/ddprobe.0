Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EF41303A28
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762027194; cv=none; b=cW6M5u/IvwTUfmhQBBFifA3lN8Ibonm+BEpqXjBLe1eKcqicBwrqKLecXg7Q3YQUH9OUe4fQgWTygqWyDmiE8hvwolivrOwWOC76fy9ytRZ+KDNp9aw9aqFTdQYf3hTivu9wxfuSBLfm0V3ikZMeE67JGeRSKPEF3RAGGhj0spY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762027194; c=relaxed/simple;
	bh=PbNwYPbNW726xI85ENawehymUBLCx4lJb3HBQI/z/OI=;
	h=To:Subject:From:Message-Id:Date; b=jemHaQhmdvAajt0d7CTHKlzGxa1NPLyIGxAsvOgoXM8Dd5SZY0QwEZ0XzYZqSPOvhf85t4Bw2229aGov2+gOCnqxK64uqCkV3h4Y2voaocZXxO5YVkugMwDgF1nzjkOSFfm63YbQK7Xsc4909c9gOI78eWmX4kxobC+cNP4Zncs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DYtV47wy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DYtV47wy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3248C113D0
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762027193;
	bh=PbNwYPbNW726xI85ENawehymUBLCx4lJb3HBQI/z/OI=;
	h=To:Subject:From:Date:From;
	b=DYtV47wylAruf/gnOx9wI2AHvyqhBaJKxZ0lYqpToaYJew+h3VP4y1Lv8JWywOvau
	 y+NYOYQRVXSBr+3h1lLHj9CjkZNptruN6G6h+glwoFfJ6uc537827TPQvcZ+2gK7A/
	 nwqhIuURvR+8xVm2HJZA/x4PCYUIwjJdTFtfFWV7BNYT9DZFgSy7dqXOcuvaLhSK/q
	 8CK4XYDXV0gpLgnjq3cqY56mq9qzWNPTDXPg8jVz2nC/BK9adGsNkbb18WMHDTuYgO
	 PfJ5GCXKKDOvX4AT3VaALjs9561syvowTakAET9FGHVB4eb/xNhzlWCmj4nj5L/8Hd
	 /YCa6qL++5sSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CA83CCFA00
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176202719360.23474.12861991729619790847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff2121e56c066dd9ff0e7a7c27497013a1a3571bd683786591b3a104144da35a
Date: Sat, 01 Nov 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762027193
