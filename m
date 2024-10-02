Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E91B1D174F
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727885154; cv=none; b=KPmrkSnGV0lg0c9VaygWRlPvtxPbzM/yO8I5IbC8IXoZgg/5bM3z0z3AnKz3HoEYHu2laYds8N+7NHry0bOvLogQdm5Mvlc7KQzvyljXByHVuN4DKRbRUYKLsuzSMVJvOzNfMCbyfjgnM8PkuNdSWMGQYdDyeAvTmCu98l9k318=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727885154; c=relaxed/simple;
	bh=VLN2FSTWcdvUYKj7amgcyNwBENBfubhE9V3StuPJz64=;
	h=To:Subject:From:Message-Id:Date; b=UcXXQn9YoOYX3mUQ4ewz7q2hZ/yvOe/yIj7sV7AwnuaoK8kvsSvVlKUQ6FbD06akTMh1gA3ZyJzQRgFEeNiVg0/o/mPgzZNzO5vklXOzdXwDbZub+31d/J7ZynicuBnnd5pcFgiid3KxHbJan/J2ofdRMaGE0Vdh23K6MAu+Y0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mdSU/h1A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mdSU/h1A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72D2C4CECE
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727885153;
	bh=VLN2FSTWcdvUYKj7amgcyNwBENBfubhE9V3StuPJz64=;
	h=To:Subject:From:Date:From;
	b=mdSU/h1A6K6O3/dll2TOm0ijVN2WjlXyQadwnT0RiO77mRNzQpHzJFG7/Xg+S2ff0
	 LA24eU0dxUrm+rQCHzwY4a//HbzQ0kr6Pwa0mQKWtaWAnrvOgzGy6mUogA/1zia6HO
	 gI5V7ACpQSJ11yDHXxGGtF4FIggmPQOP/Ivf6vonhRyUQfCmGltIqP57Hn1WrdIFhS
	 w7Zr577a1jnCKMdxgGLhziI9HhF8nHDich6uqzTuZmB1Do+TNWVsxs3TMpikZMcv0N
	 Wc21sQkc51rLc2Xf+NTNsrFjwmoXePYvnwaj3W5TjiXPFP/cnFOgzQjPNzmHypTKgF
	 F9J5eGWo9F/UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9994DCF6D3C
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172788515361.15711.2851928369478673582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 255dd086640ca004754fbb1eb4c156945af7b1a357ca5ec752467c42a12dc77b
Date: Wed, 02 Oct 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727885153
