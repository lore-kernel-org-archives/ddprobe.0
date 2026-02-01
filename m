Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 254BC279DC8
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 17:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769967834; cv=none; b=trMbo2ccktMn4zMJgIhPauzsb1Ry4nzrvbH6tHU4FysNdIAE4/gbKbK/WvDeEVRiQr960s2SexeoWg/dWsQxvrrMC+mAgQakg3rf95E/C8tdFSCICWY0k0piRnNJHvVTKODb+ceceQcL/7AJRuISGLXGQK3jCecOyOnCWQjEwac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769967834; c=relaxed/simple;
	bh=MMN64yoDHSt5CwoXC5fU+XUg4boMzAK2UhTQBUAdcKQ=;
	h=To:Subject:From:Message-Id:Date; b=NqbfCsjJZDvFh5lwkhdP+NNDZ51Qhkd1LwU5igDMQho6W7s4hq1iZX/Jeik5dgOjd9+M+5I08t/jOC8895ZMgqgKBxPyRU88tBVRNS8TCNc5SXTdLNh0xwWY0OXode+efO39NSG9Od0DryeC6UZH4QcfdHKXLSOmf9wpwIHD6Cg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bcLuDo9W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bcLuDo9W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE398C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 17:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769967833;
	bh=MMN64yoDHSt5CwoXC5fU+XUg4boMzAK2UhTQBUAdcKQ=;
	h=To:Subject:From:Date:From;
	b=bcLuDo9Wilg3ZaquBqnOLe4PsfP1+KO+fKm+pXXHtf2nKTInelYxnEABnsn/ZI3Aj
	 Ien8Wu/AP005TkmVw/Elzz4J1W9ru0hSOTnd00+iZZtuCweziyjJUnV7bDVlFhK1xp
	 EhvqM6WXlKDTl090uNI2xwld0mxD0NSOTwEUj3xyOXT430awLrH4MtWd+7WaCODJJ6
	 Ujppnoz/waIpFb5MYNh4/VOtijBPuO7uwypcB5IJ4esWG8eDYq6LsHf6Xg2JuwabzQ
	 wh0dypP6CpWhvbzMMZLj1ffpGU1wsGGBdVyUsvTS9aI3mTZiAHUqIskXL9uMAS2FzD
	 YUGrvNuBTMvSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ABABE65298
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 17:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176996783360.7004.15297145112790917346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52994fb101d8369122ebcf0858ca75de6c3145012e12c52b1fc688db48715c1d
Date: Sun, 01 Feb 2026 17:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769967833
