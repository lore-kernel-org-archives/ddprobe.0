Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AC71215F5C
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 12:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770553434; cv=none; b=PjpsNDFUv1XD9IPSD6rE3ULvZ5Z14iV8nvfATpdNhmXP4aZPgHxPgliH2/b+QEnRnqud6kQN6mUke/fXEM/PJPwm/bvLSXPmhC0ezWmgl17po8j3PiLDIr29awpnbMTMp8gEhjdS42Wn8kDmu+KOetHcYNHG/F6H9wiHGVSWKss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770553434; c=relaxed/simple;
	bh=pyq64Z9qGWdMGV7EA2aMHhWXoYs2a2kBxeud21iR0UM=;
	h=To:Subject:From:Message-Id:Date; b=HSN2GGyrSVtzxhkfbb9qSu7vU1GtoWinIjiYq1vzuF2eHxI6QYqCNqcNRoeL5aLgtBcbWZRVmqybPJOYH5cTRlL1ZplH4HqUp2pg5spgSXJD0YdYoHCwPLEPw2veE2aiG3lfFnAR81bmrylhYLQ54Z6ICVgyeeLa7tK52zMOmzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JAKtntxe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JAKtntxe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1AB3C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 12:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770553433;
	bh=pyq64Z9qGWdMGV7EA2aMHhWXoYs2a2kBxeud21iR0UM=;
	h=To:Subject:From:Date:From;
	b=JAKtntxehHG6CwglCN2icAD4tEjyb1/kGNf3lcPvPfYJTAYRlUV3xAO6cn+Oc0+/I
	 lVDaqhLpCGt0hkWu9kGXQfMPffxnhpdCQxIkEexBbMf4AIDbOWt8KdAhFio/XYzEc5
	 zfMOv118kXkmUFpBmy2k3y5TA9FlnVdDrnWxpZfXQjB95kSVD4uFlwkNWSmjvVJIlb
	 G3u8Hpi5Ghh2n2IGTveI+Ic7O6/H4llytAuZ+nQ1w1oB3CtRb1JZeUXREM0pXISxLV
	 EGCq6VAxdnvBQPie4J7F+P4QMnybhLfnyz3Xtj/KfpBKeEV7LhNazZs/NzhV8CeML+
	 +5G/JnCSHU5zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99016EF06E2
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 12:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177055343359.11246.1513082172186376942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19d532b56dffedb176c72a7b4d730f6c8a179a9d444f60ea0e8cccbefd502c84
Date: Sun, 08 Feb 2026 12:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770553433
