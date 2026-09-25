Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 652EF14ABE
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790299234; cv=none; b=pJpylBVH/AzRExbdzg9fBpizXsUIH33YEg5yOBvcMSznwxoPnttC/FfI44cJVKSec3HHP9JWiBc50IWAHpoA4lOmmPDdbhNpKtzZm3kO4zG77Yte2OzA8C6XECDzllpHd8LOFUDRvCPPgWsUQ3o+ULJyOOHvNhA1qbG+yCtwEvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790299234; c=relaxed/simple;
	bh=ApHjDVt/7Zbpmm+yio+GerVZ4oftFaSid6kxsw+jR20=;
	h=To:Subject:From:Message-Id:Date; b=NEm5YEEwq5rby3yjvLiC6ySblZ6Bi/l7ZEqEBj3oTRoTR/lbCaKY2EukueIqrQKTde5oWo/hAhMyNnwcmEJVevDBvCfMYA6qRIuMf4rABV1BwB81V30W17j8Bkxon7LMUBFZk14uRUmkDA6XpozMeZLyGUj10fCOwlPfCNjPvaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WQ7XwX0l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WQ7XwX0l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB83CC2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790299233;
	bh=ApHjDVt/7Zbpmm+yio+GerVZ4oftFaSid6kxsw+jR20=;
	h=To:Subject:From:Date:From;
	b=WQ7XwX0lxvdqqAQwiI6u9/R8XoXB6os8NCH6RzioWMX5JUfIANVLqxEP5Ja3O3xUX
	 WeSzKY21KeDTcZxKQT+9XPqH4WI2IMDdW+PrU6DpDVR7htdR+XlHdLTUyDybIA+bWL
	 +WrsK82TavZ/5z2iDNla1fbxJsqHwWM0l7N1u9MdwH5Nivvi3QAsilm6kDOZe5gxNQ
	 hNRlwbTNOFAgXz9yFTla4fZF8zgDkajeWbgj6h2PQ2gr4V6A9v3VOdUPBCgbg7OY9c
	 4WNY+7S/Y7tohwlAFoiXZOoHak2rPfJI6TkjzA2GlU/3XOhI/YkeW7sT7jQUX1MLtp
	 s+15VrDb23RoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B1CC9831E
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179029923368.5193.4118619001506876052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f81936c4e26868ac72aad38d130373e0f954028420076b5873fb972d9725859d
Date: Fri, 25 Sep 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790299233
