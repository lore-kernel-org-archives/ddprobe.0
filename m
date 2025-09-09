Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 049682472B1
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757414394; cv=none; b=l7O99KpAr371iC9kcLNXIQ7rfT5giRcAcvSJjlII8bDrVStNORvKuQ53PaUhHTvf+7weIXJxSpYZ3POpmI4qtpyTJGHcrzbwCWpU+AqcmFgM2TXGddZZDfaTMoK3vdUMzFPGn7qqBNBtlzUfFR4OfOGz2AVyEA219N0JRUrotaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757414394; c=relaxed/simple;
	bh=iQ3aJYgvdSjyHgP7pnn2QYfnNqIcO9Mfs7/HrD5Jvf8=;
	h=To:Subject:From:Message-Id:Date; b=LZRAdsovIT+mQVS89HHiTK0gYPsY2y53W1/u5zdHhPyV5pFtX16tjikjG6i9CQ68N/TF/0LPJiU7Nor7R8Ruyms345+Tnj766pGK+sc6clk7GUiFXy/o9QyebZksqKBifFE0YZVg4VCIfV3rjGyUnoDUwzZJbz2YFnh7pnupvNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CZqTaWOJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CZqTaWOJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F5D1C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757414393;
	bh=iQ3aJYgvdSjyHgP7pnn2QYfnNqIcO9Mfs7/HrD5Jvf8=;
	h=To:Subject:From:Date:From;
	b=CZqTaWOJh2K7Ph6xNj1x7p6iA2zEHtu2XlHNLmqMhF61nJwDtEqtU/1UMf5T/okSB
	 I18uTWwrxhkEHfcxQ0GPRJDrDtyO6Zs5Xbzxu8GAdHRvo/BFHZ0FqX3bhiyPvtXgnn
	 4GlL7aDecNvn/yRAMFnxgJ6e83BNr2gY81idSgI0YTtF64OEujg/oeC00zYhUvii6Y
	 fK27WcWC1/7HrdS5vB4Bt6bHFiSovlQ4zbxNmL3lmUag2l92irlmRKghLKMZc0ibrN
	 r13ynd+t6rT0UkimFTDmmIbkcZSdI1b4ea0XRNSS32fOc3kHO+/ce690LbzIIDPUrh
	 mAJC/PdMoSQ6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EF1CAC583
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175741439358.19676.9301710548295386375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a3efb4f39eb7c9b9f38a38a0caa3934c0ee4108c2b03e6f2926823ccd4a1884
Date: Tue, 09 Sep 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757414393
