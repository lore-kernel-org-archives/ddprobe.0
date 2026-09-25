Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D0BB3B840B
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790342434; cv=none; b=ITMSYzZ8QenW89j8Gb3gWDmYqfpASJUTEv/lj8bhBh2HeLCPk9M5dyv8UFJBhXX9floQutizzlSh/WXZwBSsBFPMv+OTk77szysxMKZ3jetsVYMgd8HBgiFuC9VUhWtrDthywzCQ+VyK3jmh5zI2Vn8ibVJyxM+T+cho6vrmuNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790342434; c=relaxed/simple;
	bh=8+mVPHvzfOd6SHj+Jd76Tb/IJzD99GrvMPthUi0WoMg=;
	h=To:Subject:From:Message-Id:Date; b=SfwcNdb8UTOW1kXOKzVKpQALsjHGGgzGPusKZed1Ia8mblaJE4Toa0ENFFbWlfS2KxxplXdTWGryQqmvYnoT7Nn3H5SM4A1GGxLaw/ZD/O/+IbniOPOU187faygRRFG64Wqs3xfLe9GVNfuFg4oc9xRGo/fTWWVHZ4Knz+viWbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XayWisom; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XayWisom"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6D3CC2BCF6
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790342433;
	bh=8+mVPHvzfOd6SHj+Jd76Tb/IJzD99GrvMPthUi0WoMg=;
	h=To:Subject:From:Date:From;
	b=XayWisompoQjRlmENl7uHx44Iwrnok7nud+TjfED2XrXaKWJH4xA+VbqHfbJk9bq9
	 VKeTsl/8XKzrUWdx6H01Yn4mTDdcoiaqksIiJ3Sw1nWkLAdzTTO9nf0TgYCBvCf9YY
	 QcbR9eEiOqlHVo0YQUuXIubVtyFugy0W8wBl9+E4W9Onzvh3ZgWDI0e5toQg/XXpTQ
	 lrdQ37SCSxoa5aH3HDfnloATWlRr2GxkihTt9ZDh04fw/b0+ZdLhuNtOOxtrLPYUG1
	 HwSE4lzziGZ6p2KsoxrDTKMjoCX7ecfZ7Cr+xhXFhk6Gax7oFGfDHnU79S7YQTqZkJ
	 0sKeVgRyUUpuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1BEEC9830D
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179034243371.19387.14582272445950226572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f959ecde69726e908e2d2cf13e781567a7aefc8713fb237d5c9dd55d2871a43
Date: Fri, 25 Sep 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790342433
