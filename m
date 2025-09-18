Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16CB025A651
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758216594; cv=none; b=CVsXX3NK4VYU8ypFtvQHkbBu0JEFJwXYO5CQk58US+0ZybWiopkip1sd51JiX+tAvU0zo/buFyYrZrJv1yDcruV7cYX8YGUz0TgoME4hmmmve54pKxeY6eoMdQBdgEuzRc7eVCQhDvXA1hxlZRT2aE4FtHH0JucLlITXCiDIy94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758216594; c=relaxed/simple;
	bh=f7Sv3ZJs6nBGi3rsXWDUOT9uvE55fH1g/HkuzPayIB8=;
	h=To:Subject:From:Message-Id:Date; b=oo99he7l8XmhptbtL0Jpa+aQrDAke43uodkzbxeXTFKSuKw7sA2nT3mtGV/bP3UzGYZikZtT/xEKjBFMI5xEyprasxHZx9KrxeP04G5o/ysHtdSX2FgPFwxseVnPKz4I2R475FB1Gb5RSqTZYMdNuClnLXnOYozj1sfO6kugWu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=opmOnWpK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="opmOnWpK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A06C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758216593;
	bh=f7Sv3ZJs6nBGi3rsXWDUOT9uvE55fH1g/HkuzPayIB8=;
	h=To:Subject:From:Date:From;
	b=opmOnWpK8E4zBg3UIMRXpNbQbxMDyMaW+P3wXn8BnuQIcfBiZWZzByyJqzXYLQlGC
	 JV0lWm3L934oHZYIgCPoKzjGH44RAstOG76sTT1x5hsa9ZYW6A+TfoK/c8olVwjJWF
	 YvH9TdHbhl9L4S7Fjv4zHUXlXzIIyGIV1HepTOIby5jq5BRyAef/7FuDitvIbadnoV
	 zH7wNv7wwLkzgLOjgN5scitIY8Hg6tNJueXFKBDVepDSA2mHNx4RIEG6dQlRjbuRFV
	 ImQrgWAe1WTEHKHyD7GBhZUsYEKpPkxjl/K55hny9hljuCkNbrt9RWDApW469uc4Ng
	 w+LY1LVShDTzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DB9CAC59A
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175821659359.30625.3782420225449411166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b9f7d872264b30cf5f6e08e49dfc486ede71c5275f9877f9f43dabfe8e3eae2
Date: Thu, 18 Sep 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758216593
