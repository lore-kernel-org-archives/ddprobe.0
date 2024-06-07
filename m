Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6964479DC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 00:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717718843; cv=none; b=lJXQszjeLSzwH9HVPmXMEnhdDX1Oy+pMQ1LBbrVGJAmDbrD2iToU2E8JlqsK9BGZzexuBrUeuKpvsrGgmx7Y1xs1nI33ON3fR33zMtHrkZaqp/OET+ELdprOxArOHy89TP1sWlURfhws+e5AvmxfK3eQ7Wf9i0zr9kgj9zYFs6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717718843; c=relaxed/simple;
	bh=Ac/phLe+/HhPnPXdiDich0Lrq1Id419BXJTpwdObiDw=;
	h=To:Subject:From:Message-Id:Date; b=OQ0rR2T6jZkmjIS5HMiZxK67i4T5J7I6r29bGMSPfkE1HDxhKB6SQzIb/JUbR7OtFgiDvy5+8EgwgsjJ0PpU1ujfrY7leN+BHpEj9OZxAgmoUHken/ajc0msMQGQCtzvKj6o74bE3i5Q82+35PqcCjRcNDQbjaqZZdLgHhghdww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GizaXU/U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GizaXU/U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB3E6C2BD10
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 00:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717718842;
	bh=Ac/phLe+/HhPnPXdiDich0Lrq1Id419BXJTpwdObiDw=;
	h=To:Subject:From:Date:From;
	b=GizaXU/U4B0UGWaZKzmVA7bqv021m//SxssNzlCHNQQmE6CoX6HLf1pswRQIv+vzu
	 5bSKcN/9E1d9j/OF6dfb16JR85k7IBpPYoVhtYsDsOxBHLQmJ4qy+qVLpFGgAwaygM
	 0jJCkiH9Tbxl+KDmda11Oqz4QNBJUU0QKhG+UfBCepcgnwjLz9tSh76kyQXx30AioI
	 pLC82I9k2H7FRS/Vgg9ZBLSRg/MW+QxaYNiWqRvBTIBubuqR0Em2nVTBc/JZ2s07mI
	 S+XAkYu2qldhAAAFMXzMMGVgMt3jfXAhPAVzNBkxYVsniOv3dIz0Y00wsNoH2F4RxI
	 Z3s9pk35k7AQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C64B9C27C52
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 00:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171771884280.14373.11365203391841932272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bf63daae784e3d0a95d49c6aeae7c2df6ef13b81851d6d276dca9dc84419953
Date: Fri, 07 Jun 2024 00:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717718842
