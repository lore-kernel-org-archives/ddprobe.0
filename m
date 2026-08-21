Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F72D3859C2
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787341234; cv=none; b=pLqYO+HL+z1poMqkFMgSdSfJH1o6q0kRHsKspWKJn272TupGvGOBpoTJRZkDnTCTPf/v5QJYEm51gogpjk0mCZIr+041c1DJpB9hRWXjwQtFgS+I7UNSkTrtwKbBKJBGQGMU+Emk820Sf12Q+/KRY0sPqjo+Gynwx1Qk7BjXHUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787341234; c=relaxed/simple;
	bh=xZ4jfehT2tg9XJ1BQ4YwpnhkytJHci6sZml+mRgmSiA=;
	h=To:Subject:From:Message-Id:Date; b=ZOs+oZGg6IhzaSnYb/54/j2WWpMbN4+K/D+PhRbpqQ7E5j0QC2ckL1l0JRj09hn4HZYuvGUtDdK/WsChyMVWcsE55FFaXXJKNgP3eu8jfVOu3jriboZ/5anGZzGmMIWlY/oqWKLO6uoODLfLy6IhWfmwY+9EjoefDqkMbk2b0+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z1UBnHwH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z1UBnHwH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5322C19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787341233;
	bh=xZ4jfehT2tg9XJ1BQ4YwpnhkytJHci6sZml+mRgmSiA=;
	h=To:Subject:From:Date:From;
	b=Z1UBnHwHYBwiSQL/M1OJ460+4oqnGg9iP7uR1AZF9QejkC3fNuc3VeD1lBkDIsxKM
	 I2CmzWIl6OJ+G92EIdRUhAxOpytYZCKOWrr/8UYTjYbIvQ/a0NAPdO/X0wbwIECtk4
	 MnXKfx3HaGpGsfsI3MqIjUiwLD+1uT/TgW1f8hvHPcZYEBvUaAbRPOkfE+EDt9DeqN
	 zL+o9RwjMAn6MaZwMY343zN0Pat29AI1T+aZMHU8lr5VkuWt+helSpeS8VryRMjl2Q
	 3G9pC+E3dxSYMRZtrz9ZiPlpVhDXgQQKPD7WuiACO8PKYx0nLR2dwRVvOv+3MIZs0b
	 PtPL5GYsY9TlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1066C5DF7D
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178734123368.14442.1961037713944708949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccfc1ae52dfc5e63a858e3a23de3a2a120361c7f89fc481cdda004b2d3f4f73a
Date: Fri, 21 Aug 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787341233
