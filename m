Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 424473C6A51
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 16:35:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775234134; cv=none; b=kyVCu53KlVwq+24Fe3rdKN3vcDymWsMZR0y5OTFOkAHds0M1TfhqRKTRfIiF6PyyDpxFhuJQGTxWkm5p1xFeThlQ7/6lzByD9uY2ZVZ0l9LsyuB3SEz3J0bl44d48PYBVNeleSmr+8Yy6oYwzhDMEgLcKfmeceDeAAWTxeVNoEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775234134; c=relaxed/simple;
	bh=uL/Eijp5NUYJWz3V3Ed/CN174/9jER0kJEWDEyobw18=;
	h=To:Subject:From:Message-Id:Date; b=pDiM8KGxJiZ87nJ3Oe6mTNooOCQhRlvm815JiZ5lQsaPx8Zl5B9KebUXeWmaGQzEAWBgadlDn8zX817T2DPlKswBOVls9yb12xG15tU+8Jx3zbpjMTR7Bnre0zBRgbw73IV9hrQXKjofgMybE3SH5Fk3bToRwblxNBJG5lYmVmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=auejjND1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="auejjND1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D30D1C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 16:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775234133;
	bh=uL/Eijp5NUYJWz3V3Ed/CN174/9jER0kJEWDEyobw18=;
	h=To:Subject:From:Date:From;
	b=auejjND1Hyy904akTpHSf6ICqUX3300u+j2o9i0/jsxsvE+f5/hJ13f7IH1PPEuPt
	 4Q3AEGYW+55qjsSTmmWcY0rLW4BiTNXWtwafIF7Zy3K9DhWuW3z+2InZ9iBtuszOC4
	 3Um+/lEFafjglawOjyIs8GV+E9p9xhHZqLdnU4iH1JMTMQ0fMy8YZf1uNlWRvQnrOQ
	 SgFZ77SqLVtg+r7Qn0lAIBlLZIAxQK97Sh1x4/AMReqpofsCYku3YuSotJ1dPhsllL
	 GJ6gmGSdrwFSb3mMttUvWnP+IYNLfm7z9NZbxAsawEnM32zQi/3XMQsjlT39O9/HPH
	 azmPeK0y9V3Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF54BE8537A
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 16:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177523413371.18212.7038338578586206320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e9971833f33693c0bfbf4cd0a369413bec365a49f2ad34065a7e2a119b97f5a
Date: Fri, 03 Apr 2026 16:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775234133
