Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1573527FB2D
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 12:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766406234; cv=none; b=aIVTWOm3nKE3inM5HGCFd4KicGulr6c42o5+obZtzIaQc3Rj2rYfxyj69LPXMlR1uMYiqJWCFxTF+GaPDwlGHbm3OamDSmn8TM3FSJUA9HnJm/m9Te5mVgmQZrvJ6mWLRjbKCfqHtG4TmDYBkouw1VBLZ/X7Ds/3fFFQ9b81RLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766406234; c=relaxed/simple;
	bh=e/Lw+IPE8ORnURzQm+P54qxtuiyFsnO0GMkBHo9J588=;
	h=To:Subject:From:Message-Id:Date; b=F/8/9wjbFRo8kmfVgE9/3vznJkOMfnyJCuGWfly2qG2m5OYP9zEEsZ8Xjq/eZ55oZF7exTts41c+bsMcUfhiWxUA6aOnqTgso7y6/HYLo832AqXe0H9NZXBLTt6fqBM996zaemnrQOmoVIHXo3WWnfxPlyLL46swDBh9PJ5lPvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u/86xl++; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u/86xl++"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A2FC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 12:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766406233;
	bh=e/Lw+IPE8ORnURzQm+P54qxtuiyFsnO0GMkBHo9J588=;
	h=To:Subject:From:Date:From;
	b=u/86xl++ICi5UYb9eRQ7pgy8uHPJMU9LaVBrtyxSZQ/KyD47f9JIZV+WLT7GtFKWr
	 /scZzFu3N4p4Z5xNCabMi51ixI9HfuM78Q8JVk9XLNA2BEYmIlKDV5NzBIKjzJ16e6
	 L5dlJ1e80MZCy51TfiPIVlNOQwJD873XOiHrSDqq8TeNgxSHWyypVJex1ZqbU5D6FY
	 tyC2q66qgCZkxyWoDffYImfj81K4R4laRbxbpde1ICd6m+Sd5ubOWjJV0A63K8d+qt
	 W0CrvV2ZkSpo2TVzl4sMw3oAPxTEKEsvGDTLqO7l1nwu0SjaQRcM2KOoiosksLqgeH
	 yFdTeBbSng8Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 967D9E6749E
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 12:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176640623358.25001.3954048947611257846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6378946b70f3f4f5fbe6b687b0b61510334ebf0c01d761e9d2a51c9896926ecc
Date: Mon, 22 Dec 2025 12:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766406233
