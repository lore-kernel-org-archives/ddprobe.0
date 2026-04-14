Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 170EB359A8D
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 11:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776166054; cv=none; b=dHUnZMOICR5WdbkWXtkeGENTaV3VZ058WNlrJs7wdL+Q/XKnjtJ1sBc0PHwONXCg93nkKTIcGWsratnx4JVBGmYPtQ7Fu0ai56woLtTwpbPVosB92CgTQjG261P/GAfgdkTk4N2NSYNe6krGlavuZOXfqHa1Xg3i94wIndjt3q4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776166054; c=relaxed/simple;
	bh=T2TThzLugf/AN18FxOY1sUnoYRSm7Mmx8KgRUy5zOu8=;
	h=To:Subject:From:Message-Id:Date; b=osgyGlapRAvBk3ehf0d3aJ/qQc2TrWNME8FHmbEi+f7X826jY0RDvmq05DSksUyH6G1bJ6CUt4trUuoPSZqyGIUo/yxDvVRE2y3Ak7cSuIfRdY5gsaLoIzf5WA0mWIJ7JzxLWql1lOICs7K1NBa3NoU8a+EbQbu+G6BYQUJoV+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZuA28Hsj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZuA28Hsj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE081C19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 11:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776166053;
	bh=T2TThzLugf/AN18FxOY1sUnoYRSm7Mmx8KgRUy5zOu8=;
	h=To:Subject:From:Date:From;
	b=ZuA28Hsjw8JNPANt8nOaniYPzGM3YxUNCN/uYZlVVqo6zxwfeH/HGrpPFro+wpy/r
	 hL7OOVt8PF68Qs4igm/0IEMaskN/8DshcjRlJfKL+fl/duoU+j8SMHG4pxSqJ3Zd8/
	 pNIrcc4aIQGpJU4FQ4tnuEwTEtzZaMph3kBS+ThoH13SuuQInkox/Big5inYakO7WX
	 pIAFaCaS2JVBRxiym3F9tp78l6WzweCSwQ8VYFDvff1dfh52PQWCvyrrM0GW62FvRq
	 dQ+7VxW6a+UA69y346y9iPcPC3B9L8a49zCitb+LWS0X6R2xdZAzzShMZlBiHqc0fB
	 SJmOa24pWs/AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5A1F9D0C2
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 11:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177616605368.30314.5443571173868310194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39b8af9319ec617c2022b627c8725ae0f0dbfe4dc6d7fbb996a347869a8e20a3
Date: Tue, 14 Apr 2026 11:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776166053
