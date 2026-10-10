Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65E9A2BEC52
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791613234; cv=none; b=cfiBQLSE87hLTuMuh+UvjD8nIHEV2pmHprOn6wLlwHFQgmgc+m500Q42hkBHX7Xo1r439V3if9BDENLnmNJtEDC9fE/vTRlAAsF6Zpn/sGYslXQnuzCMULmnFFhyJmRU6N7qHBGEbsQRI9H0+CeH5gvo4YZgXyq7UWNp6hYWfiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791613234; c=relaxed/simple;
	bh=tXy7+EDuUpmpILuIQd41TBQi8gAw+Z804dpQGDZe144=;
	h=To:Subject:From:Message-Id:Date; b=aC3P04BEWxV7HJR1Qn6sye1QoRLhUFy3qSuv7IMRPPm+eIX9dc19IfLtJx0GXyvoDIK0uqj/A7EboPLLRr1HAJxtKSUeXlLAJNGZvqESCHaDI7C/ftonukTAjD2Vr5MerxW/ykHKFf4GBn+kFsaElz/mHiSm7Moc5/SUZS7gNME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mKBrCz28; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mKBrCz28"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAC5EC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791613234;
	bh=tXy7+EDuUpmpILuIQd41TBQi8gAw+Z804dpQGDZe144=;
	h=To:Subject:From:Date:From;
	b=mKBrCz28zNa2M6H0HD2ije60jlZ+5SUexmUi8YJOeQTXbZxPl/Xwk6BDQlkl2K8jx
	 Xm6VbimVEmz2OJvzezeBgigfWTD9NP3CRQD9RAfz50wpRQ9koHBJ3HA6MBMPczIHnY
	 CoJkJHqN1ElYeFivcXqtLix4rVFANF8t17d4bdpT7aJVSsAie6fEITBZwD29lzhNPP
	 epzt9jCMg+4cU8L3YLZlfOZLGKsUdd2TVZrE5qb0IMtbiJA3ZkUtdpRg9UNhZ+hIxB
	 n3b75OSafcZmJ8CWKmoHlvsjBv8lt6wHLNYKMHEYqc/FjQllRr8935pcE3qo7Qv0oj
	 dQX79ZqTZv4sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2141CA9EBE
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179161323369.9417.8502540339174076238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f373894b87eaf5bb0d8dbe582644880e9465d73407a229e889ba0b76b5412595
Date: Sat, 10 Oct 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791613233
