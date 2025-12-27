Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EE4113790B
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 23:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766878434; cv=none; b=LUujzXHCmSgvBl6SdfsuFoqT9wOVgN/eq6+DsmYptdAlCvmMCqING3sjllyKTVRc+DJolrT0/wBMziJW5OHtdKqP5hDmiAwi1NwUq6yn76yFTMnXQqvLMatXGkHbiIlA6CBhcLNswOd4suwl5cY6Co2ZLNK05sboatpc5C+qyg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766878434; c=relaxed/simple;
	bh=R/YU99kpJyILyDqneaVLfbiJUOUUHsgZnTNINI11NHo=;
	h=To:Subject:From:Message-Id:Date; b=T0CFOB6Dj2nFqx/h8voolUmorwf/uSqFcZsbk/iSGsK9FtRmY8X1Yb0oRePwyjZnp+/9RPbxMM8eUc9HTzxDTAtLAbG/8+aoDxdFfj0nGkJvr6Uk6xtQxNFO2RCqT11euIaYbNeqi0VHCCTrnbtWmS/Sn+dZY88KjZKumncC3JQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b6K8UqZJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b6K8UqZJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A844AC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 23:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766878433;
	bh=R/YU99kpJyILyDqneaVLfbiJUOUUHsgZnTNINI11NHo=;
	h=To:Subject:From:Date:From;
	b=b6K8UqZJGUrCpifdGD8iHSA0VxNRL+GG3cQOGULWErMzwyrAHO2w58/yIKC7WD9rx
	 JuMOZa4yVDype16oP8ynIOT6oQgSWVOpkSXvF5eiEWGe/iQM2kw0SGBg7XPIfP8ygy
	 pPFYGOLAV1L1MAQjmnvIg92qt2gsEspaKXg/LGs5T7GB4BhrsBI3anSKgtPL9izlCD
	 lUNoz1JdYyF56DC5EkRHElJqoFpAuTUsWIkBi+Kzduoc9VXu/KecJ8lBfJEgL/3ZL0
	 2QxpJQru0/wNujAeJyeyrupvcxILLGtCFIDK1zewhSqbaRoKLbq/hly6QV5eYAnIw1
	 W6yCh5yW7QPhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94090E9270E
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 23:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176687843358.15578.7954807766761511977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 244a282a0be9f4296ef1e1fae6708f2b39953b04c9433e29884120431a6b45b6
Date: Sat, 27 Dec 2025 23:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766878433
