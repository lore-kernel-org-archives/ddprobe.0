Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DE1D366548
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 19:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781551594; cv=none; b=Mc02CMAqRvCnhW8oYl8Zo6sLBY3SJTBhW3vxkDoOvia3QCp8hbIGQj8fGyburUcE4Vzxy8nx1z+qBGVp+JhdG9gJTggNjYMZ2SCRmg4ArECLXyB/FYPgNrY23XTuRHp3I8Yd2Zb8D7cCpIzKVqe7ZdWUXkm4/oWxidejENAARwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781551594; c=relaxed/simple;
	bh=Fe/P17+6SJN+Fbb8q9OmUWiTHs5pToDRu5WMpciEn4Q=;
	h=To:Subject:From:Message-Id:Date; b=bOSDjYROscAt17Kv/rOubjUrcE5c/dkN7aJ4oZx65lih+Z7/m5Q8s3xFUWXDWBhEEu5T1oiXtOUrMZPSUqCzJ7wFG4sg1bP/4dx75xk5Q/x2ZY0jxEV6jvUuc+0dXvfpI5HC6k3s3TQCQbhYkmgZ/sqmclBlg064waPAz73eyjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TE8y91ub; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TE8y91ub"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAF37C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 19:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781551593;
	bh=Fe/P17+6SJN+Fbb8q9OmUWiTHs5pToDRu5WMpciEn4Q=;
	h=To:Subject:From:Date:From;
	b=TE8y91ubXv74b7JSuhozWo8DOPr2i1A4NezLY6sSuunNRbBX6m8Jc7JXB6YkO0i33
	 HtG+cR82DbtO/gkPVV5TgJBYefMqrqyhsKLgLKMBgpGCcLRIqFsSSIpT0mj1Gfo/Zq
	 cHBp5D8OZPjT8/+b/IbVuVVMC0/YixCod/pmpJYao+mFww8ousYaTs/Lz8p/cgZNPE
	 NkUCoCGqc6Ga1S/QPztd7IRJmTvUHRfIFz7RA5+Xcd5HzRQeEPqxwAfVj96BtgbIBU
	 rhT/hNtxkOnt9YmulrVrgLIyLG8eEWtjNAiSC1ML62GWX0M7j+zMSYqchVLJ4QSp3D
	 1Xeqw6UbQNcig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEEF8CD98DA
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 19:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178155159370.15567.8638847719806284970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc66ac506f9fe4959890c5bd2b10cb66b08ada29cefd8ce0ab8e24b2824f0ef4
Date: Mon, 15 Jun 2026 19:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781551593
