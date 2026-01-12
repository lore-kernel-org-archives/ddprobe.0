Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04969275AE8
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 09:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768211634; cv=none; b=uWMOHKX8u4Q4ixpYhb6kzwzV+HmOUS2NqbnoKS89hQm24EWA475RPnJAAEVJmWjVkHNXstEwJFkQ5siDgf7nTOKPgJF9KIFm8u3zDqFxGX1wuciGBY2QBPvmuxa4B7Sr9Kh4EINTeMXvwgTRHh6NMSiI4KT9vFgZElwzUHa/Gnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768211634; c=relaxed/simple;
	bh=70uWqdsMSBSJ37tGDnb+aPk/7lCfYdK/CS19xgxQAzQ=;
	h=To:Subject:From:Message-Id:Date; b=FcTlKOVlZZ2gP9lZb3odVnHZtXlIMY4qBoJtFjNTwo/ZC4GSOz+mTlnocKtOvYP8a3hu4cUc2c0B979nZdqxjO1RHEcqbyxyU78drxOWjLl2BRN88tAOEO3tRkFUz/PdhJl6B+/045YMGoH2sbPujnXiKIEx+I89wj/NJ/axeLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dk549m3j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dk549m3j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0161C16AAE
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 09:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768211633;
	bh=70uWqdsMSBSJ37tGDnb+aPk/7lCfYdK/CS19xgxQAzQ=;
	h=To:Subject:From:Date:From;
	b=dk549m3jFlb6+iqsAhn4hpaS2U+JS+jpJraTN4fSw3ngfgla6bvQpgHzC0SN+Qyr1
	 CadN+m7mjUQztLX2B5l8q02Z8t2IiFA7OU9Drl+hBVC+LiABxnXM5s3CR0tlvbbXY0
	 MxZa4dj5zc6Do3Dhui6Ho7GuMMGcQiQbQoyCu8v50plk6048Nnj2cblYSVHsIY/9Ax
	 aX4yXFxjGRFBCIf7dHFtxZCWhyZ2OyyVWGL/gr9Cn5OLZiVVF7+HCc3Y6cS62Vd2Mv
	 qtBRF2BXvynz6jNjhSpS+I1IFyOOKkJo0qjeyjy9EwWTwFwCFDP0TqLruPmjFRlsSh
	 gq+jTP2UoiElg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECF3D26D97
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 09:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176821163357.12885.13032199664883055388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17e9880152b789412c29804159a8d0c76f28e2993b9ad566a970eaecba5f586e
Date: Mon, 12 Jan 2026 09:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768211633
