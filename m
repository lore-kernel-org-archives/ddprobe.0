Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30BDF260583
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756027794; cv=none; b=lt8LWvaCnEuKsQiFbntdUMQA+2QcFFeT1pWGZcGUPDrLjYSsWr/jWWUurNphwAGZZZBd5HjUPRiVtMLatrI30qpFeXmlnw4Y1mi1nV2JtRnMeKbMhoJiezaIfGOToZnL48dHBuf7vI7o5YoVynO/y5KOVZR0uV6hVKA9MxuGyT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756027794; c=relaxed/simple;
	bh=t2ONIsPeDaFX3i+FGqBY/HGrFpWUWws77GC/giLbr6Y=;
	h=To:Subject:From:Message-Id:Date; b=WdodAJvBsyr5kTXB4VdFKHro5df2OZduqqcTZ1zNV69aEWUIfE7HcswzBXh7vPD3z4fUh/m9szgu8yO5h5moYdutrz9qVu2xyyllh67igC8d3TorGR/J8gEVm/LUM+RY/q3Z9yjGy+INRbL9WxyCCCxtn63Rfn7Ch9OHMxghjYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y5koSzA9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y5koSzA9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A017BC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756027793;
	bh=t2ONIsPeDaFX3i+FGqBY/HGrFpWUWws77GC/giLbr6Y=;
	h=To:Subject:From:Date:From;
	b=Y5koSzA9t4yyi5O6rzDrOP+orhTYuz7/+i8zEEvddUxKWMjgXu1xpk3WlXiTSRPkp
	 re78U8U3+SRM/iv+YTWxCJyM/7tkKXwQVbo/OdVj491lAvVGjBGzoOjHMkCX0A0qKM
	 FJUk+cyQAe2/0x2YGq2DV6HQoF/s0uI/DsoClKl0Iq2zNsExnbbHe0LnJna0iiGZ98
	 6EF043Mv2SC+1tplcH2erRpJJ+AguL0p8Yq2CrZf7hwpfBaCa88M9zXZJ1iVrLM9rV
	 ce/Dz0uAHIG44Bju/Ed77V/9VwNW5o3lFxhUzBDzD1J/RJPBHTGTV7JpcTiMtu7SIr
	 w2HMkvvKCiCww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A12CA0EFC
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175602779357.20653.9676416726735565086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e87842c6511ed7cb463a7bd7de7f375e54371514a7871adbb2a7853f59510a33
Date: Sun, 24 Aug 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756027793
