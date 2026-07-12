Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 449F33A1DB
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 02:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783822114; cv=none; b=PIrIUx8aFyk45EYfCzEO+cdsABG9hnRLvLVMmVoTSmjyqmCJOixAlU8XKH50x7BQmYGiixzksXNuuwzxl+Na+gs2KxBz43xHPv3q29KYtb5hIXOUN8kYUMA9ZiN+w9d2Jp22t3c6BOJK4iFNpRGj1K05SrFuFMIATq2cMjYks4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783822114; c=relaxed/simple;
	bh=RIpWho9cAh57TR+UYw2otPJazCJpX5siaCT9XK1bxv4=;
	h=To:Subject:From:Message-Id:Date; b=cgdKFOb9+glCJYTCAvOLIrYvLEiHyk+GDmCEkf6Z3qHgPzvYIMn6ABZVfsuSQfbnied+gJyUvxR9EqbaJatURmPnZVt1iGMGwdcv9u7qyVAW8oJSX2iq1awY9jXKnGRkkJcnzw4OHH8Adh6lFLS1fcdr3ZfSZKwz769WWOSrogw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mW3QLVn4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mW3QLVn4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE881C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 02:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783822113;
	bh=RIpWho9cAh57TR+UYw2otPJazCJpX5siaCT9XK1bxv4=;
	h=To:Subject:From:Date:From;
	b=mW3QLVn4XRxj+Kqf/++jfBtJLJ7soANsDe64qQYAfHWD7qmR/XJMradFF8rAFjUuT
	 EP2XfpmtoTCkLcWdlWxSXzbJ5/sReilIeFHmVu8KACcut23HehPPp1NyfOqsKN5DCv
	 JgfDnattY7LhgFuet2Zf0WyL0T8Z0ZcYu/+Ku+1SWH1HkuNeY61NQhsqMwbVK0nfRB
	 21UNb8RZKKE+eNalF4GEzx21AE/DzCnHBryhxSAIyi4jqwlPMHdRwBAZ/BTYpds8MR
	 3StydU9OXcsbLw5lJ5q3M4LTlGd+7iAOYE5pTC+H5VI87mSBASCb8yQUGELCqBYU+c
	 jvF5bUnlzO+rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB078C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 02:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178382211368.10674.5006598123581707058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bd5319d95e5dfaacecad6eee547c03d8d0a12ebdbf476245d65a2dfad96e1bb
Date: Sun, 12 Jul 2026 02:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783822113
