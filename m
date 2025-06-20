Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 529031E47B7
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750429794; cv=none; b=cooS1kzyWmz6xb89MsKa4TH7xawv0jjfCxGZHJQID3bw/fcWctfeIiOrbvdZ/Rq8dHHrWlLp9VrF337EpNd/lPRMfm0f+ZaPb8af4U/kpjzzeZcibVQnMDSklaEjLBZbbCq4DB1r8z+Y+apauE83rLE9HpxmeZ0p4TkuOBLkrtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750429794; c=relaxed/simple;
	bh=FJGZOD5AXgmzO5l7/RH7ymjayLcUmOYg9LdS85K9AYw=;
	h=To:Subject:From:Message-Id:Date; b=sbNC8GUV950DnROPIdYQezyGUYXoeAO+Q31Nd0swJP7xXLVZmRp8YsHC5E14qN2XFHcD3CwO/JOtlQL6E0YB/73CrWSr8cUg+mlRnCTGz5Q6mzA3QQdMhrnRI1luaVUv2GeWauLiM/enmyGyvtquEcj5DRgeLbUn/OoSIrjvRl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pR+dBy59; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pR+dBy59"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1408C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750429793;
	bh=FJGZOD5AXgmzO5l7/RH7ymjayLcUmOYg9LdS85K9AYw=;
	h=To:Subject:From:Date:From;
	b=pR+dBy59vnNCGDco5Ett803HlB3w9a2+tVBOVTh9yua/qxgB+10OSfg8jtFVR8LM5
	 Vv8ohE46rppqwUK2up+9OeT7U2dxXmnERM6hwfncdA2KoBg9tUMw8dK3oVY3/GBND9
	 vA859WztCZ4g6GX88OCJOVYhjeJPKW5MbWZgDf9Mvq3TtDOav3y32uCaqFWjFJ9Ncb
	 w5KvKagvi0evvj8MQ/UE92bh0iujrzWYMolnNuTGjOpZh/x26RkCnH8vEq7Xj9rFYz
	 uXoHWKf2Pn+s/tFrYIEwdq5TN/pgUEAR3XyHlsFGto+j6jjyobJGN4ZarzGBcDca1e
	 nWfZFxuDZqtHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F173C7115C
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175042979357.13782.10261005476800823453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec7e30d972d3fdf9bb236b0727f94e4bdd90e50037f2e0f3efdd212434468c43
Date: Fri, 20 Jun 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750429793
