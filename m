Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 172B072622
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 03:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768620834; cv=none; b=liFDYvJoypwz1euPGeIyZ+ZtGVI3DizUufxNFWFsNOpX8cQ8yI8LCOfs1Y2EXU1Z+omgEg6mg8m6M70dZSyy4Yy4R8YYZGFJGRUFJ4tg/PJuqGPKL0810RO2QHTzDn8Hj14jPLfw17rYXjQlSsk/X/Ldb+/QEqvBJCjaLjH3xs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768620834; c=relaxed/simple;
	bh=PnM3ZSGCjL204qy+6/1EocZWWXgC6PRLuBBa2PJXNs4=;
	h=To:Subject:From:Message-Id:Date; b=ZFctGyFpBizWp0HTQwXlLomgmg5E91JCQayzMtDvRyl6Xaj7OhWRCYdbpoHmyPKYbBPgb6LlK6ADr3Q9triX8nxQFwBxch4Gd1wQXc9O1O9Rn85MjAaSHgyCFrOL9C6FWPdBsSaZF1u8SGAv4Wj6WAY6UzPHGdufE193M8AfN/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X/B37iyV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X/B37iyV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A198AC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 03:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768620833;
	bh=PnM3ZSGCjL204qy+6/1EocZWWXgC6PRLuBBa2PJXNs4=;
	h=To:Subject:From:Date:From;
	b=X/B37iyVGBvf7rvnfGhQ3lxYmzTTAcXi90jr3Y2Xi5aX6SYrI/oBTVBWkjcF3ntd5
	 2TcG8bvV54dxk6lmVhCsx5DnWmA8D43vfp07ja6KaTAWl1iUqfOeNw2L2rJf83kqIX
	 eNUWCndyHztio8sAskAnxE1W/xp+ke0eQtxPKJEquunG609acsNkCm8uoVpTZoK0be
	 Ey7W+SLxpdJJRO6yXzryJuLCKZT0z6rMy+8F/NEJdjxl4mcL44KvN9lAji1VzhH6O6
	 WInlQ6cMkrh46ep9cl+k3M8t5hr6mOqGpLfQdNfVYqhM0iITAUTLaYgS3zcDqG5l4Q
	 VfRroNd2VuuKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940CBC98303
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 03:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176862083358.21459.16645218414289287658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39005fd19a345d03d27f422c058fdbcfebeff319a2ca97aa6cffff5b4100a30e
Date: Sat, 17 Jan 2026 03:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768620833
