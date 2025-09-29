Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 359AF286D63
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759138194; cv=none; b=uG4mH4Agf/in4PJ6z9HNrjfS/TErtIA8+UvfNabLZKIBo5lg0DR6b1dXJnhimTZVHcdaSLKcJkUC2V2siUteS7/yuKJDB9sVB40zvBzVseSiwIZy887+J1ojOu55/cjh30Ly41/FYqmAwzWj+FbO8REyI6L++71mFzgUwSNmpxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759138194; c=relaxed/simple;
	bh=dbP9VRnisCt4bVzRjEARe57FcjO3Xbv1uhUhnTtMH3w=;
	h=To:Subject:From:Message-Id:Date; b=ffrjU97UFEJ58ddhFdNHRQ6qSFrmCnD7VveRxw8oETRVQ9miN9w0k+m5Eom03hXllZBdDnsKvpFJEkU1SQmVkLM3RWVdtLcitsGrK5H9L/jdvJexrPkBiJyTGls1CkEcj7cWYGFmvdvSDRuas0fMobkFYXjfnOiCGJkIaBM+AuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t2Fa6jkM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t2Fa6jkM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B46B2C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759138193;
	bh=dbP9VRnisCt4bVzRjEARe57FcjO3Xbv1uhUhnTtMH3w=;
	h=To:Subject:From:Date:From;
	b=t2Fa6jkMbKb5XhOaWQf3nHEjbeMLhoDiFHtcMbpgkVmdfx4y6dWdnj3u+zN3LWZIW
	 h4iUI3eNaiKWiOvmp7znra8u/bI5C+zl5L83hgVVEWrZStjZ06jM1IZRczdcRbYrK8
	 RH8670sYiGINz4yeZy3RF20x5D+PEZQ0WVe0iDpSYZ+AT87zkE6aAkXK+jb+vlEjwJ
	 AQMb1zunrjP7dt0K0KPXwd/AG2lzDAwh8njhnOzMLyOxUpISfQ9Gz3E+mE2fZlE12o
	 bTGia1hQqQPW0qOaIe5tGfIDG71xl/xlepIlkSiaLz61mk2WJ7jg+yFex52r+SYCSw
	 MnO47o6+qFCyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E5BCCAC5B5
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175913819360.11857.12011205029430973257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b24d922049d8a4a6d52ff5503e474d64a32abed65910f60c1460ab5c744f3e14
Date: Mon, 29 Sep 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759138193
