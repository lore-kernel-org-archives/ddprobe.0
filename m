Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A83714B950
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731243954; cv=none; b=mdgx/yHFj+u0KZyDSyWY9dJUYLayxGbIpnojsQpN5eRmIk3ofCKHsz83SSCQQXg8we9hdSObB0TI8zMQSnbKd2AC2pTPb1qy+VjD5glM+M0cX1CcEK96Ruw1f9pLzGMQXEX6VN/1LCcHHO5cT45wzEgcy3xyzkdp9viwd8XuVXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731243954; c=relaxed/simple;
	bh=oNd6FG61KT5qEDuepwIJqdAfFS/KLnYWZ3fQn2lnDR0=;
	h=To:Subject:From:Message-Id:Date; b=ao3hBwWnpknvteXMVrdY1liXxvTCflUDYrlwio2qZVcPfvJq7eT1yIDbC2HX187bhwyRxJPz5TqLGqp/vlrDAIQGhCdSkn8lrMeSBU0tvDpEEyT10eGzICN/UM9bhxhKuU2dzdfJ1eTHz2U55PdZVl3O5PAk6MJ1daGv+zQkvgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DaWSGn4c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DaWSGn4c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6A55C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731243953;
	bh=oNd6FG61KT5qEDuepwIJqdAfFS/KLnYWZ3fQn2lnDR0=;
	h=To:Subject:From:Date:From;
	b=DaWSGn4cdauCGEDV1UcAiWXMqYZwypGs8Wl68hmiT/KbRjHEtH/1z1DAgC+4LJOpE
	 lkXtAFfW1WaJLWIy6ljBJjDy3ccqHNvxpqo4CLjTMOLUS6NvF/SMmgbxDo02SFT9I5
	 PJP22u/Vz8eEpjWzDDgCtwybpYMY7wA5wPV8yjSPqxE3VQKPOE/ZoxxkdPSls5w4iR
	 itUD8eWFRmNHJWJBoLuaQH3hO2CAiIRSG/esCuU0qJtWnLf3xwai491aiaabO0x5r+
	 HXmejKoqWAjeT6ez8644RgOHPcwXbLRenlTtVjDwEuFWUK/pvCu6xn43HgHeS3aGW7
	 opL9SM2ihZQ4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0180D5E123
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173124395362.11415.2197926610477753587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77125099ca7c907d0df5eafa73834c55226d479cc62ed85afabdd97536b5fc1e
Date: Sun, 10 Nov 2024 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731243953
