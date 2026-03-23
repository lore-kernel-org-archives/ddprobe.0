Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1049B2727E2
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 20:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774298694; cv=none; b=uQBPnrOuMLTukCHl4aS2TaXBl3IXe/mQRYYYvDMfLCJxWBDqJrXBfBadRM0LKOvn8DdcsZaE5ZwTKBOHULImfhD5aI5Oaz8wQCCM6UoTvvOYDGswGHa7u7NZg+ysDml55/h6VGsTwPdAWYz7e95q3t+T0NT1G8YzbZ3FageH618=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774298694; c=relaxed/simple;
	bh=qAr2XkUrf3445OzORIOXCV1WYB0goZKrxYzkSsqJaCA=;
	h=To:Subject:From:Message-Id:Date; b=twbhMY7BXSWd5TumZ8pka88aLwU3fhjLzfiih7ovW+gLfVnulWoVxf1ackTqcLNKhsdLbFtKZ/j5FyB8n+ESD1XeZ0fuWYMQymkcTHPc3FDVBQI2b3aG04gpPN9XmYNZCfUBOqHddgFVynPLYzh2Pya8S42T4eVyC1NWheBdbAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A5aKkvV7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A5aKkvV7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF7DCC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 20:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774298693;
	bh=qAr2XkUrf3445OzORIOXCV1WYB0goZKrxYzkSsqJaCA=;
	h=To:Subject:From:Date:From;
	b=A5aKkvV7nt11ypFKjhWhYypoKuX+7MtVWqBcbeVgFlflbWtajYCbXKlU8ri7spFAR
	 PThYYgcxBzYhPBSt4c/crHdBt4LYOWy4iAsnwG5IWRibgbN+R76R+5KOiber7EvTDS
	 6vU3o8Q5IaoGLZ8Lwolx5vvZe0q68SZDqJi3EW5ebWvCAwdixQ/KCxzt9P0dk3KDcs
	 CpzXjrOmldJy6Pd6pGqziLa7aevRUCBUKYccGmcdBPC+TcYZuVD4RoHzNIjpsaG56P
	 1V2fr01JzipuetGuTplhYQHMoT90Aj4nMO6ynj7DF4xuS9EsgEsBsUgEsz4vVWWN4Y
	 lrGAbz+lJ175A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97AC4F483FF
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 20:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177429869360.22211.7432136397455547082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a206f7e7fc5365092b4d58a31d723027273de131c1cfc7c1b4c7bb77fd7b5d4c
Date: Mon, 23 Mar 2026 20:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774298693
