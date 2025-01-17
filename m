Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B63076C61
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737095154; cv=none; b=R0dJpG3zzb1om2rtcUUW/hVVegqOwsQVXC1D0FnY2yvzscbAdCOaKfeiIPSsqWiqh1loVRIEulPDjJxPJnoPqBnpDsUusnDTZoe45SNgpAX8Dr57NesE4JODcvmEbz+wSJVdRilqyzn6nFYQUnznU1sxqVYieieBfuxlXpcRuvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737095154; c=relaxed/simple;
	bh=7LBtwdn5ZGs2zLzKk5moPRrrYhv7FoW0zX/MwJnoWfU=;
	h=To:Subject:From:Message-Id:Date; b=WW4GHrhAnw7otmsHtWawc0qiu9JCr+oQhPZJFipnhx6Y8wf97MarTKxWC/95vr1bbgDPMa0oa0Y/k4gMaryHWXDZTb9f5HrhA9Piw74Wzsvs0wAZQ8yk/2zllIDsXu46X7rEQkGyeoImOeUWus3HbtCn1GJxjSL9FEBLpGBAwpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M5uTQbku; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M5uTQbku"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A557CC4CEE0
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737095153;
	bh=7LBtwdn5ZGs2zLzKk5moPRrrYhv7FoW0zX/MwJnoWfU=;
	h=To:Subject:From:Date:From;
	b=M5uTQbkuC/jIiVc3GzulDtUHxxYFDTgBnS1JIkZNDtq91C35SfDjvcAY8vYXj2s9d
	 +zJYPL0QF3/QizFC5syQqB5H8aEiCRMc5JTEnX7N2Y1uZPZzZXcnM+FHYe8GGOLwUX
	 lEqYmNq3WIVeSZ2kZ1jomEOWQm/rvyX/N26tRM1Ej+qBlqarUNF6k1t2ZLtve5I/k3
	 TvNJBXZNhfrhPSgYpOKh50tpj2efU+cYL0ydXcC5m+oevMGlQaIl136aGE7fwvYic3
	 KZVFTTfo9RBlm/K0jnKFaVOgz21sCeisObqba1XVwSf+RpKROBw/6Yc1QDZrQ+3BBx
	 gpERvFired3YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F3DC02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173709515358.2034.13534439240425623658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 156de13ebde78a8df7db4e51e5f05f5973cc88b1e0ae66e757c8aa374afb6c27
Date: Fri, 17 Jan 2025 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737095153
