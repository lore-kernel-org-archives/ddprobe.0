Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EFE4279DCD
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758647994; cv=none; b=hhwej6rbKN0YxHBqXrgKBn7gV+qq50s8Ngt2YuUi28vnoLAYbU3WIZVCsj2ctivHiDew1Pze9KnTXsZHaWbg1bOE0fPW5zyYoI3SaXrANAsyrXq7VhBxpZSbWPdXPFWO51HKY5KXfDtLC92mmkvq7J+FQDbFN1DuRV9LxRb8Mis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758647994; c=relaxed/simple;
	bh=8v0U1Us5eW7wmVyXYStFhXyy54mKxF039N+8I9CDtck=;
	h=To:Subject:From:Message-Id:Date; b=X38d4bqOPS+StrKbF1b9b8W/xN0pw/tHcSXvu8eCNdBGsC+xCW88VOQMJ7/3oHBJsUdNV/YAWFieXt86x5F5T16/rg9qSNUTz1ApgUFXSgVfWI/MHX7KmXTF4Q2ACX3OUcR1STfFnzqRWHqGdgLPGJ/DXiv8vnMLDL4RL/JH7GI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BfXK+gQo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BfXK+gQo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFB8C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758647993;
	bh=8v0U1Us5eW7wmVyXYStFhXyy54mKxF039N+8I9CDtck=;
	h=To:Subject:From:Date:From;
	b=BfXK+gQoQw9KGUFj516oHZuQBGFoIeacVlNagIGkbe6vpcacvmXE9IiaGeRDxfGeh
	 yxuHvMuiZE5IJBa7gTgn7IPdzEeurL7LaOfP4u5qc6k1B2+vYOppW+iXWDFFfNqO0y
	 8HsZSs+ylNN2ycsevFCzGXSx/E8fXo053xKvWobeqK2BQm30vjmgrJSIIOS3cPgbAE
	 LGL4fj1rRtwL6vypf4/BUbZZvzW905G5nJZZ/+VoeYY1qsKjBcM34vD0ErbMr5iVXm
	 7IyY0++NpSboxlLp/LtP/tRCYaS3zNJ5GGShia6jmWdAYfcQbsZHtn47ibcN6WnoxI
	 LOcUIFnRIHd1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F483CAC5A5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175864799357.20342.1093911173446305820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5277f2e84cefb85e036d0ca637a4cebaf5fed3392f6df9401c624670691e241f
Date: Tue, 23 Sep 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758647993
