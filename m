Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 124D2482F2
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757196594; cv=none; b=Me0r+0q8VSPOxDCUhfG38GCjdleae56fhEbKNCDTycaj+xQoyoLnRiDKD3fbpnJ3CR8W44Q+axFzNZfihy+d//BE1ZL4fCrqkZMigh/lHbR0j74BlVQULQlU6NW9Z11xwwEcWQMxDRZVAQ/EXDEY6EHYZhGJoYAuUo7kvT+e+X0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757196594; c=relaxed/simple;
	bh=o5vFuhv5PUIccff6W1UAJOG6KuhYKCxsybFwpq0G07M=;
	h=To:Subject:From:Message-Id:Date; b=gndsW14srR2p0kxIY4Auksm0snYOR/WGiOaEdETdHy3FrLEz+uk91cMCV6p+lVOcI58pNYQLE+gFcUOmHIXxvdFAKZmw15xfV7fugBudt/V47NLT4rY8B5N5+EUAvmcWrMVNKcyMU93wIs3gY0nY2hDhUi7Pn4cYHXf8PLDZUl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U8ltTVKg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U8ltTVKg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDABC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757196593;
	bh=o5vFuhv5PUIccff6W1UAJOG6KuhYKCxsybFwpq0G07M=;
	h=To:Subject:From:Date:From;
	b=U8ltTVKgy2NIGqWTtBxsxXzW2snwRvxd15TpNAppKYHJytBdjYQdTqQZyaF1g9oS1
	 yFRVtMncDg7VxG9C8Wb3P9Y6/efrDpA/iWeGdgAkVB2Rg5k19PEbGdbcWTBkPdtYPr
	 NgTtGskvpsyUy1ffHTC8Ij54hpEJ+Py4VInGMEqFjkLvumKG5fIAVHws0llYvLZrrN
	 gHdw6vWrlLCsnmeedEmyk1tuejYuYQrR+3BdaUJTK1/H1fd2oxBWla1uGky0Y0yX65
	 0iEoSUdu5utQndv3nc+/sGpVx8DxfU0ryGe/K+MGcC35iH4cR/Y1WnWToI4q4r0fHa
	 miF7L4+ZnBHUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAE1CA1002
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175719659357.31239.5763705449801676696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29727cef2fd84edaa3189ae506a2ef530f4c4004ad929266edb213e89ef29027
Date: Sat, 06 Sep 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757196593
