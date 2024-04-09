Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE1034C69
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 06:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712642896; cv=none; b=gW0wMWWClCOuG/urONzv/3+YvyU0vfyrcYYVUqzXUkxHV6G8GSzl9J6Yhx0ZaWxHuGDdvEG7Q0Na8l/zHNDZ+4OXWMPuVuicAuO0O2TCzuaKeWYpO0uxQ5JYUtr1b7NusGurDQdm7PPFihLkeXCSJHDb4xZND2fCyXPl9jo92pw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712642896; c=relaxed/simple;
	bh=oFYt3BaUP70h6tsggeJgw7oawrhjzNFrRYuzI4529T4=;
	h=To:Subject:From:Message-Id:Date; b=BxYn+5AGlChMLTXYnEei69qyfoxng614xxSDamaafve9Gtd3O+Lo0Gmo6FTXHwfJNj7vzvS9g1BrB3SxPMlTW986hc2lNn5XLpMrn+kP/sCdgvzGpixWYOROo306BWD5gYkweFLWEzqnHl5axMxbP9rXL7bibbjE7mC2glbHgao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aQEdc0y0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aQEdc0y0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D501C433C7
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 06:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712642896;
	bh=oFYt3BaUP70h6tsggeJgw7oawrhjzNFrRYuzI4529T4=;
	h=To:Subject:From:Date:From;
	b=aQEdc0y0/4RQMVC0IhrpONnrQ3o17PwabfgxdNcX78Odwmz520oKhxos+2cOX6Ehl
	 KeLbBk07y/RqP4rXXJ+JTxOTTaMYhE4tXEMqg8zujjAmBm93dhCJuiQPuO9/XpBshp
	 DpiDW1xkTS2bg7NUuLQr2vXxSRfdZhfpkmzyDgRKdEK+5IvqYh1v/r+Z6H0uMuU7mP
	 tTmqR95b3/hvlWN1tru9JC38FHgnOEEwnB8XG7CMKVT85vH3e9o/sb9ZfABg8zI9Pw
	 uVKMpVd7JfPBl6YK0oS0AUpO6F42lf3idY2Q1hUCnN5wwrduOwcfaNF/jLyyx009LO
	 Np03Pa/ZvLIPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A9C0C67861
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 06:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171264289640.29190.12427432878871647527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c78d40f15798fcd93a6424edc9e568f61ea087ba3bb3f691862b5dff07f79fc
Date: Tue, 09 Apr 2024 06:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712642896
