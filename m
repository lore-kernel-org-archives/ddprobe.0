Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2897A2D8DC8
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751976594; cv=none; b=Q8pM+dOvs6L1TvVWmP5H14ss/tWJ7V1YEYAI1Li+JmHdTy2LJXsjVOrptWVLuxeJjWBRDkfnxfxUNyTmnu7bfc+YpR6WxdPB6C/1TDV5J9mr71xGg2PJye8IU4yAVgCkJNdEAWdjsGn8pNPwbKkmSuOGQo93DMnJc1W47n0I3RY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751976594; c=relaxed/simple;
	bh=oc02eGh7w2+xzHvmNyuHHQK/1RSDXNEzyMuQ80OGguo=;
	h=To:Subject:From:Message-Id:Date; b=CyjE17yqY6/lPjBIdRklip6Nhetpa5bbtxafUr9LgCxoUrlKA9AjVd+JeTz1nae84pcLOE6xIwRYYB05R3+MMtY+8ryO13ukoTnLmVCVbQc1UJVF4rC+OBbwoQSCf4XNOPULeckj3vmubKt5ax5rV/AOj9h/sPop5U9aCEpkxZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gv+5KQdn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gv+5KQdn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01BAC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751976593;
	bh=oc02eGh7w2+xzHvmNyuHHQK/1RSDXNEzyMuQ80OGguo=;
	h=To:Subject:From:Date:From;
	b=gv+5KQdneRO467Eu2+9CZJ7Qon6w8UUf92ol6QINzaN+gY/WMwm9OGRgmHrK9wyja
	 SIiE8WFe+33mU+npOigRJB5RCNQeNHz5o0THYw9/NFraZBjeCtciyX5E1MlNA+0gMA
	 dOrALYwf/MuHBPTtO7K4rgBq7Gcb0DS+bYaCHnjQtfmnLh5xQwYqrieg2Zl6jV4Xlr
	 LXGmV+yAEE5Ffq8Mh/kyrTFgIauUm8PByoQq2QqL8ptjOcMesSsWKB/txosongZzps
	 NLbmWrtnncsdjyjz+ZKRme0RZuOt9Zl05K4mbUjFWXan3Nw3hJKV7w1jQLRjkaIR0A
	 gpeGysjKn10sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED09C83F0A
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175197659357.18365.2829943621151977041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5901c01681259021592fe2d8424fa80f0f9bc9d060fbd82bb465fac33da9d2fd
Date: Tue, 08 Jul 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751976593
