Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D2712BE7DD
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 01:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777339054; cv=none; b=MtB80AApbui7+bBq+SeNHDEc43zP57NB79ZHezoEQ2GP2lHcA8vLvCDQF4iFfk+VUajG08zjhbXAiK4ppDYM3Rjt8NLdmAu7PthX5RsvxOX9fMjUrOt9NaUkKUyY0xpaCsIknVMIGXsuym5ejqvGh7wTFjH9rUBEB7T+PvEPUNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777339054; c=relaxed/simple;
	bh=cDhpgI3hWAP1glOZvyi8idsg987i29Cn4PF229Ve6Zc=;
	h=To:Subject:From:Message-Id:Date; b=kCD/sJf1hdiDIPQ9k37g1ramuPIVlb+qLmeyK/PHNs5nbb4jVxo5qlJkB1Bm8XNaYN5wBTVCVNj22QHWQ+YaWOcQeSAUYto064F4oA7M1CvnyEUHTDC7Hc3DUzLRBmvR2k44Koox1TFoDxwgTTuSyVCjAmZvTbYE1KYEgsisVyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iWSwHyO7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iWSwHyO7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3705C19425
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 01:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777339053;
	bh=cDhpgI3hWAP1glOZvyi8idsg987i29Cn4PF229Ve6Zc=;
	h=To:Subject:From:Date:From;
	b=iWSwHyO7+FbEc2yrYlvGRwYIVUn33K+0vfLE+9zeORGOLWqggjRjQ9JhBwRjh3HTC
	 Vef+tYRUdyRMaIV8h1Fen8RZ/ktc1ikU/s/jIdfegf4SORzOj+G+JBFH5OCt/ZhypQ
	 s0rMcVVOf1KuIZnKtxFi4ulgiFnhU3zvrPPzzASLGfZlzFC23xHCOBEPndW3N5hBoi
	 7aZwVd82iQnwy3ajnmdh7RAKLyShbAgvTu7dHoXamhBUR9n+NDLWctS8hZ7UZA4ust
	 qiHnml6WSiEPlIUzt2Z1VLEAT9Yqc9KuxZTk7Wu9jVAeWddet8JHqOnLgTp41lOHL3
	 u7mK8ryAH+Tlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE45FF8864
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 01:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177733905368.21375.9363278301990816927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d67a376e099bfc4d13a57d5b546ccadf02b1851197bb9d377edcacaa0e9945f
Date: Tue, 28 Apr 2026 01:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777339053
