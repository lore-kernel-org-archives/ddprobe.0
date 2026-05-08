Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19733363C5B
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 23:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778284654; cv=none; b=Bjb9uuMp4RltTeQnjiAxt+WF/9thD1WLrHitYTxR/CtTXzGnfcH+4QFEMIyl1Motixe+8aqxq/Z/dPS5pKLHSdWskWyo+3c9ympXYPQf+BAj80VjkZPWlQSwxoNM6kivQRVWBwOXdLB4JHrOPLHUfm0DZk4voRfZNoMhpZllO1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778284654; c=relaxed/simple;
	bh=CGnygUB8xX9wQojow3erX6X+rAL90zxJK4EnmTq3Hi8=;
	h=To:Subject:From:Message-Id:Date; b=n2gXZaWrltv9O9CSaiCxWdVa03Tj1jeEMp7BgsnwS9DoKxtmTBGVZBEA8+0dhH+tyREYYBP46eCf38BskQWixcfr7CdBJnPCo9WC86niiYSPvQwp19U5VHAw+v74MO0ibMKWpmLVeZzjJfCyIproVR0i1vRFcfO3agHsEHapE+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b0CosZNC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b0CosZNC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBC16C2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 23:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778284653;
	bh=CGnygUB8xX9wQojow3erX6X+rAL90zxJK4EnmTq3Hi8=;
	h=To:Subject:From:Date:From;
	b=b0CosZNCpEf4sVlImxM5mNV4Fi0TZtsBOOAlNkKeCBXf6abe6DKJnv5est/I8c+gO
	 zqp0uRB5f4IcQJfdZIJhxhgJLq1vYFIOD1W5x8AfiT4FsKkU3MigOOSOT1djkL1KsD
	 cqcpQJCFkSpMLcmhMehgEU4431Cygs+f1BeBkJVOBIUI973OtKcxpjlzP++wZQvCwg
	 aHE3tFC/9rnGob8KydBIun+ErDvit6e9hfOq3UXW+fwXDZgbw8QjAU4mFN+Iz9JZ7f
	 fQ5p9aGu9Dfr1jHCZRP8bxDIevfnCpiJih651/zhH9r3VZaYVdhoGCm3mbUcXTf9vs
	 RzWGXhRNaOaZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD905CD3445
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 23:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177828465368.24627.1544235774068351339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f9a8f45465c01e6c776b757eaae222b0b37d168fa54e613a5240c445aaccd01
Date: Fri, 08 May 2026 23:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778284653
