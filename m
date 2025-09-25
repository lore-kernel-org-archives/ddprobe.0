Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34CC723B0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758826794; cv=none; b=lhj43rfulem6j6gHhSAclnQmMLGyK+F0hnH2t7rJz1VnRZLqpEZNhoX24YkAE1QQ4GfQCrhrrb54HDhDJjDhNW/uXKu/wDMxeLDl296gW3pz9mXvUZRWdEjL6FvAfKwunzPc6uhqchU3LsKnn5VJavbFUNTLin7SHdSJ/CFoiYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758826794; c=relaxed/simple;
	bh=BYV5Wh7ztAyuhb+DbDDPU/mB3NQiv4UkQPZ+dV3kNXg=;
	h=To:Subject:From:Message-Id:Date; b=UOzmM+95iIYS3SsqUQq2FLxgQfiPA5leNpuE+wTFmwkZuoihBOlsTEB27bkqctRCZN3QxMcsqQ6COm16igpoki/PtB7Umenx33rS5TKFgC9lCdqK0RqP04rMZzFLb1zstouFKI2GpWzwaaAVmHLUJZUQmWPPPJHWHjqEajihPCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RQspI+Gw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RQspI+Gw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABF25C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758826793;
	bh=BYV5Wh7ztAyuhb+DbDDPU/mB3NQiv4UkQPZ+dV3kNXg=;
	h=To:Subject:From:Date:From;
	b=RQspI+Gwj9xDBpnibXoER4TVrC0UOkPEvr2FVe1d1f9kHO4ryGirmBtde3Ut5hjM/
	 yr52RYOq7KKk48ks1xBIxrrWBYnnKHa5sX2eQ3ocY1rytxnA2Mv9LQnj9s8aJYEX+M
	 kbDxbHCcwLEe2z0nIZ4A0gt57xUEKzU2WSQGbprpnzipYBRTKu5+ONQZqutyH8mgTt
	 eWLJImqlR6D11pzJgfG1w3y7jCZ49UyyuWBAXuQCXyOgBAbfyXvBG7QhxSs4SXz5IO
	 ikX/3b7FBRcplgV2C/TglW68gMKW3nwW0o89wTVzhGdAoFsyevRmwrTbqaTxpTU6xo
	 VXIg//djdZwCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A08CAC5BA
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175882679359.27005.16037740568454490780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe59a25f4977866350300924f98d0d961ecc9c04b1ba4ba3bac0ca139e5f71f5
Date: Thu, 25 Sep 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758826793
