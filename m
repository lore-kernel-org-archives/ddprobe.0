Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 286AB25A2C0
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 09:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740734934; cv=none; b=G+nJsggHDmVf2hgtv21A6d78EFQtsadpBfjXU9UnJ9t3Ww8+QCM2/YQxAlRTcMPKmJmgN9W6GOGOuo3faMvom9tQ0P8X4icGCy5GXZ1IkotlkBr2MFaWDlb+9fCAgASnlm7Ie8X3MF7TNzejvn/EKuOwRDpnAMxYXoH+UW7Z7tg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740734934; c=relaxed/simple;
	bh=5GRvlvHYQ1/aoYfQ4g1LXgY8O5RpdDm0TNmiEJDeDsQ=;
	h=To:Subject:From:Message-Id:Date; b=iX93mre75rYOlltZelFS7d9wrXOspIqUrYj3MH2Aql70bIpiuk0KNxw7YQVI80K0K1D8WnvMl2wlL0jDzPACLD1hMi9ezkW5rNTGuDj6NgB7NZm/zl6Y5IhI3/5dPkoJzevPGOW9uuzOwCVivWsyrclRz+p6HZlAetCwMfoeEP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tEwrGs2k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tEwrGs2k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFC02C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 09:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740734933;
	bh=5GRvlvHYQ1/aoYfQ4g1LXgY8O5RpdDm0TNmiEJDeDsQ=;
	h=To:Subject:From:Date:From;
	b=tEwrGs2kdEsfxcM6+UMMar8MzRBEi7BvTc78PPlYjgDuWi91Oc3tVixcjyPVT8hkb
	 8ZavmqB6sg1xG0/78sVmWnFlqIJszYdIYjnDafwZ+FpQw9XLu/3AG14Y0wi1WuqCBG
	 oLrgdH7I5fJ/SbhHSujp9+ycq1jpAGN3FJO2BtnFoe5R0kj2ZlcBSfFfNeK5Ho40FZ
	 adJ8Rp/91b+kCvsOPm5q718a2PzzlemRDKcO58Yt4yfQ2pKM/5PwI/8is4a8eAybdr
	 HLBEF8xeMvdUo1JXlPKGI3+JWMaehm/2M6Z1qmVm+LFWBwuv3FBNsyD1SuR8qe7KPb
	 jnC/a45QltpAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E9C2C19776
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 09:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174073493364.29518.16319804098431147064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 206a4e7704c5254da39b77c1fa75015659a0ef5fbc0a6950f53c0541293a40c3
Date: Fri, 28 Feb 2025 09:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740734933
