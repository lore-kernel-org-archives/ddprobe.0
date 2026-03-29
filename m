Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E98472F39CE
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 12:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774785894; cv=none; b=S/n/m6sh8Fr3wfzWVM59GFf5W0gasayDhgJxokFdcdOjSa+kWSGbNb/nm4zhyrBDKMaLFFr0tPuglVlCYVLSMrCT8ZUoIgAXB/vmTYC+Mz7nmFL4SL6yObshOsqDXsaIxebjFMWC3NTagf7e03l1TYD3kRynw95e07FjI6BjlGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774785894; c=relaxed/simple;
	bh=onLvIOxFSkgRYi8xsUqjXOHBL66d1UYf2uT78grLAws=;
	h=To:Subject:From:Message-Id:Date; b=BWFHcbQqMDoyNEbuXmWQaj8A+rJl2ntXgCcJNdt5FMGpGFo98GjTSQlXIgYjvclLJtjJjZDiYiy4qsvW9+nBgXEqvzUlWVPm8osTZP9RTPdZuw1/S+PUIeum+KDhQcyYF1pzq4ygt6SzJWM/LJ06JMs+Mly7gXHWJ4Qbn95Nbdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X5UAkV10; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X5UAkV10"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B82C116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 12:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774785893;
	bh=onLvIOxFSkgRYi8xsUqjXOHBL66d1UYf2uT78grLAws=;
	h=To:Subject:From:Date:From;
	b=X5UAkV100iiJxwRPsJ90PNHvZ0aP6IpsN5X+quuiLRFQ3Erntaknm/XM4rUlsrsOA
	 d/I9BdGZ+6yljN7XDGkqGcsxjjqjFKlKCTC4b+OyrOTUnDO/RZEz4AA8Uti2Q12vRH
	 D2UsJltrtys894OPg+jNzJuKBFAeuuvF/nnecPODhwdHmmmndQu9KFsl9MGuP+9bo4
	 c1iy/dWpxJCYfSKwuvzzGbj6+JwqXAvC/PZDddjtyV+psV2xecvQLrQaxgbN34wBJg
	 FxZC5eFKbbkdbSvgy4KDghKf0Kumz2cjBqqFVpJ0l82pNd12p87T1bmGQh95JSy5d+
	 Y0Dobgl0VPPLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943A3F3D5FF
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 12:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177478589358.2767.2796550165240414021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 609f6496ad762600b19b74f5b8753a1299e7d2a910ec56bb6621577b9fefd0d0
Date: Sun, 29 Mar 2026 12:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774785893
