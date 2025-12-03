Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 258232EC0A2
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 11:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764760374; cv=none; b=iq+uPIRNbaad5GXoFRdN+MZ0c9URstJPEYEYmFddiKJPdQeh6opx/4L1slYSHPiQxZqZBv+KyyxVXYn/ZCqyEPhDegjYNWhbsNowHTLLsiMhgkUwQQha6xsgn2znzk2MIFBFWeXaafhXMcmXfWLi+EO9cKfp/DNkvBJa0r8sYZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764760374; c=relaxed/simple;
	bh=QwcG/8+fupjtfBigb3AgRvUSxFAbVN9Dg2el4YYB2Cs=;
	h=To:Subject:From:Message-Id:Date; b=nZwMt61zmlo2tbFlmN3SN2r4wZTOpykxP+NAtOZU69eQFpX2QINe1IOmO+Cja1bdOsU7bGq32pBEetds1dRIRpNxuahQMAP6YUexHwJl2NEFmsGsB0SXljh4JtSsFfczlb4gMd7j0CwRuHsTuNsAT4XGVrGtEyAF5md35/ZaDgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NxZqt6Tx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NxZqt6Tx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEBCFC4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 11:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764760373;
	bh=QwcG/8+fupjtfBigb3AgRvUSxFAbVN9Dg2el4YYB2Cs=;
	h=To:Subject:From:Date:From;
	b=NxZqt6TxPBwvITLBaS7a5ayNcwFGe1bN92+tzmRsN62T/gMDbXGclLt2NtN7TV3vt
	 0fP5NltyCkcJjCNfd0DQhDSN3jNhUt5E+LU96cBiGwQKu62oHBferUNnwYPfjNZ2m0
	 ssSbKGPWH/08rVXzFCgGdufLSqSg3vNsZtggrq0jsJ4u56856I9MafLVdqSL0Jty0w
	 qcMpjRta2xwZBI2we+G44dvYQzyC43YwOwA15CBNQGdHOxEXzVVQh2/XJHVxAIPeh1
	 oSj/DVCdCCX0/GMZ5ipxT2o2NA7ei37ZSPExNB9gB0CtaO56ax8+clnVJTjwd6pWiW
	 6YCUjaqWBo9jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ABB0D12D42
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 11:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176476037360.32071.3760751382970019656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a706204e8dc26ec48c9be91ff8a221082a9257cd8bcae60e5a88066a6f2b562b
Date: Wed, 03 Dec 2025 11:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764760373
