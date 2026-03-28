Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DBB51367
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 03:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774667094; cv=none; b=r9VevW13SfvAyfTJK36Ta4ldi8CcRa/wEVw3vdTNOZhbhMbPs4i+pPKnHOdzecAmtcNoHEIOkVPMctB7zZER//SI3cUajzwJmzLV5EEAidynjckIbEwcWIXAl/7lr90in8f0k7DM7O4NkaGySBNe5x8QQ3603uDgP2YHGczVLLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774667094; c=relaxed/simple;
	bh=BE1VNbucAEAG6xx7rghwqiB14ZveEO/bVoduZ4wmV8k=;
	h=To:Subject:From:Message-Id:Date; b=qP3293FOn/FhKdKPa3LhBnDoK+aYVT1df31zJWpuWeAD8UsJZdj7V5glQUtRHFATkriWtti70gV6QFc9HuhNxRNBC5oGVMUkBUpp44Bea4BUjN6NOPQl+58UspRqkKABhklGABh4c+5BkwgC7KmU/eUM39ZHgojaFUwmsH3M1xM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mdb1X6Se; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mdb1X6Se"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA3F7C19423
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 03:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774667093;
	bh=BE1VNbucAEAG6xx7rghwqiB14ZveEO/bVoduZ4wmV8k=;
	h=To:Subject:From:Date:From;
	b=mdb1X6SeeDPHs4jLWAmPegvT10npIXNcoKC5bjEQtKpteEEyAWjxaDAcoJQDb/mYm
	 ZZmUpXcq5sXx31621STJqBSD/02JIZoI93awe6gAXcx+f/X4p85nSOjfATQfSYQmpi
	 pVaLoRT5nc0mvYSATfYzLI9geQEQmRuFIhUaIkw6XcifCT9COUgTpOtUs9LMryu4yM
	 a1Pzh6iYbvEfJTTbhBee7kUal1RNK058Rbnt/Z/wi6i8+K6d0ZHgr8f22xINgcWShZ
	 tN9RGU8KzEb67N7WkgkPHjSmnjNnoJJ36HTNF/5vBJuw8G1Lv7nfUBIj98sQ5rhRwc
	 dsSHVrOUBX4+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9636A10F3DC8
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 03:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177466709360.20819.12892186625541775986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dc90f7d57dc7fec4e73fb3680f6ead2085810fc80d314f2b2218be6099491b9
Date: Sat, 28 Mar 2026 03:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774667093
