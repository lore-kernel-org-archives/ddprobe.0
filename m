Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E538C20F079
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 03:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765422774; cv=none; b=QJiJbTS+CDo+zoPpAjCJcmtCJS6skHAiQvTQDg0TgD5HSdJRFHtnu9u79Md1A1w1VmL0Vy6WiFJ06prWxw8RGtD0WtP69jpTCZV8cvpt8wxuASJVpAYyogLW8zH80wcSyiXYHlimizbvoKr0ThpkldjWBW1Xppgb5pV6Oe/jqrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765422774; c=relaxed/simple;
	bh=LySKNWIG74I3l89WouTqFgjPlcCr+GhBc3bHBza6yxk=;
	h=To:Subject:From:Message-Id:Date; b=O6q5me+CZQmCmThCpKXCPr2Xo91yLIJjEKuuvgSvbbU/2B0OP8/EHXUhSig3YrtFToobqDvOFyJo3vwW8TEexqAhHw/Zlt+SeL/ZRjr2vTchhojGkftY/wM39FLmnOiw+4LH1uCSmAxAGZEY3XMNoPCryOETiBZT5rTtWG4RydU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h91a6A0+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h91a6A0+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBFBBC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 03:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765422773;
	bh=LySKNWIG74I3l89WouTqFgjPlcCr+GhBc3bHBza6yxk=;
	h=To:Subject:From:Date:From;
	b=h91a6A0+hSYrNUZ6BENUdZ5ARJF71qvJSu1KDwGIEuQ98UdDUhKMbPvJmGZK5tz98
	 GHuIJHvouY+hoUrShjmcW6CnB8e58I9PWcNHrCvv1cLVRrmnWtijQgq35kja6yMWNh
	 gDG/7YQNh++ZCdSWFGdNXRX8GochCRCtehnFOIiq1eIQz5ffjqujgneLwbSOgQVtSV
	 KIeVMTgumJnybuAaNJvQLRxQplaXw921l9APZOVQ92gG2zEbAVFst8ejYhqtYjY1Wc
	 RwKr9xwkqmOgbQtUAiwk0kEzILLcA1VncLGn+Wfnvqk5iUQ7sMrgiG8Qve+joBbTDb
	 YW+nqFHPQ9wxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CDA0D3E78A
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 03:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176542277360.20450.1075723147294908942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a1951b8998f6c2e22781dc50f4ab07d2f70b2cee5640df8ef2fb8bc05fb67ae
Date: Thu, 11 Dec 2025 03:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765422773
