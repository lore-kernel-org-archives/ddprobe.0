Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 515E73164A9
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 20:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784318914; cv=none; b=cMsdCnMx/B/JSL7g+OUFhmky19mliJq8+Z1ruSFQjQ/lyLo/7IrlCcBWPH64Ntc9oKhUxh3zJZ/J5aiNtk/Erjo4xmZIZq1IRIuoRdVipLKUkkknS9xOLLnTOMAiq+cC+DD0H5kfbNAzyXWTyL8SfJ2UevPICSxf5n9Yn5XJS6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784318914; c=relaxed/simple;
	bh=7fUs1Vn57vOfMLY2Oi84nrhZkHfMClfWkQvY0i1MzHA=;
	h=To:Subject:From:Message-Id:Date; b=Cag+KeFaQWLsVch/BIdp3Br7bKsVJozL+skxx123CAdi043mSDGd5VHuc3jwpbgbR+ueIiA6PoHXbfjFnGbGCuc/JxfnlSlv3n3ghZrjf5hLcUrmmAi+1XVwejYmN16pvyKzASuDL4R7waJkma9qnZicrkLe58Jc7BhWCZlAefo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rt1aTS0i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rt1aTS0i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB1ADC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 20:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784318913;
	bh=7fUs1Vn57vOfMLY2Oi84nrhZkHfMClfWkQvY0i1MzHA=;
	h=To:Subject:From:Date:From;
	b=Rt1aTS0is1LFszD7gHyjYuWO5c70yGLFbNRfYuB/tKA4WwUAbgFfL/NjCSJnR649F
	 l+IJORYlSL0CeKSwOjUigWfWqZLOgEUjMD0DEJqorQY22WVoiu62XFcv2e8Vrsdh86
	 IByV882QHiMF9W8cJHNDnbVPDmHKJ2zzC/DfPlNSbl1oD6zafy7jq41rUZKI0KbtGv
	 mEhnPu0WNo/bTQvMQlZ2mr2OS7Q/A8rWIeqGYwQfX45zYotr+gqI0Jk38rZFc45b/m
	 GMcktoIUu5JhfRLYGECfOWKuI3NFMu9ESxbT0HV4WYbIBYNWSIqWHAX8q0PnzF1XP9
	 TWobz756/kHmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B24D0C4451B
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 20:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178431891371.5275.910676266953223423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e415dcab87fe07bfbd5220323ff1ef02ab5353910a0051ddd0b6636a63cb050c
Date: Fri, 17 Jul 2026 20:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784318913
