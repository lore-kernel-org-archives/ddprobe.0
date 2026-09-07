Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 544DC2475CB
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788820234; cv=none; b=YH7vGKl40kHG1qZRmKwcFFzjlmdf1Od06MpbQ9ZdYjKxosKgNzkvTJZi83NyBhiPe0mb1RtrGNRyTK+jOF3P5VrzInI0U4ykpvdxTH4z4aKo/9ojZ8b3XjTQb+1STkvwphinQWvLcNZnhC4CFZJGRPa8NONI5vi4VmmvwlkRswU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788820234; c=relaxed/simple;
	bh=4fHCW9q0MTwvfzRbmCeOYftW4mSrfik0S/ji4NOVtmg=;
	h=To:Subject:From:Message-Id:Date; b=eusiku/26NoL0DImhihHU8FzlVWXZN+O1BchgISqgKssDink34xyGFNViuxmq1PcE8o80f/UR99+0tnmcBOtnZHKXFTd/CwkzwIDX4DtZhxE+vCuBrJ5s9qHGid6PDHfiAF30kuzxqMvSE05dyU0gPRPFtLKFfMPfbyzGZ/tdQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qHExA+TV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qHExA+TV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5C65C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788820233;
	bh=4fHCW9q0MTwvfzRbmCeOYftW4mSrfik0S/ji4NOVtmg=;
	h=To:Subject:From:Date:From;
	b=qHExA+TVimOg/tgcI391ueUSz6n2KUyfuWcEG485X5w6Kzmv/CjVvKwAoL1V60PrN
	 hDxLgC99v/Z3jSMwLh7Pdr5LQpn3LXXk8baVf3OPxJtFUjz4Ti4D6rJ9yBNNKZwCQn
	 PKJ6uu88TAvuFMAByZODLAOnGMFDp21rVhF5GJEgt+l35Sd4+L0MIsYtoee0PMx65n
	 WhpM5BGpkO6lpzQDj6h/d/OsCudbn3eW042S2Ndsq6U0pHggjkhHmv0IjEskken8GI
	 8CeirqYzrSoOiRw3Lw1AaRwpCqMSN5MfChio0NFqhwRDgWtF+NCDAwaGu0WzHtCZDF
	 vMolgGunXEl1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0CD3C79F99
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178882023371.29149.15494130994673966345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 945f51cf3b7a9651735334dd09a991865514ed4316915f02d9192c1713be91fd
Date: Mon, 07 Sep 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788820233
