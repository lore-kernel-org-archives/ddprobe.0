Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6F4D2E0901
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 17:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767720833; cv=none; b=prsFbGQH18M/MSMBOLE7/56NNp1Vt9msAz3P3MFSJCHQMPVS+UEwE3rLSS3cUESUhE3XWN36kKoi3DZkNh3aEqF9NVhl1LospaNvhRh718v4H6vA+xzk7uzFhiPa90HWHvb+FzPI51TjELCUMzEnbCUH4QMPWlRXCZ0n7Y7xZxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767720833; c=relaxed/simple;
	bh=JYgwKfinp+JkV18lGqEU3kqGRMjEf0mTNixz8xpvRMg=;
	h=To:Subject:From:Message-Id:Date; b=ElZJkSOwAH6x+WpvT8kV0/LzmRedTItFqq7n9RGYIjj1kAd0V7rbKh+3aT2pAlKSl+vUKo4iJYkgsUg1mM6L9WDIWRq8RvgUPUVXWW1JbpOxkEOyADzm3EMQj4/JPKN48SoyxxJQkg6JTd9NnQ0w/AXuO/NavsoKZF6OyWvA8y0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fK8w0Cbi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fK8w0Cbi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3AF0C16AAE
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 17:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767720833;
	bh=JYgwKfinp+JkV18lGqEU3kqGRMjEf0mTNixz8xpvRMg=;
	h=To:Subject:From:Date:From;
	b=fK8w0CbimpwzT/JXFzpIYPgPy0Sbs3BABuZ9Jz89wKW0YXqDVNfvrowKotSCrjpqG
	 lOkaXmrRAwWZJEav0tX3DJjqZbKvjCg2ZcQHQS1oZ6bvG1oS8eZO2b/p/3NZhNGA4o
	 tn9QG46RUldwegOip/c4YNfo7GJKpCLDHv+S8A0+OjOChOwU9wugzE0Vj4NSv06N2a
	 2qDTen+9fdR+mqyFVJ91ZBkRyrAYykeEwcbT/FmwS56N8XjsynLGK7U7bEXeoHxnKI
	 U2vATiZJjpVEREa9okDx8T1WX3y9yeb+Of+odLUyb7MJ4M1I3DExrbHkRYeszdDZ7v
	 5thX1LiEWgmuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956D0CEFCE4
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 17:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176772083358.6856.12112221591331667654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1be459e98d0f33efe26b3329763e821dd0fd0f4ed10545e9a4f060a4e28020fb
Date: Tue, 06 Jan 2026 17:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767720833
