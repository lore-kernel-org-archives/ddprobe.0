Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F0543EE1EF
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 14:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780930474; cv=none; b=f4FvBKew0UBvJmA26ym/BrQ238LNbJ/xjBTDVOhBGQ89o1eaCMP8rfUT6P6HoxmRYNgkqvXVOITB+jrNTgLObGkMQwJb/VT1nZxMgEA4Qp3CJ8Axp+IaS+lwPUYrYeMK1OsfNLn9YZmoqzDa48Tqwqc6gOZ5oLnyVGc9mf2MMk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780930474; c=relaxed/simple;
	bh=F1YQdN3JGckfWY3+Z0Vv+ar8OmP/sfyeDZMvOq6Ghg0=;
	h=To:Subject:From:Message-Id:Date; b=Iz7Xvc2msjfrUwZLfIbkq9d+4YVUVuENnDMI9Mfi2PAWcg1AYW352axKLi21LWOFSj82uH9lBp2EodL7D8Hbhs5B/9gWRizRKef5KZ+HLAyBBaaJ8e1z9MspgaOF5eHP+aQQxBh2Pum9W4nj6/AYClpuiuBzAn/Q5ckJfQ+lxY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KoDqQKAY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KoDqQKAY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9A5DC2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 14:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780930473;
	bh=F1YQdN3JGckfWY3+Z0Vv+ar8OmP/sfyeDZMvOq6Ghg0=;
	h=To:Subject:From:Date:From;
	b=KoDqQKAYPe51kLEPj/AXbrYbWbgvBAtZLwtho9/ah/gCWcs1GozFpcPoc1nHYJnFU
	 Bp5NaD9ySYdce6lkwxSVz94Zy0P+Eqpfybd+7YMiuclgYWkO+kr0efPtK4PQw7Hmmx
	 u4RC6Fv/y6hi6iLwtW3rq/euH3NoU3EUg9ZOCiwtiPJ0hSbgQYr2Wpn4smLdCsa8ts
	 0UsBaNoPDIQ02OpVXI6Ih8UwfRn9PtvmwIBUTEvR+bS2Cg/A/miqlS5REmq4Z5882x
	 ngm0VJvH3XApDe3AHlPRHuOJnTh5xYgUjo4qjQHd/NhvNeG+Jpr+huR75XWXa5gDAh
	 KYfuyMh414dOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0EB9CD8C92
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 14:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178093047371.898.12201897838415643647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 364a6ebff8e773fd22d3399667c42878382590f7db0c4d5d40e351310f7042b7
Date: Mon, 08 Jun 2026 14:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780930473
