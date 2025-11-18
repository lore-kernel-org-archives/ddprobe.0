Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51E46157480
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 02:31:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763433114; cv=none; b=fn5SapTJPYG5YR32UExXgSh6b0dyHYKAE0qyTLOdEkJ8AL5HuKOzAjZdelKwBafnQ9A1WHf6xorrV9l94HikoE+jW5JozUnjO4Wo2Sl0V0tDiE4SJ3Z87bpdkWYogf1S9GyTvCy2/YfOz3wdY+yGd3m5GP9qwHVm3h1SRy8xhWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763433114; c=relaxed/simple;
	bh=OhILU3qDmvJJqE42D5iaZGIsBaHLgxxOVb2nkCEnIeA=;
	h=To:Subject:From:Message-Id:Date; b=MjuMq9SKBVeLYA0eyDAOzPGWjzZUjvFoahSgq+CBmVeadzn4ZvyunE+FsDOSaF8BY32drQ3nTbiqtoYo+CNvxT+kUEQzzaSVgEkDV7EkxW16tw/mJ4tLQZm0oZEy3jqwPgUothkzYQaZBHYrRzJHuHgtwH20bT1Da0qunDGF0L8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cKDcVoxU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cKDcVoxU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7579C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 02:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763433113;
	bh=OhILU3qDmvJJqE42D5iaZGIsBaHLgxxOVb2nkCEnIeA=;
	h=To:Subject:From:Date:From;
	b=cKDcVoxUUEl2/7WnZPyfbbwW/JMYZGqWJekLKCjysnGgxUA90kTtEA4vCPp6X96J2
	 udJMeUUhJhzYzuP4KeFdEBFqRT7iedkS+sNUmh+FtdjgMpWBi+2SVKkSt2d7viRj8l
	 fMROTS+0/Ws6OjwFuYtHCXexOaMny5q4PN+6sTR7kuDdJKoo2C/HOhGq7gVhzm/kTi
	 bUBJ5dY+YmONV3JTnh5EGEV1vBaW5LmdpObnWqqnMTs9KAjvwRP3YBUUSyfyHHa019
	 Z1g9mOYXMjdm8gcALVjtHlfmHThAKGcexPLpFDgzE9wRjciG9OCNV+Sa6/OrUSb12o
	 LRq/Grr/s3AOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ABFCCEBF9C
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 02:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176343311362.27448.251931479426212872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13fb74b2578d772d711125267629b424cba707b051e75a8fb7a06aa89b37ee72
Date: Tue, 18 Nov 2025 02:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763433113
