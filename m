Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09BA81BE23F
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756169394; cv=none; b=ZO4uPJE1HUNxZYtfibxHNojpy++Uf4fJZBHIC5TadD5iIV/PmMoTPC5bj9VnGQtpwqkVxIrdxCn5imG1xxhCX7fX2Mov3bXw4tIQdeDgklcSmsgb/5JuU8aZsjdJ/jI8Xvx7YRYx7untJh+VTDTtYF8xpbjmkoHDuorxYcOwWsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756169394; c=relaxed/simple;
	bh=wKcFih1KpJfWAwbD+66w/erUqAMcDEmHdQT0/mWVu/0=;
	h=To:Subject:From:Message-Id:Date; b=gF1sWjbRnfMqSYTpNGImAlSLw0hAA/gfs5lfOH14g4TZ9ze3+bxokqJpT0zveCysAZHHBvNKfawBb1c0pvtW9nTlC5gFUrPLyGO5YxTQIe29WWFYDXBX3Q+aTnLaeFfM1zs0Hx9KvmuQcTIjlSB+KvfQGazbbIy9tPJp483mL28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J9K7ud6e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J9K7ud6e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4EA3C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756169393;
	bh=wKcFih1KpJfWAwbD+66w/erUqAMcDEmHdQT0/mWVu/0=;
	h=To:Subject:From:Date:From;
	b=J9K7ud6eAtO/G/Tl2A8XDS7QSqMCQctiBJtXpOD8whW96s2UJ1O7oFcQAbfqF7v1m
	 T3YZF5ttz8h9Tl3GSX0izVeEkJPXVL+KnJmfBmdPbfK8zIfD9RmOTdKe+J1PZ+jq6o
	 PQoI/B4gKBbAEq/A4o+gQCQZclJZ+jxZvWEVQ54pB+pfj7kBlJaqXhUGI6XwNpoa8N
	 CpsLjPrzUvBkOjDMhzRbJM9xNmbAAzG9w6gctzXh5W6q9eLN8omrzUKdeK7+OnRan3
	 cMtm2DxsfmQSdcv8PX6YGIn+BnKwwQcMB6tn+PWs0T6DFeKxTMilBxoS8L7ZQedVyo
	 vEfKadkd5PNhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918A4C8303F
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175616939357.19397.14156763124459990910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bfbcd7150c66c50b7e086269b5863e652536b799c5b462b7ac726ac66aa9915
Date: Tue, 26 Aug 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756169393
