Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC362C027B
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 12:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764938574; cv=none; b=jXWThBpl6c195a1ou2k4RRACd5vg925NnsjSkLoNh8Dj9W68/WhTzfoji/aiKUH0TWh5lOz7QQ0dHXw/5erN7R/CmjZWEajw0Sv9B9m3xehww+sZrjdvpZyb1iawdK6TseZZTqt2Ao6AM4lT8AZWOhcuw1V8MOLd28KiSlOHWsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764938574; c=relaxed/simple;
	bh=zMDrLXzfqsweRBI9TLbvT6nRGxRN4X8tWlAYHlHgW4c=;
	h=To:Subject:From:Message-Id:Date; b=ltlwAVCdbAU6pDaT4oQXSQ49Y09NXrv5cBQYZqAqkGzQE7KAgnAu9pG5WONCf/TPsNXRYX6GVCNAxFGis6xEEo2121i4iXuEpLWhCHMwJNXJHTTDv9GjuuN2gy88AhlSAXYm/AZvSJ7p6WMgzwydVU0kngxRsKR6JbOret3Pnwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s2i69S79; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s2i69S79"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7019C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 12:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764938573;
	bh=zMDrLXzfqsweRBI9TLbvT6nRGxRN4X8tWlAYHlHgW4c=;
	h=To:Subject:From:Date:From;
	b=s2i69S79lmKrEak/uFc3HefVNYhxaRbXnv6AZ5yTKNkbToT6CEVgAPCBsl4xLXUod
	 uAhIQs7oOZaBgKlhaX4nyHb/Vy+Xef7bOwHktnn4a7ClC0e5OiFwaKFn9OplrtGmUP
	 hYnMwF1cOTZSUkiQj85WR36cIHPHfS6SRMexqGsRYY1WC+cFXFjXQlBDQNQo5Yo4W3
	 sUgwVSItdo8L3pTxDL9YdAs8rmVsSfAI6mEwSxvioo949mOEDWK+gFxIy8zuuKRwIm
	 6deW/i7cKRiQBg++6JZvvScrUMu8pwICxdnUtPEV9xErckvBT6//cm6ydRFI70BVQZ
	 HnRdFq/58EqDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9233BD2F7EE
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 12:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176493857358.15890.3249780075857115298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9002dc7b28567fe16d3052160000b1b9868b39e65c06a7e1e9dcbb832430c641
Date: Fri, 05 Dec 2025 12:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764938573
