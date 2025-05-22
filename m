Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3684728C2B0
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747924194; cv=none; b=H+naim061DnJNBZ6y1krnzPpuMD4Ut/DEcT6B6/d/FgLX7iCvtnbFr5np1gBGqD+vr376DC9oGQ/CmMu4J0mvluEGOcaGNjF8fL31I6T2azjo4ra8pTyLnXFqGQmwaxWe3RQFE7duBqzMR2tXkdZgM7/jtpk8LeDfaR1xFum+5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747924194; c=relaxed/simple;
	bh=jkEX4B4mUNhcl6uswGppMWYuy4gxC0lyjQoieuhZQz8=;
	h=To:Subject:From:Message-Id:Date; b=C5GGQLder3OxiPQMjuS/evrPJvmig/IiIWsL6lVpOu5Rmpk7IdIh8l0E86uOBsoGV5ZgKElOk77MC/bEZPj3nhAe6v4CT4E9wBYwe8swIxDwQ4P+qXW1T6dcjHhX+sus9pLVdSAoz9e57619EmbTSW8nFnrOZFlpkgKwnZ0qZhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rukxDXJl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rukxDXJl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0908C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747924193;
	bh=jkEX4B4mUNhcl6uswGppMWYuy4gxC0lyjQoieuhZQz8=;
	h=To:Subject:From:Date:From;
	b=rukxDXJl06F12cOCuWOZASCALC7Mp27ZXOSVFYlhLllQ6mH6QQ5wZK6GKK4pqGr17
	 MjePr0bRmvGpmuNIdNB9VJ7gAmOXqmcYh8xA2vjZ1uPrGP95nae7iysxD/vOveTJxN
	 eayn/iAJW45hQSboUa+/4g2zvi4d6ozbHlz1wXc1nWOPNvKmtLWCeekAyLo91gvPPB
	 qE+QOKV8r3aCzt6CtVoan7soudkUchb2XDwlJq+qUqgf2oiSN+Q8/9nUTixB2pqCIA
	 CESXPzqiVvLDwK+VQ3g0vcjvUQ/BLHTsa73JXo7oQ9NlXjxeoUQ1J93mMxBvxuueb6
	 4QkiW4snL4Z7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDE2C54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174792419357.2064.11990697271055211231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebc82091256590cf00f0699036058c1be288d219a71d532eaa210a36309e77d4
Date: Thu, 22 May 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747924193
