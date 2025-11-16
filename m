Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36AC57494
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 05:30:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763271054; cv=none; b=gR8f3SYedEV6vCPG6QAJOwuye76AN9TKAmXZi2NFoBh/Vq7e55nAKQc8wLW/Pg/OISr9Q1/mGzTD/dXud2TxtGK1rHZIldMDJEivJagg+ba1/lSC2TCvwBIBb0XsPxuUgu1Y4dKDZvNWRPK0LQoY9U0H+uZkU/x84PZfAXV4gaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763271054; c=relaxed/simple;
	bh=5eejTtRZ1UsYzY2isDTmx6qO+jKgY81878w6lM4HdRs=;
	h=To:Subject:From:Message-Id:Date; b=KszM+ZSdKSbt2I69ax5dHi0mnlxmX7kw6a9pfkbq8alaCXCJxMwXgBpW8zfd9XsQcPgfu0MSfD4aTSlT88luHmY6Wa1W0dTwch6iiV25K62imQEC3YPxD2L2qaXrPnsxbFMcnOXQufd+lt0RVT7b/197rOJWzCzT/nQ9Q7uBm9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k4qRi5BG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k4qRi5BG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4AC5C116D0
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 05:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763271053;
	bh=5eejTtRZ1UsYzY2isDTmx6qO+jKgY81878w6lM4HdRs=;
	h=To:Subject:From:Date:From;
	b=k4qRi5BGE5P2DITYhpv6/wdYs710Bs8EpvRfz4ytv1rYtF4oZeLn8qyRILZprpDe4
	 Fim1RjYRyEgKRycwdvRPfleMn0WG6P94bMM0ySe4ewKpM2v3D0BbBuNyQF9A6ijT3K
	 ykvsNwXIWaB3EfkEhZbfeKqtPZx5juTC8VkHWU8Z7rXYacG+FVf4NBo9sXe2kEzA/n
	 3ATOMej/3OILHJkhhKLeFpNAP6tZIYN+o+TViFWyQC/pJh0bCaZ+GxdUFPzEuqoyx9
	 osBUf3bOr0h1kafYq5HsQRL6lq3Rz++OaS7EpuGNrAEbnMS0HkYfCSw7DdyJFRPudU
	 ZoGyoZnbsY12w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98787CD4F3E
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 05:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176327105358.2924.11043913114149219299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03ea26e52b5ed09b986c56aec3f73c3134e80943f14d90a5dcaa7fe02b7cc054
Date: Sun, 16 Nov 2025 05:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763271053
