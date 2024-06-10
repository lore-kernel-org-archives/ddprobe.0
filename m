Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 436E513212C
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 14:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718031443; cv=none; b=Pota36UxoiQKhpYoodYpzYJ3w4JHnGmsfE1B9gsOVRtopkbYlzHhVKSBArI5LE5+ltDNawRsqHLwUJMLZvF3ehc/KspZgsuUyG9L2hixpFyRdlm5JekQ+LDVovvORpUcKUNtp/TwzTwndqrJpFtnGFXevaVVPvaISo7xhGVTwtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718031443; c=relaxed/simple;
	bh=DJRNR2lA20N7XHCbrVJvuZdbZR35Z6Br+A86wBbiAUY=;
	h=To:Subject:From:Message-Id:Date; b=DUpDWEOrfog/8ZRq+n5R/G2dCycmn7TyVrTDm4g5HRVg3+kA0ypbCdqF2T0mRtRzrZ7nZ2iw3sMm3Bg+KM4tOdjG7u/jNl8pmNZmK5zsn29aE6aJ6SCRlIXZUfOrW+hqhZ6FWnqIs1CfLzkcdYZiS04Xar7QEz/raYQ3pG+7ZSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cD0kfJN2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cD0kfJN2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D558BC32786
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 14:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718031442;
	bh=DJRNR2lA20N7XHCbrVJvuZdbZR35Z6Br+A86wBbiAUY=;
	h=To:Subject:From:Date:From;
	b=cD0kfJN2ATK/TEbT/yL+Vn3alumQQndQNeaM5s2bcwzwb8DakH2T+on/etkQ4ZGRZ
	 U8OE1dK2h6doGxNo5F2tzkH3MaTmDuDlHc94cPfLfgQ9xz2qoJ1B7YvNPNfjKomzw6
	 AKVBbUBQEaB6+a83MR3d++pktAru4/sT7YIluZYyWIcpOfvuyt+pG21O1Rprp4UfdI
	 T1w6ESWRcL6j8Fjh4RK/RATg1TvaZbZvLovKVLGwD9dQ7ySpeL+CvuTjlevg2q+Cjj
	 uuF3yCwwI1mjv96V8tyggF5b5eG3NG13M00InnBwjG6e14T1oCcjx20XuunSQp6s86
	 yKNsf48UvAJJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0415C27C5E
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 14:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171803144277.8618.10465092067952753286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 966f47d04eb24ed6820634e4b15f93c8890bd9e4a2bb7e74cab9b2ef6a78672f
Date: Mon, 10 Jun 2024 14:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718031442
