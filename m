Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0074A32
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 00:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766534634; cv=none; b=rhn0Pwz5ncNyklrI2nTEK0kHOGR6wPz9Ioo7uYtYLrXglUK61XX9MP4ZURJpzSlJDrOYbiNUFN83xh+x+N2eWIvjdSJBipqcDsGb1zoIhxw1MHsispozQOATN85NwKPmgz8RAEB5pDtxjJxMk7oSE5+xXZNqnLAdjax7Qhulm/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766534634; c=relaxed/simple;
	bh=UldG2TqB1ZxXpokO+0UqBIuY5p6pgxcesCtdZLwJupQ=;
	h=To:Subject:From:Message-Id:Date; b=jME05VPzFAjyxamUZQJzy4YTM+N5quqR3xsoEYIxrRVuZvy+qxk4slRHux4jpiWIozJqvo0eAOwlkXdYidXZATu4NS7Tatl2+K5a/f0lUUtXhMQQrKVAsjxbRdSN2LKJvlbxrZNJNJVZbSZxnPIo8Z9l4rX12/VRhrTPt0v4HMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xj2OG+/8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xj2OG+/8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4AE4C113D0
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 00:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766534633;
	bh=UldG2TqB1ZxXpokO+0UqBIuY5p6pgxcesCtdZLwJupQ=;
	h=To:Subject:From:Date:From;
	b=Xj2OG+/8EdDMlItIa8v9L43m82mxcL6ECtSX8coBUkNDsKgEB8XtUPDEjvct4dPDs
	 F+i/mhAGFKex6f2p5TPllTw7KJXGh1+B7c94ip/Gfil6p0vjcUd5dK+BcJ+lZZO6Fg
	 /2NA20jN3mE2AC0H5YwPDUNaIOp56onbD3nF31p9a7cyQs3zJdUlsJV0KIIvivZmAc
	 OiKv969fzaCBt5IGTjrQSMn122+xE9fbdasnLwYtP5WO3ViedkcgabzLuHi1uBdcKM
	 IbtmHOb2V8bmI7cWShvxwB3CNv0uwZggArDSNOzatWPMkpvDUIEAlE17WfHBrq4hJC
	 5MenBgcpuu8fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935DFE748FC
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 00:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176653463358.10582.6725192857193617175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 467a4010084d331e69fd8353129b7ba686645232d7a6657031c25c5afb6fe2ca
Date: Wed, 24 Dec 2025 00:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766534633
