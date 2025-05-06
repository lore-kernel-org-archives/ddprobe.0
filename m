Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32236279325
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746536994; cv=none; b=ERKE42v7x9OQFnBfQZYDkv6ZsiuF5SZN2iqum40puZzSAsiZdpDQ4NM7cTjim2SAVJs0osg8y3p0qkWY1s+mraYMjvUR1mT1DtgSYCVV4T8a/LYTuf56oTL39OaT9KhIws9VEBx/pRrpaGyOdHd3D8vGgLifAkC0pYJzDJQhMNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746536994; c=relaxed/simple;
	bh=kz2jneFbI0k8l3Y0EdCFCoznrvuM6Z2I4mTq/enJqAQ=;
	h=To:Subject:From:Message-Id:Date; b=KApoYj+hyLaGJaVmG8d0kpZ+WOGVcNM/3mDW7hTqAjbWhFd5OoEMwdV3RunBFEZ8Z+Ll7k5MXRt0sb6jn5zKua4In+3PPeleyL+yOyyYJELfFzThdEFYOpl/lj6ULeQK1VJIs7fzkY3eYUgeStOyz6OjySAO9JZigNsIUsLOu/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gqa8zTQO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gqa8zTQO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E08C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746536993;
	bh=kz2jneFbI0k8l3Y0EdCFCoznrvuM6Z2I4mTq/enJqAQ=;
	h=To:Subject:From:Date:From;
	b=Gqa8zTQOrr9Qn4PBAM+aX30dTgENMiz23PPZOc5WgaLM4bDy9XsEHN4UE7BEmIwMj
	 id1dvqJz1KFPRuwqPhQ50O+8R69HN+/0AY6hYO7afDGhjOfmbWKda8KzRCnLvfHbQ/
	 YC7bjA0EhFvRza/8y/m2Luudbdsbz0yx2Iwp1SH/l87L7aAeC6IZDKzYQjhSIznKeb
	 ssikyA2geIdSRaXuHYCktwjE6yQE28sApLxdJ6Dbzr+D8rSjqVpH4ycOXgZGlWHEpI
	 /kCRefe4lL+uerg/FefezrIvWxlSaeP2kgP2rEeaHx/PPkbyZVXdg/2a3lntw2lmqT
	 G86gdP+yKNnKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9470CC3ABAC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174653699359.24679.17831444684934028787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a564d63ac23e7fd73f17c0e9406ceba3e53c6c0e156aabf9154d2af128ffe76
Date: Tue, 06 May 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746536993
