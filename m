Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E08FC3AC00
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 23:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772580893; cv=none; b=WrDVQ9EHqAhpvTMY1mL0ZRzeUkHuVGf4npO7jRWvb0AtIj2t4trztjb6BqhkmFM0UtLwKpAyDyWZUaKlUPGp1VPbZtzYwuxtQ/wEyNKRdJil0Ksmq04VwPYh8UbGJ1JwUdjtW+Be1mWXpZWNL8B68dVByimVpIimYqVJbJNmCs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772580893; c=relaxed/simple;
	bh=PnATu+8q5izf7AC1UOJbIb8s0WwFRIVbVzIXuEXLvxc=;
	h=To:Subject:From:Message-Id:Date; b=kx0nTMlQtE3HiJ9RuA+fTrUYai/iTci8rVW/2GBALuKrNKd7hYBK3lQHLRw4SwGi9V46EatzOhW4gwiVnDG2oUbXTn1YdDIKkR6BQh2AftvfmTRf65wARTvfaDMK6Zbz52fKSY7u6vXbwksYkpZb0fh9fWzuHIVhYX3kIw744dc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HfvMCGcr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HfvMCGcr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8E25C116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 23:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772580893;
	bh=PnATu+8q5izf7AC1UOJbIb8s0WwFRIVbVzIXuEXLvxc=;
	h=To:Subject:From:Date:From;
	b=HfvMCGcrdBBLDKORW/YMWYZb6wuRBrZzlm+FTkUGuu0pN7hYK8xm6dr4TcD8d2QkS
	 MdWX3+CA5XmKwsdfCdZhzNtsGp29+KX8PEWjx97SE9Kcn/O/KO97VVo6PQRTcNKv13
	 x5Fu3TGmp7xnUQ7Fu2SSQgoUqjBD4aTOh2n4PjPFgdYfl/RHeKAcflL71bEsY8ld6n
	 ZwHxFUN4jaMpoS08J7JwBOQGdtC9Or7gudM0OOFuDKGYwoFcCPtHlh2/NPGJ0LVZhj
	 qYZ6Ajq6/7V1+i6ykjIhqT7taDMnvRuHPrBdCqFW6hMJ/Wv8SGUVtwmPvpEUM3ME/l
	 ZqFfSlBGJqDwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3D29EDEBF5
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 23:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177258089358.17126.16798882567631089263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a228ef7ef15cdc87f91e553dc0d5f9417705f59f9739b5026d12821de574fae4
Date: Tue, 03 Mar 2026 23:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772580893
