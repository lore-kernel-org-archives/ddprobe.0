Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC1A358368
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789548634; cv=none; b=H4h0eaapGZk57DZugHu6jggbWqGm4Nzwpyy0j+HVV9XK+O6W3lMeaSHfgQnPhcvwMuc26QrLdroNkZTOtB87LxTCShDnX/9yQI+mXCiByNNW43Q3USXJRv+Z64astW5LZMB3hmrEyinwUIj83INqnonXpQIqnjYFOUuEGbccgIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789548634; c=relaxed/simple;
	bh=KHzFs8EHEkmzlixZvOQCHpEm5IsB7QcDNAt9pToyPBA=;
	h=To:Subject:From:Message-Id:Date; b=hQ+QDqWS1QwZ7pYrfGUpXT7s4u7lxKTQvj3N7Ey1pCOiflwdd52KfKCFN3DIBS7MTOm0mYmWHK4l5vPJzd0Bkn0bB8wsKHQeByiBeOJ+2+tROPMdIj9uilp0h7ccZs2REdb9sMXHqLJROt6omrfgXymZYXjkXtNTiRY+2ZMDfNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QT3+fqFd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QT3+fqFd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEA4DC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789548633;
	bh=KHzFs8EHEkmzlixZvOQCHpEm5IsB7QcDNAt9pToyPBA=;
	h=To:Subject:From:Date:From;
	b=QT3+fqFdD2ESeJ9UBBbe5C66IsrqOSDeYElIJS9YLh6OpbUcUu+nzWj4w5FgrMP+s
	 IZ3zv3IpwvMaW3RC+YMfMJjQSCbqsX/Ly9BcCWonfrkAAzWsPP8yAJCTzNxAci580P
	 9B/bJLp3Ww8glB/Hwh8BOvdw1s7maRBus949q6d65NgzpgoSc2V6hVIezWiGfkgole
	 kys9pYAYy6xy2byfMDIx5V1mGhjrXJk2psDFHk+Meo3XQXtVQY6AT3PfhwC15gdmq5
	 tEu4NmuXLYee/XgPu2E5EkdF5XI0E2mXyoaMrl3RilT/pZu3yd/KD+gn/86FXu5zRw
	 8yEP51vLPDkqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC73C88E77
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178954863368.18134.14497681220705767353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 988f66604922b03b9e87565da3f861e08ac42eaa7f2d8837d56c2810ac61eac6
Date: Wed, 16 Sep 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789548633
