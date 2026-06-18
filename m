Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C45233942
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 15:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781796994; cv=none; b=bjsPYaw2SROFTiOcjRQLBawFyZa/S74une4xJjFIFaGHITW+Zc6qxr3Jocw7RK9haPs4QuEVCpN6+kteuG3xGmIcjmvXSbZBUzmcG4c58bDhqeoYxhLMvgLkCmseJxSMArRvsg5l99eCYLaRLRZU09lds0dbQYg+DZs7gPbY/yY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781796994; c=relaxed/simple;
	bh=8RH28DCkz3RKYN74qiv66Zef4T0IBeJ5g3Gzl6FY7/I=;
	h=To:Subject:From:Message-Id:Date; b=Sg9W6vi65wo+q/L0VpqwBBjY74+rG9EB1quAUofng3AZ8Og98kz8uJosfHIldfSlzHfrAgRJnE8u6KAVf4rsXvEh4Qb2XuP2Q2tAr+ycEG6pZciUimrk/mwN/6zVuAsk8uU4sW3jMkxJSGSDIjuWRSrEity2mx2MmC95B9QYPrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DLpFY+1f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DLpFY+1f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3F79C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 15:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781796993;
	bh=8RH28DCkz3RKYN74qiv66Zef4T0IBeJ5g3Gzl6FY7/I=;
	h=To:Subject:From:Date:From;
	b=DLpFY+1f7+WPzo2dxrIxT3ARV8u9vQkKvmpT6u+oJ/JgqqtxekPNahtrW70cmuwJI
	 4hx4uZiJ/yFsij/mduAmgqlyG0BvxxR+MqihrIClL9gOnk5q9rX3P8ZK0DucduxSQc
	 ov+TMDAcLRrLyQa/zbTxG6rYeF9jBsFC0B5zJQiNn2cRzg/OpvTTJi4NSw0lWSwfIh
	 somWm+xRCCuB+NmfxzaFEM4a9HNAF3uDlJcPycn3dvzT+y4xqQNn8GOGDWv0/xJUho
	 1OwkBR+ptsi9aIcqZg6el/IrkmVA7K50pimTHf39E39lRjygsR4CyrQJXwJlh2clVM
	 5rvNaQxECDgyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEBE8CD98F2
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 15:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178179699370.18715.5046870462467417530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c174a4a59134d7a3b8915069b6e1873e1a2a5e99761f0e83f54b26a42389079
Date: Thu, 18 Jun 2026 15:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781796993
