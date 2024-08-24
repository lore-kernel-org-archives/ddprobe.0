Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 451666FD5
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724465754; cv=none; b=ZSQrsCBGaZXBaWzAHK+QqQxnIogzg5H9nlFKF/xdJVcJy6f50C2GPImcKzYlq3RdmBoXU1ktZa8F9MN2iP5ilzQKTmegbsUB7y2/yr/L+qKZADwcVijSE/gHTHQv/8mg1pOKkRGDmNDztAzWNs0NFItF7S3VquU/aeT58b7KE68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724465754; c=relaxed/simple;
	bh=Wm3Fgs7mHXrNyskOeY2eRU9MOhJLqfkRwFktLtwPlQ8=;
	h=To:Subject:From:Message-Id:Date; b=ou1Mf5onsZkusIXbZbWC68k/8NYFZUggC9X8WRgi4sVezBC2uSeBnkeegf4StgnZvUhE12ueTxeo8r1SMWkMhiZboPS3NkIN5h/92TSbV/wWiHcKiek4bMzblgU8Yn2Crq+RB/EzKgp2/I+Abnh1dwEYhelOdLm5z3vq/ijl4bY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AEvQ5weL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AEvQ5weL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFE1DC32786
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724465753;
	bh=Wm3Fgs7mHXrNyskOeY2eRU9MOhJLqfkRwFktLtwPlQ8=;
	h=To:Subject:From:Date:From;
	b=AEvQ5weLx0s9QDd+8Q7+3TNL3RP8WI9me5Ztut6z8SzF1JCoNYUfZdvI4c7tYRoE5
	 u7gT51dCsCo3p1Rt/LxFs1WYs5nG7zjbnHJ1492vjYHaisz5eY0sPlAx+B8QBdSry0
	 FswusCcVEn0hVePt8M04P0Ln7b1pbCgdZYd1WcEg5dnqnQjtVOWcONUFT/xHC+xDRn
	 f6y+wvXQGALGPYvl+MPWZcW9TzVJP67b9N92onfrTKVOWqy5hbCTmlZzFCo5AE6BZP
	 KplDU0EFJkQYprTvmtSaOA9IhFrTe7nH0/BnpAQ833t/9+uent1DcWhbDgFill+y9F
	 g1v9FZTb/KzjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9897BC5321E
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172446575360.7633.15028860186793309588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b6719100401de4e0f66d93686b07b0fe862821de365596be921b4a44eaa60cf
Date: Sat, 24 Aug 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724465753
