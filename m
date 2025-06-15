Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27879265CCC
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749982794; cv=none; b=TV0SWccIGN/BUNpK32ogOVENXqkO1YCz2Q/YNd9nFSaR5chB9MGMh7olRDy3rioYb4wx5Ep8z4hQIwQhmGBv/KCv2McgVKzOfOHaQAojrixDZ+xvsyYqCg4mo6TsD/fhr76NhhwxlFFNbk+OYx9ZUql+YymmouCdiSCOiW/3lww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749982794; c=relaxed/simple;
	bh=MKGp2EDJJTxVxwpAuo6cXGMO+3l65oB6jwpG5ar73Ws=;
	h=To:Subject:From:Message-Id:Date; b=LlWEX9e2LAIDdbQTbRl6B3lPTQqqeL8mBvMCBfu6blftyccdpL/BHpXklhxvpRg1RS0U4xpiP2Rin+qWFutoHdnmR+GdmLCkAnHj4yVgEkvDWmPrN4R8bhnhw+jij6PC9GWkEtNowBhuIjtIU6OjCt6GOQeNgZMJQWM601oB6FE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JQx5nSJ5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JQx5nSJ5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A75B9C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749982793;
	bh=MKGp2EDJJTxVxwpAuo6cXGMO+3l65oB6jwpG5ar73Ws=;
	h=To:Subject:From:Date:From;
	b=JQx5nSJ5c+LFL4h5fKdU3qRhXuJ8LgxitR/kFLZAh9Z0ZbY15lvEIFMoETxP1X85C
	 XofeqZiP1dp4YehpfCFeWXyECVYBTqyfoOKnjIe9gooPsFSyK77hvAOwUZ/xaLpshN
	 zB5BNDPobzHrI0zqVSURx3oauy2Bk9rHmCS4akgPv/RTupliHWd34W5V8LqH/YCBhj
	 Si/HaQ72d4WHd7Nbl/ZAkwBggJ91NpMNxQgUvWXyj68jw+Ot0eBQUTvzVy1dC7ijUr
	 7S1MapH43mzUV8jxTnqoDfFxYLh4Q231BzFBfdo8Q65dqGH3jUkH1vNqKptBXTJ15O
	 /tLJMWKSrPbdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9120CC61CE8
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174998279358.6465.14878520623162575379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fcc44c44cbb4dd3ad48311c25717d7a2a33eab61b95f82d112e8043261745bd
Date: Sun, 15 Jun 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749982793
