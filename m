Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 135E62522A7
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 04:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771217094; cv=none; b=Q8iIxWcPP+gjlXryBdFH1tYK3L+wQ4n7mQAx7F64DNn0Obsd2PwTOvLUDltW+GLJ5wYdkK6CjMHkzVpcaARu+olgP33Eq8b1fbKRA7xgWxsE6tn0j6xRtIHnXlOIptJs5Cxbuxmp/YDp1cjrrqetc2XlkxTZfeokIfZmb6N5dqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771217094; c=relaxed/simple;
	bh=3kvLr1uq7l3/P0Ye1RtQ5ldR/wHveJRRie7Lsq3IDdE=;
	h=To:Subject:From:Message-Id:Date; b=j8SiF2kprLli54555Tphee6gXOtD4MriNG6MRWhJigyNkkh/NujCRHEPPZ6w6d6gNx8JTaV+hsEiuNbOBEt3ghuKWvVlzFEXqrj35WpetpkpuR7+ffPbZH06EcYBH04lPxLjfII1b3vUY88kbh9qrZWw2r9NDVBIQV1rUtqqdkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZMNWoNTG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZMNWoNTG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B80A8C116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 04:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771217093;
	bh=3kvLr1uq7l3/P0Ye1RtQ5ldR/wHveJRRie7Lsq3IDdE=;
	h=To:Subject:From:Date:From;
	b=ZMNWoNTGb9ZqIMSMiJ6J+gkjj9i2OajTER9E1j9A7+IiIpgD0ua82iSEzQw6jYcug
	 FLfi2++Z5Xr3vGpIlAWVDXYzAFc6aXjrFGT2IBe8t3KPnHAkZUmg1zf2Hsj5mHcXIl
	 0B8XpQGfJcCDf2/RNSsB4mWMjDCd3r6ATnXPyGCNTpKsMj3HslcQmlSCawU8U8sc9t
	 FP0ntONXPjHgdacFuOhspqqF6TVqTgL6GyK+PJ+nLQgiz3HBkKrH0J5c9FhBex7eHq
	 Q+8KQ1SYAeSQXpX14GVvjeODQApanUJuin7j71loSJ50vB8wSvWkIXdAlqQnCTJfin
	 VD2FXdKvpBMlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1A8AE63F2D
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 04:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177121709362.24403.15835192432827200153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60992a154946812190e6e39f221e7b7ae493f4dcfe1674d0c4918c05ff89cf5d
Date: Mon, 16 Feb 2026 04:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771217093
