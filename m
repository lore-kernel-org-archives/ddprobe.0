Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5411F31F9B8
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779304834; cv=none; b=X7GfWGQEsa5zh81f9UG/T1GJMpjeTD2mr/7VLjbrPj5dhDqASa9/h9F2TXFMe+KDlMsuSc1WBlMchZ9UsWUmzkawNzwGKAsB/y9xVCc2lpadUB+f1KOOadbtt+1hgyHmgoVKASPnpJa4m7GyTa8yJ0+DwiU6xjKt5wCsk1Pid2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779304834; c=relaxed/simple;
	bh=BAdvoFXH9dawOMM6R+8BRUDaCzHQJtLty3hjfclAM1o=;
	h=To:Subject:From:Message-Id:Date; b=ltj7deA+46UiFypZoNxQCRTuvhICg56031UyDhnr8UFo1eyxDXMLOeAb2BBof1EBzIbhJw9cZZHxWLmV3amR3zMHXb5BNpLKVznVUSVh20FeyuN+K2xhQihAFRL8bLZ+yWgf/jPK4SzRuZmlxzu+s80p2tG4Efr5H8LSyvNp3ck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hOQhgW2d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hOQhgW2d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE94CC2BCC4
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779304833;
	bh=BAdvoFXH9dawOMM6R+8BRUDaCzHQJtLty3hjfclAM1o=;
	h=To:Subject:From:Date:From;
	b=hOQhgW2duvoDRnqCta8qKDITvPUR8Wbx/Pbx/NCgcBpOe+LGo5f4ru0XZEomv/tgz
	 9IdJh0cbX3/VnZyO+Chtz9DKHgnG95SrpG+pifSNQsBJimV+t09hga21dDS+PHEoYm
	 Y4xX16Ife7e06+7TVrvSzFx5Y3yhtS85FIuRnFApbm84+EHNPX4YnVdFIIcZ2PeMCK
	 7rZOP5gtY7Yid8miMajEuvx3S5dVqif/Yy2CJigPY5IXiku5AOMFJh9BvjuWzMpl3T
	 cxN/o2ZM+FymJf3B052bYo+t5B6Kged+S6NlyA4cHlDxWlKEuQXCgkvX1oh14ZoNnl
	 knamhJYqGjBxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBCE3CD4F3D
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177930483375.8755.2746926982127487404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 255948ba5fde45f049d32fbddee0609d0da13a97e79fb8c94e5e91ae5c50e39d
Date: Wed, 20 May 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779304833
