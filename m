Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EECC1A9B5D
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743174594; cv=none; b=e6tOkDodPe0pvtiKz4VtozPtOiAbTOvuYNrq/b7YjihdfCW/iouI7Rpo9/qdkOQDDiZThx9utj3CfYTuVU/u/mgh++Ab6+VUVRmAy24SUTGJhgPTd9HXCl/xA7H8oXAg7CUkSQ+0+Tvutz4jy5wF/nvz0NH5msSROAiY3+1HRmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743174594; c=relaxed/simple;
	bh=DiALG2iLbyn15jmlfGj8VqtyMN7KSObmoH41xL80J0o=;
	h=To:Subject:From:Message-Id:Date; b=jU3j2ayVRm6qCbkI1KeYwI1pMysS88evXFGxHtqWtUEWQKRqQSa6T8ub872q6LQHidUwhVfFwCZjyam2KbCYmOmlZMVphlKWylvNKBgfBjXkmLTllqYydfkZ5pQy1ElJflj3k4LVxyA0mbFYIWc1utjV8fv5mDNgzRgLmq2gs1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NuTYw7zl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NuTYw7zl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAE43C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743174593;
	bh=DiALG2iLbyn15jmlfGj8VqtyMN7KSObmoH41xL80J0o=;
	h=To:Subject:From:Date:From;
	b=NuTYw7zlcA4FD5R6pLLJT9mLEcSCubhNCAGPEoe5H7ymfZwISNg/b04ZLwRmWg0QI
	 x0dKrNWI9qehl6NJpP46cNjKB6iYJlkII/pzQ9skY1NfopbAqyofs19MAN6ghNYg0f
	 BRHBzp0KhxDcQZo/7VC0r4KIM9IN72qnkMn3hrPicDzzo14mQo4gOj+ZS7os41oGlH
	 JMgQ1q3u7TgBSZ1mfy1WQ2Suo0EeAPyZB9ewqABs6ymKFvKwN9/CtH7/P2I4eM8oqF
	 8T7w70MDf4wM1Jku7+IWM2WBWJBtAYMOiSfQPJV3E5RK9fybPsZc+mbSWIjoCw//tZ
	 D+ul2C+SBJqXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2C04C28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174317459365.12694.8967289842418567997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 917a6954894583e6f0b0cf6782e711d0c743212969e89944cdf31aeff67e8ee3
Date: Fri, 28 Mar 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743174593
