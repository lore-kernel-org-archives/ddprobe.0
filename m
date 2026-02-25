Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C7DF187346
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 17:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772041494; cv=none; b=cPi9a+tYj9EmzBLtpQL1Xt4kSMRZuz4BbgY2lvsF0PFISlUEtMNfahXGhg5RR60BeQbYDFIkY5fB4jQNNWSx/pW42EMso+/Tk5UV0alvapJOqG+/iYElAkfCJvcEvJDib/eZPeO6zQ9fq0rR678eON0DVZmRKgoHmszGMaMrtj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772041494; c=relaxed/simple;
	bh=2+ejTS+7Hba79PKzGDcsQ5GPscYyEwDKTdComzSccH4=;
	h=To:Subject:From:Message-Id:Date; b=a3he5GJipUullAuKAg1tiFd4+FzakAfXxw5f21s65LaKEwGL4tjnerCv0wsNRO5VYZ0ToR0c5NbEfGjw8syPDpKeaCDblR5eZWiDpgQw2Mb3jHeZBFKPGPkWi7X8IqSwFLf+TnJPL6DNtzfPKCcAtl3BgCccRuIvkUvTfzE5Y7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O3q7J7Fz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O3q7J7Fz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA9C5C19422
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 17:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772041493;
	bh=2+ejTS+7Hba79PKzGDcsQ5GPscYyEwDKTdComzSccH4=;
	h=To:Subject:From:Date:From;
	b=O3q7J7FzAFap650RuRyXqkxYNOJ3nyLnK5NEJREuw6EriNRQdPihqfk2+WlGZvlv4
	 o9Ako7r1/2Ue7yIU1w3FFEFikVkZkRe10U8Fa5V/pr92MMViYFefTLcGuduF7tHiY/
	 TgQ7FRUNNMuTJlyJe6vaV5hd8CiKgBZh6Sd6lr7yIpWHAMqGqlV+kBuZIyuRkmAbtL
	 3K3TOPgIGJYfrSv3762nXWt4XG94dV9KRb/Y/rT52+qfzooSdjD3y7MDjoztWlxF7Y
	 xE15PA03OFRJAGUvONGkHjCvlTWiT14JkcfHXzI9OrhziEjGF668qfPqWpn22WFSAp
	 YuOHan2TWPGHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4B3BFD3776
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 17:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177204149372.9689.14367086674359606818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 966d58348fb0da3935de2f04156e9bb03b64cae9a6305589f26ff057c78882d0
Date: Wed, 25 Feb 2026 17:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772041493
