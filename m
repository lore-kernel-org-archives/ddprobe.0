Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3664E40DFD8
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 00:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776730654; cv=none; b=nG7bdIWJkRNCZ00kMndY6Gpjh3XsGOewmRliZRy5MWD6zHa+LK63ppT2t5KMRaVmXiibDk/M0vuXOqEPeqh4jpObVDa/RXTs3MuFObW+x+HWm4xNr5zs0f5qCwo+chGAF6LvB/Q8Sw3lqmbC41hksG8IcedLACENikjCTy9OTts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776730654; c=relaxed/simple;
	bh=AtYSC/jPCc2W9FunTNy1ZJs/rOQKZJmc+hGEA9CiPU4=;
	h=To:Subject:From:Message-Id:Date; b=UKMxwKIqrxAUboSjo0+l4AsyA8r1GY2yZduOpLrhHx0lS6cj7BfBT14V8FL24shr24L/PdkuNTqHffe+yJRjs+BA445cr1Fr3OOvg9acNMPyqHhgP3ZG9rn2lGkwwPkAXRGgzMgB3I+FON1lNmFnqcA+RW2MGQD/rz5oKCTks4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cqPKErNQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cqPKErNQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9896C19425
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 00:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776730653;
	bh=AtYSC/jPCc2W9FunTNy1ZJs/rOQKZJmc+hGEA9CiPU4=;
	h=To:Subject:From:Date:From;
	b=cqPKErNQmwRfj291JcwPdhtR+4495J3662ydBvCXtjzPBBGpSz1FtfIxSdU/AVJGk
	 bLER9ecbweOk0czcXB3hhCkRY692TvDIASGahf5yFfwuZvSWvpon57pLEFggMdQypK
	 dOnzdaqer5ww8t7f+nHzX2RpZAWiqnGiPHq39ee+EtNmwPUSAQ/gssXCWB3hsTooqY
	 FDnElEsjB+V5ji6m9Fn9LApSGTXS2KfVC95LmUG/hiHAtGn3c/NLuGoTgm5lK8Ydmd
	 YSRPr0ivtGbYBZvNnZIz2jUr5VsO9twNZUHBMgznBGm8TgqEkescGMZaGsqwymQ0J0
	 RkxpektRWLzeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA033F5A8CA
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 00:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177673065368.11567.11510885389138768032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c2288be0d609e53909a07c8131700fc0139bba9ad49b814a645f196702d96bb
Date: Tue, 21 Apr 2026 00:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776730653
