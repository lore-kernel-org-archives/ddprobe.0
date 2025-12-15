Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A59C8834
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 02:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765765374; cv=none; b=XuMzaUWTaupDJMu4Wod8ec3EWywvSgRWsseryLAqdCdoNBnevpHH2qTOza4AKXZO7eEYvW7v8Wv+qOsdZGWIzu7QoQ7V2/yKeFCti1sqU2GPzG8IGhDSYUhxrBGUfrodrQXihgrvX4tjcjWh3q+DV9Kl4FzGuvBP8RkIKcRtTVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765765374; c=relaxed/simple;
	bh=zJFCMezQqLeMZKSFciJm0Wjgzp/UrQn8n6/jRsV9onM=;
	h=To:Subject:From:Message-Id:Date; b=dMmaeR1ZICNvGngw+Z8uVdtzSqlNSYLxIlVb4spyg8TDkH3JzaV+RVUc/UrlFTew7zAPqE/ntDqpNe17KbbUeKRgrPO7ki4b5hKqwJd2hA4XdkR6B7B+XfEdMz/VO9XPGaQ/ZAuo0QVZRu1RNBYgzr5+UHnRrmXN/JA5ynvfUSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n3X3QVSO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n3X3QVSO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F58C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 02:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765765373;
	bh=zJFCMezQqLeMZKSFciJm0Wjgzp/UrQn8n6/jRsV9onM=;
	h=To:Subject:From:Date:From;
	b=n3X3QVSO4iu3PYrxhQRQ5f88rVmoG+adwxJDrBvy9RF2BDqKXotlQdbJS+FTLQ2B7
	 F3trXgvfkQAPcFoMLgzkIEEd4qjUHcqh1cQDqw+mOI1CLf7euE0VYN/5AZw5OuRPRS
	 BgI/Bfi8gLDpHzltrUtzyFVRgrBCcWqIj6wwrKnyGtaajKuxuxFfSgS7xVOXw21ns/
	 SV6I/85abI1L1r003dARrMHf6g6xr3GwQpAaec/9gy7hgPfAvLxgT/6I6uJVtXww8T
	 xcB0FYtYIoiDNnGoUMV6zzjmE5e5SyeHH17fBpJtfeLDkYNmcxYfB18v32sBMvWNqC
	 PAZqivXZLhJDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A0BD59D99
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 02:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176576537358.19999.15059842808056072947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 729caeefcf254eb0c8af7c9ef4b5cd5dc5e767b9f3d6160c4ea538bf2eaacefb
Date: Mon, 15 Dec 2025 02:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765765373
