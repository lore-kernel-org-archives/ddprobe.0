Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58BAD2AF1A
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 21:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719438203; cv=none; b=nLBtr9YYYTUy3HTAAmehJV0QzCqdmTHP6mGQ1FcclsJw/PIEj2BEU8Vj1B8r1o91SCqMECcjc13Au9/mNfgVcxm+BqRG7iOMqY7mZP8NzOSmrnPOaUhxJz9J4tjmJ26uIjJQB9yLMlLVV1GYQTI45FNjyAFTKTll2FjZdgRbEeo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719438203; c=relaxed/simple;
	bh=AAs6ExuEgjNp9prcjqbFc0Om/uVZy0447qnXFWNDClI=;
	h=To:Subject:From:Message-Id:Date; b=baQjoyjs3gNNQfGY7ovjmPny8dVH39gYXUaypmHdcQd5WidWEG4+1zyDt838A52ryF4Thas/wC4tc1hrTWF2I32Q/ILeglSPx5BeyE5FF+QGQB1MWgHhG2FNYqpTHJ2QRJSUYS8dVCbJMvO+c1KsNqMSwHbREhs4511iMuPcZzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KS8d7rwQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KS8d7rwQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1CB5C116B1
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 21:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719438202;
	bh=AAs6ExuEgjNp9prcjqbFc0Om/uVZy0447qnXFWNDClI=;
	h=To:Subject:From:Date:From;
	b=KS8d7rwQPQeLcUb0Q/cdGaxbtlsHSnwapOzVlIY4Snzgd6QZYs0IozTdLyZOVT3H9
	 Xfvro4hIphdC+vQmPIegckL8Ny8rbiFA06FRaHROpLvUF+71esJyDHCjzcUw/0TI6R
	 /gCHi6FHhBC8V0uzJZcjeNcRr7g5xz7epkXFn575x77lMCQHt6vGqwbed94408OPyt
	 2o8zDDJ0EgCSP1o9x8X1YLS1C+zcy91Wj5a86AQlxfPqHXoa51JUDZDYYMwPLyvygA
	 xK2mN+9RHKCCyz2Oy2DqFVdXd499ukzmgYAH764hBjz3L9uIl3wMH4lQPcCZGYoqBJ
	 Mcnn4xfNdGXdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC0DFC27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 21:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171943820276.2550.2519297981674010545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6b862e91389f19322a3b2988c3dff30ea4cd074f5ccb9612e897b596450dd7b
Date: Wed, 26 Jun 2024 21:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719438202
