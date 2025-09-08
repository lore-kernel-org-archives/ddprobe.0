Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DEEE1F3BA4
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757342394; cv=none; b=Uf7b1kvVBGC2p2c9chZN30Re2VCzPWjyAw2CU/0WYhRieqd3F6O3XR0RrkofJ+JhjvuaqDqP+VGW1vY7T5irouOl0hIfKIwLPu+nQnrGVOzdKKOX3ApNhtKSjMV9niuRlOFstJ3nC51hzRwlLY2r5vN6OhtsWnYeKFTx77gPq7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757342394; c=relaxed/simple;
	bh=AM9+BR8ox7tv9YVdkL5b6U7R7Uwh/zjDF7nhNG0K/jI=;
	h=To:Subject:From:Message-Id:Date; b=LXCZuRxYoEBBbQYjoS/sOKyOxIiVdfsiqRkJxu5w3d2ex4l2VgP2mbRJmncGjlaTQ2RFcx7BphojyWlZHiMRdMLu4Z8464SwtpvcSABunQeMXCDsn1hHMjwLZQovRxE7pLuH0RsGv341Lw0jwSg96VMd847fSw3VHsLti/OWw+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KxfS7nL8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KxfS7nL8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A066FC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757342393;
	bh=AM9+BR8ox7tv9YVdkL5b6U7R7Uwh/zjDF7nhNG0K/jI=;
	h=To:Subject:From:Date:From;
	b=KxfS7nL8hgnVT1CNX4BwZukb2VXDThYINKI7ezH/tmaSvIUSaPOmrhYCyvfGO+5sW
	 uXVpD8RtLmed8oZZbA2hXHkVtRU34SzgCpL8HZLi/wr3Vl91qwRzw2DlbJ+vwuvjBy
	 IrVm90gyJrvd78hfoqPlCCoKG5kvmKtg2JPJDmUReTn/r7TCPaRte9A9+dpD8m/x7F
	 L09mpzdKxA4U4HodCSKFWPsmQ7YhmA9DyEepoXfX2kePiQrvfLdXErFrx5kN7Z0BwS
	 wa0p/Q01H5weMNMZvDlaI33hEi2c9/m+BRVmbF+p7wAj7e3yEAD2u0jt9CtRVIxLKV
	 RFGzT7B1ss4iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE96CA1016
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175734239357.23387.1474457401656521895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41ef3efb7634e40ef31cfa1d80db8df91a956cca84b004efd05fe79be48a14a3
Date: Mon, 08 Sep 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757342393
