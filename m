Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38784BE49
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760311194; cv=none; b=ccSJQuzf9wcuBFljphZDqXBcIeIlWA6fFuYQnzvW3hueDcTee6XW8Pvf8qMmVqgLdAmITKHF+ilAMPPi9G7isDMhgMtT4iP+Su+jnSCcgkJnLEvlz1Ej9rWgkISwMio9cTIR4yHDws87bjQR7/hYcCKcARSbcTeth8MLJwVISYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760311194; c=relaxed/simple;
	bh=e4W73a51UD7Zfbxjqt0YGe+d2ghKNlvw2iM6qu0/bq0=;
	h=To:Subject:From:Message-Id:Date; b=ngEqp80ZHKj5LiA4vr3V4V7oVYpgBwqN5YztH4YfKRbLZDXJofXYz/hz/kk6JuEN/8IZzWJhQXai5r5V/dMyxYz+ob9KdfuBhK5Km/4fb402Wv88gmLF8whG1/ZdMf4EwaNpOQgoSMELKDF/kmug7bD0+64pPuhCEcV9mlckyo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pNla+9xJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pNla+9xJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB348C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760311193;
	bh=e4W73a51UD7Zfbxjqt0YGe+d2ghKNlvw2iM6qu0/bq0=;
	h=To:Subject:From:Date:From;
	b=pNla+9xJtvIZc+Cg8nhgyk5Isu0U1goMLHyJboN/V3dRt7GUIiYW+xX81AVrT1mUx
	 7/vQOB0Oi1YokJUZ4u/C51+yA11+G3O+9K647tfgrIPk8En1jQrIoF0xr5OHzpp4FO
	 YFoDpRvOmxtyPa0yUexLVmQ7INkKWa7CYeNUfzixiNLyGaguIq3pRJPfdUT4rRbBYS
	 1Q8fWvs5lAaOLSytcB/WJmuEyJr1e82rIKKpjsGckFgG3B18Nz0e5R+TolWVSfzgNZ
	 D8Ix7r3JN7vgy1Y1zzqSZ+x0sm8I3k7agNjodvSHQx0sDzIQEXEgFqIf4PxuiwunNH
	 whmPx4gnZ050Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97506CCD187
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176031119358.872.5621483563379919332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da73fe19780d7801534d7575bba713f9b876dd8488aef94477dab9fcbfdade58
Date: Sun, 12 Oct 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760311193
