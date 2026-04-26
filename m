Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A22040DFCF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 20:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777236454; cv=none; b=V3wpRKeD5SS7CxD0yUl1NjcuFg529/32IlyYs8NWCnQ7oeQWVeDHYY6arirPhme9UNM2+wzTCVIWzWAFzlf4UFiKhwrS/A3tu0+a+DWP8gOWUOra/V+2A/cpkb7vgcvWm/ANWAdxdFeVM3ywu5ElhIq8WdZqMWVnp5TrWFS6NkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777236454; c=relaxed/simple;
	bh=xewz6C65vFSPUsSkmDxTjr046PgD7LK36S5f+2JbUQQ=;
	h=To:Subject:From:Message-Id:Date; b=j84K76An9kvDjNIEMXnvRTzUchE0+vUDuo6Nk/I2hAVaZTjMZ7ZNHcZm/JqwfxpL5289mPfUm/3JqZ1EG9c8h1Up7aX/zeL6sIICphTt9jUZsIqSjWdvD9o3uuQ/0nJitwNgjTm3ey3CpVUBvwzaKIcA0EkkXt+829vtMo0MjrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ILf0aGcA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ILf0aGcA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF84FC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 20:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777236453;
	bh=xewz6C65vFSPUsSkmDxTjr046PgD7LK36S5f+2JbUQQ=;
	h=To:Subject:From:Date:From;
	b=ILf0aGcAfefcPSyJg198Io6/UsD72c15WbxWbqRv9WLChEB+YbaiQCQe1nTK94byV
	 2+6yrlgbS0xLDNoihqzrBHbHz03yXrDMRAa8mxTfHNotcMNbZkOuhfNm4IhuTDuNUX
	 eWcRL+uZWA4JoOfKdQiBW5UHnROqAd77wSZY2lheJwjmcTj7F7mXkOyWyUT7D8V70r
	 SOHPr+Eahpy0dpZlG9+O8ssg3gjKRahItKp1q6jMZ7ONVJDOl2F2OkJOB0fjsKfVqw
	 Vv6sI3b9ZjLz0J+UT4GKWxMvyATSjaaiedvWj5gMGes6I3f+orfuoYoqtaVpRQN1dI
	 7vaJ977iVS/xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABCA6FF8850
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 20:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177723645368.6797.4197032381400175386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ff44ff438c364a59f0c6497cc013969c89835ec536b08fd8b817748c60ccdf4
Date: Sun, 26 Apr 2026 20:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777236453
