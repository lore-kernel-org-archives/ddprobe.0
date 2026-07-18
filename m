Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5998C1E47C5
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 23:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784416714; cv=none; b=RUJdXFjG0iRgcDV04U4968KeSxmz/DA8vriGZG7qUi7ulQfuUtu0B50F06zJYvkE4TN4WMZl98n2HPMss4+AOcigkzX3vwL8muGX4Pc51uc/2aS8bCNdVHTAa9an1OB7h3hZ3nYzaR44H/FAnEC44+fN80h2iUPa+LOaZ9nl3vk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784416714; c=relaxed/simple;
	bh=r0voDg7u5PqjydWSEY70856DMs65WGp9rtWFHmpIy/E=;
	h=To:Subject:From:Message-Id:Date; b=VTPL/aapJAEZAND63HqPjqgScb9ObJcJK+Dzpea9OHORP55yP+B42YYs9bcTzS4QMckoWmravGUyIji36T8WLYES/fQydr2YK5K+taHuQXcH6q7anjQEwiK+50lG+GPl2lJLEOQaR4Alf9fqy6c+DZIAgd3I6P5FZdJW++akCII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=msiDoFsr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="msiDoFsr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3718C2BCC9
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 23:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784416713;
	bh=r0voDg7u5PqjydWSEY70856DMs65WGp9rtWFHmpIy/E=;
	h=To:Subject:From:Date:From;
	b=msiDoFsrGS3wW6tMx/IJ0Wl1rLTF0apjU4hZZeMTUYpIj5AQeciTafjjb6f7GbN9h
	 8jbUkyKddFdQOYjjgOW1wm4KtsxdGep9UGDGNazArzOzHMIAhJs0dB9PaYg9NTg6Js
	 +67o9GliSuO6pB90U4Wa//GC12N8QHO5EeMUtajmEE1y8HiTz8Ess9lHCGLDsdw8hg
	 eVLAWNhCMjiaaaUaHLUPqno9sWPzUWftabAV4maT7UD7EHnQLUv221AEWe/4Msnke+
	 fbrlKKKOMgHBJLwM9DkLA6v00udeT+Wec3l/yj6ahcxIXbsmgk2a8DlwQI/rey6aaG
	 3npigQBbfuTNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD731C4450A
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 23:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178441671369.27034.16344466998880495450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e57b8c564b3f2cc243485e078da0971e35138714bcac248e4fdc0a300964d043
Date: Sat, 18 Jul 2026 23:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784416713
