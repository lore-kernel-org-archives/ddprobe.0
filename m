Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C1F61B808
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750604394; cv=none; b=hBP+bRJE/rJHiLgEb7c16Hoh926lmqKsYSMYcSNChFRoL9z9Unw4RtX8TtdZZAbyiF/+pqB26fc/V9TN9sjVoq8n5FKIKzIsy5y3gU22TSLB9Q4pY96LEV59WFnRwpojAglngZEBe6MyWCEkMVK5fZ1FTKsMPHpQifSH+rcUjLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750604394; c=relaxed/simple;
	bh=wCjCwGjHSyFVu0tDWCT+Ue1aaIqQTsFCq8Bcq9J7xkE=;
	h=To:Subject:From:Message-Id:Date; b=L/XY5uTpHYJOKq5MBGpMS6eJAF/cX+QPLU81IqNGyThQw1ON7R47kI5sBJh70zhVXcswKiGpG3533LHpfh4g1lKsBsTcm9xdfYi5+5JQ0gQNzUdxnH97lyt2ZxI0CT66DWUp4fr/ug9EgQp/jCptoQtuM7JEy5Z3OWXWDFBlPDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BYNcw8e1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BYNcw8e1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB96C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750604393;
	bh=wCjCwGjHSyFVu0tDWCT+Ue1aaIqQTsFCq8Bcq9J7xkE=;
	h=To:Subject:From:Date:From;
	b=BYNcw8e1298+yI7Rq4/6xjdhINWbA/XyixH4ITz6rXNCzoZ/OinENupBCuxNqPby3
	 EFoDquogzAsT+IWzsdTWYI7S2CzyEKbD7LAWrFvj5V6p3F6Sud1ohFAAQ4MoRo9pE+
	 Jeo1XUYxvnYAEYTc3eIq/ajrC2ScVWwrDRkvw0fDdz9qZJFKOgHbrLyJ0xQR6LeQsE
	 kCcVxYn//MIuKJ+jqUFiJFoVFgfJ+u4Vs2CjGP5sSsKj0xq5b1avxXXRX5aSgU2dBA
	 NUsmxiLDK2YufwwYGj+xHCK2TgXattUIxAEUdaUvfjR8lR+bO88MbQGv/pxD5ogxBJ
	 bKF2Ake8mzaIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E53C7115D
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175060439359.16160.2352929866974102757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 402ea685051b0d0c1b856c4d80d842e9cd2b6c8d6480f58119b1d5b089a96ca9
Date: Sun, 22 Jun 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750604393
