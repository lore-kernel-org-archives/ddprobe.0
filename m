Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295932BAF4
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752464994; cv=none; b=kAd7hKru9bz0UqOjjRTuoVDKjx1/mLfB6iqlMOkLFugXAP/fEc6R7cO1qmIpQs5fixv4Wtxm5G+SYvLo9C0p+Rok1D1b18xY6xQVl0MHSUv/hPofC6cj5ykMelf34s6sQpUrbE5ECDucnOUOpfUevfyJblHfnkwFFplwwIqFIPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752464994; c=relaxed/simple;
	bh=CwPDp61Efk3trd/PBPbYbmxhdslxR8PuYEc90jvUE20=;
	h=To:Subject:From:Message-Id:Date; b=nRPB9FtFNEAVGt3WS0MZKrli1ssLsrny7rsX8la3z4gclNInrKUTzKSJ4Gy+WPSNzkob+gUH7Z1MIhDD2JMezoPwhJP6FPhgSj17O/cLhME6iP2wdAS9IwtuEbRpKqbWLyQ+WyD0R7xXUnqGWuaEDwu+qpW9Eg2YvMvD+iPYJ4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qlGwhPa8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qlGwhPa8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F7D9C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752464993;
	bh=CwPDp61Efk3trd/PBPbYbmxhdslxR8PuYEc90jvUE20=;
	h=To:Subject:From:Date:From;
	b=qlGwhPa8j1G9Hy0tRqUyYxPFFM8ojECbMUfMud+8c4m2+H8kcCJjTNXTtAmthRSN/
	 mwhooXQReQrEdibLjkWXB8Ra+tiQ1StNE4UvUKKnrkMlEExQ1qO7AGd1KU0MTUhMvY
	 i2vLpqdmh1A5ln2k9IkAovQ9xTCF4gAU9Y0+oc1XUUjSYDP5fzQG2wBMVYvToqY/aC
	 eX/I07nmbqjnO3UsW1fViZhe2Zm6X25RTHODYl+DYUG2zZAc03QHAkhqF28UlTlIY5
	 8KIFXHstfpwFun7P/wvm+oRoIYhiBbUhdPtQPnTUGx4OvbtGprMLHtGHWkAU6QftqP
	 9j9xN7BiMiaXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E37FC83F17
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175246499357.5473.14071470739866513465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bbe92401b4c471a1e8e4b3d497637b36416e541741eacaf0cbd37abdef06459
Date: Mon, 14 Jul 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752464993
