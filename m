Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 268EF2E401
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750132194; cv=none; b=E6YH6utexfy8teJOgXDwaBNl2zHu5kkH03qRFwzSWWR7iRZfXXv73x1xKVXRnMp3jNiWqVnTLa1W7v6iqeKT/bwvNuNJt5ijU/7mPAi9U6pPgE1jC5HXeA5EBKMdTC7PNMbX/AQCmPY61aftei1cQIBI6YJPaOJUQeoGkbAequs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750132194; c=relaxed/simple;
	bh=6YYQHkcnHS6TUBbWjQf6eoq6vyL6+zeRlOQj0TKyH+o=;
	h=To:Subject:From:Message-Id:Date; b=Nsaa+i0q4ubkrTOxuABhh+cRdWXcLmGGjFH7vDCqciHookqRvRjWIct/1pK9v7aioGsfYUt78mN+6UCVBM2TqmWa27c1QQz8oJG7t7ep5I2k9JuyV/joNjn9FQHaKLk9ZSV2fWmfmc62A5OffUBk/VPfSkiKIcjVfs1EB9loKl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AkycjDXR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AkycjDXR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0264C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750132193;
	bh=6YYQHkcnHS6TUBbWjQf6eoq6vyL6+zeRlOQj0TKyH+o=;
	h=To:Subject:From:Date:From;
	b=AkycjDXRIrYWf78cg9yQbMS1XgAjSRJNIBaEkkl9IGBozwG2GLN5dXMM2fDK3ng0t
	 ZWtyruhxQTn1/qaHiUp/Bcq+GfK55VKktyy0NFPv/40XNydoisA/lTxrHX/OV1SiVz
	 eQfpA70DB7/UXTVsAjxVnY1uibXn2yBRajGAfN2xTeDX3gpF5JBhCYnTi/+l7WFZic
	 yr1DtWwWuQ4f+KuEjOwEGLa+j1pv8UX7shQkmlrKKifyQDj7avtV9kQ4H/ygvIf9QN
	 9yxh6R/6SZ4FmutgTnqUbG/LaA4tE/ecwgo45n5D87t9WewoAMF99ae7caRe8xR7aC
	 EO/Z9eSaMJ6+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99089C7114A
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175013219359.30636.12683150989512266692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d2d6eaffd541bf87d290373f139b1f4fc3d1a8122a478ab6e9ab8e126510467
Date: Tue, 17 Jun 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750132193
