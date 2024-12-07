Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3521A322E
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733539554; cv=none; b=deuGFMpHZisxMNTy8E5WNynjMXkfmxbLwjc6Y7wt346ZAvPcAoO9U54q+/5mzPyPwj63QkXZ6CH0dg1XZIy87JZSEmerGgC5LFBi7tCCxQN0ya2HtMIl9f/ogEfXg6fwvyswDQcF1g71f0wHc/MiyQIHvPapcTHzSbL01tc7yx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733539554; c=relaxed/simple;
	bh=dja4TcaxNS28tvs0rzHbk/74mUGWUVEHU988oU+sBtE=;
	h=To:Subject:From:Message-Id:Date; b=khattdrvjn8g1qL4dFUDrs74uVcxYyUlm57/JKWKy/bMi+Sgbbsy7DCJ7ESQuSbH7EWufPCQC9BalRU4aG5RzEtKAmxvxW9s3M46UnJR2OxQwemUCfYg5jenPZ1tsF9vhAMUD80O/VIpSelSuII4ZrBUonYBhv77g4ruhlf2B8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p8HawShp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p8HawShp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3609C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733539553;
	bh=dja4TcaxNS28tvs0rzHbk/74mUGWUVEHU988oU+sBtE=;
	h=To:Subject:From:Date:From;
	b=p8HawShpJPiAvf2I1NUap7CnyueWG4q3EnOj8cUl+MQp2ZH5ukiEzIwpAhnY8drii
	 PYrOqopFOP6tX8tQq9pnTrqNYZ3oWdadxisid6529KOTXy4MFyR6+m4Xe+Lmavm3kE
	 IWWeRpN6fVeZ6E958bmCnTVPjLSTJgyyZ60VOw5Fvf1aH6COzLRsHsVRDlUeHNMYs1
	 T1FYTV4DCPy9FvXeKoS+N8Pv0iowvNrHa8Ude8JmM7woyTN9HLUuCAz1ujOcq7nGlQ
	 Vkngn4s8tJWDRyp+QoMMbwwB+0ztO36swR/5zrVsnpjE5yOSsvY853LnF2XXK0inxa
	 j0BXAWEkSTl2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A1CDE77173
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173353955360.28881.8596201091014266874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74ff96a27e7c23aa96dd37ed248c372e9022cdd6abf618a70437870d0da56948
Date: Sat, 07 Dec 2024 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733539553
