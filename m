Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F9681FF1A5
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736357754; cv=none; b=NJvDnwim48Sjs6AeKTKhaHEhpV3Y8ce9i4b57XuBbFA197a3WBO3KVwndUe/2hMCDJ/w07qVwMzRSudtYrtqJsjJK30LRT92l/MfVcd4OTn99BHQIC2YfMAbEyWIqctJ8tkbSjaBWcIcsPnKWXaB7Ki0z1ki2sMBTTRLtY2MqZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736357754; c=relaxed/simple;
	bh=uYoqS1y3+OgIc9kjSihSEhMJ6tzvhOc/aJLSaruc3Ws=;
	h=To:Subject:From:Message-Id:Date; b=TQKGx1bvZobdYMFGuu+h/u7nkGbseZhCuYiTEJfIHYECfmI5/zV/xj6pyKBDP0CZegLMTVQic1AgYxfWCkyEUi68YR7+FUcajPX+ZXCspapYwabvVdd5CuOZRf3sYZM1zBmp4IPWp8IM9CVx4QiatIOO3hjsUvXQ2ryKEqji4jI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JsTwKATn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JsTwKATn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50F5C4CED3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736357753;
	bh=uYoqS1y3+OgIc9kjSihSEhMJ6tzvhOc/aJLSaruc3Ws=;
	h=To:Subject:From:Date:From;
	b=JsTwKATnoU9baQBDiCY2bqDWuq+2Xrg+kQjYj9XBarfXfYL1MDAUFtiOmFEJvVo4p
	 F99JsogiQM5VAJpzuFmoGLCUr8nVVQN3iy+27Wr4PCYlyQaM/dnZbs5IrpFKEnxM9w
	 +qpL85si7Uthb3M+gsTziZ2YMcL8xyrhjT9UZnJaSLN/y1XnM+FWQ5k2vcCk8cwDkL
	 iYnapXyGXLKmVtHzeFl+XkT3VJdv2nxjAPzqCRjL96giMiJ2bumQOZYbC7DawL39BS
	 Kauq9VJilO3QTJCGF8CTs3SfmESq9U1NBMFpo9bbqFJ+l5gjSIg2/ndA5IYw59Vq4S
	 P96fR76L4YYBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922FFE77199
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173635775358.15063.3254980369456302360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5271c4a7784baa65354b80d01363f2b78f51df9016e3868c9e530b4925db43c4
Date: Wed, 08 Jan 2025 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736357753
