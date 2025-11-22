Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A3C51E832A
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 04:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763784714; cv=none; b=GizFLuiUUqEmQdmiqHh4q/uNa0ZsVhpY/cZLhxpegvb3ZVLTmQLkgYX7kDI0Hq01U5eeBJCMpHSdAhITNoqvFCSoZGCIRwwSedbouGm4pEDQGlrqdHWCqgg3R080HuWpqtQ9/XH4ZsDhmUTL/ZK0W5+iRiHEW24ww9oDVeHVAWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763784714; c=relaxed/simple;
	bh=h34EojYxF13W+byaWtZE449Py+hmHRPnzuZaSMgufAE=;
	h=To:Subject:From:Message-Id:Date; b=TN05JZBVY/r/mXPllqeaCWdhceqjf7JH/qj58wSf+IWif6iMZuEUz0JI/+ljFZq45kglguZnJIDAR+J9j2w7/pscjusKXFPnCahbVqO5XWEF1zk7HhXJqH3ewW3KoIPzGypYSmZj7XkSy9qv4Jtl7VeDVUI9AChrr06kKDLsRZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KG+1Ec/e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KG+1Ec/e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6EAC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 04:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763784713;
	bh=h34EojYxF13W+byaWtZE449Py+hmHRPnzuZaSMgufAE=;
	h=To:Subject:From:Date:From;
	b=KG+1Ec/eWUGX8QxHS/Y34FVIO4sn6f+yrVQhSmzRWnWKgAisumJAhHY1qQvkuhKlH
	 Ht0MWuQNoyoZoZrMVGsH3XQtdBmeMOHX1qNUaa+aZie1UoHWcsK7cvBAiISP7jXvZb
	 V05WAjIhZl9PhfeZBVMgVzfaChQ95ZzYJrOOB+g01E8EKVUjIAAOxLKKPF6PycV4Uo
	 XIb77k0EDIcGIWd7qfuikkW9bYu28DHnc/FIMYrYGxlNW+AjFsl3sq1iHWvCovLPiS
	 sY4EkX075myO2Zy4etMl2XwWyTXRDCqc0Bl7zkrBD94688qBRppdtiBM3l8knjLgfk
	 u63q21F4jghwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC61CF64B1
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 04:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176378471358.16299.2930804832906364002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c022a59fa94a70fc340a2d20bc6a7191f5c4b4e8d8f601942fe85764759aaf45
Date: Sat, 22 Nov 2025 04:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763784713
