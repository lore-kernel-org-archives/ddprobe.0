Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B185202C4F
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736375754; cv=none; b=hc2OlbTZrG9VH9ouSK7zDqYi/GcJzMVg1pAAvIz8Jh5YAcs2C41iN85Hnqhifh1VospdaQ6ctTQsqiGElXq030JDckOB6/zJpEson19JO86Gv/mOXyrXKhqyPi0tWXxiTuwvUmIaa3eAwYM0A+dEcnPt1WKpuItheXRDoKRfCtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736375754; c=relaxed/simple;
	bh=t5+sAVolTnSWFszjonKdxdrQpBK/0FLtWQd6qJuq4BA=;
	h=To:Subject:From:Message-Id:Date; b=K/SMfzk7g8Y5ZlCMsg4itGJqTtTDklm1tEjz1oWjAt/Kj2SDTgxLtT//5lEZNYpIbGSuNAqoshXeVaYRe5KNitZ5ha9BqQbWrFeZHUQxzTySNj6TJ1humrtpkngCcmyMPspg2X1MtDHcHp52u6rs/AgDDghPUkUdhVMuZQ3Uxmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cSFOpXn5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cSFOpXn5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B489EC4CEE1
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736375753;
	bh=t5+sAVolTnSWFszjonKdxdrQpBK/0FLtWQd6qJuq4BA=;
	h=To:Subject:From:Date:From;
	b=cSFOpXn5Cd7hI94wzDUHJJSJi8bNV7kSziPUUG9ZDuQ15nBT2m7y+7cgBWDTw0FvG
	 S2hLixmymQ0aYRiuaXAmzi3bdxwR18Z5+2k3RyNWsqi8TItnv+9Cu+/hGvr75GFjRc
	 60n0XdPF1jgcn7Y4Jza9MqnItAhoCy1zNtEXr5AaceU4fiYaym0/D0CO8JSC3M9fli
	 3jbVAat0zZ+Me0awygwTPuRI/sWO67eSNu+GjbC7Qm4OEb8jgKG+ZRYp2/wDNLQlsv
	 cmT7HkzlXOmuYBkbJTpZzIzYPVHtkXam45GdjfZcV3yJZdUPsc+tVONw8GIu3xPJmu
	 JDIqOZOXMFFUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A29F3E77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173637575365.13655.2223780014570344807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41ee54dcf247d77206114fb68cc7509f27cc601552be161dcc5d065f3da9a315
Date: Wed, 08 Jan 2025 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736375753
