Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 433EC439F9D
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785887434; cv=none; b=tPXq+IkMVy3nIY0sV1JCzBRRnl4HczSC2uCWkOU+SpcCs0aEcGf0JetAEWV/BY3+4DS7FaV2tSYJaQNXNFdrLO6+NnDRxxLVelYmyjS79AaIv2+tZptaEZbUrp9HkzV94lrJpB/iB1QBkYBWqZ5m91zTW0VMbobdwOAUIhft4d4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785887434; c=relaxed/simple;
	bh=RAt70sfhyWhWyBEgNeN7EuFolB4OLWXNdk2Kx83sLE4=;
	h=To:Subject:From:Message-Id:Date; b=GA/iIq3RyMSX5KDY1cppZh96EWgEbcmrDDStneP87gM/bh+fNyfWZv6A0U565jO+rS6fxxJa/XQiYbWziRLU0FuXnZS0ScpuKWjL/yQEaJtVApdPdkLfxgSm/8M8gXke6tGIi00j7n1W5vLsknNbs54/IYTTxzb2qPt9ANWc2wE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u90SelJj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u90SelJj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDEB8C2BCF6
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785887433;
	bh=RAt70sfhyWhWyBEgNeN7EuFolB4OLWXNdk2Kx83sLE4=;
	h=To:Subject:From:Date:From;
	b=u90SelJjdWRTTzHcgcO25oSEqzdoKMQZRpzGKGTIg/RrEB90olXnxmfAZIowWV3h8
	 0HqUeBUe4xAjcUE1lS4dGSFAYkcJjFcHhyVDV8v1OJVymsRmDgZ6O0vyn/7Q58sea2
	 lJp1GxLjQLVdcTgiDCj1J1bOCQ6dJhFWTGafZp/2+28ulVTEnqm0ZulfLos5+4suFa
	 v07P0ncZufZm2SuLYjU7245fmGFFLfza8jAty0C2GwKRR8zkMkfKpBrm4k+Yllfsj8
	 VRnmjOfo2NUYFOrfmhMHN5xNICS7Xmm2aUFZydq73aNC2BuSrZJNaPSjnWxzBGgah9
	 cyCYlSuxeX1nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA226C55184
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178588743368.8630.836263762206630766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 284074ca6c4439f5968d05f93b609963f67163e3bb64145ee6c6d1c8b7b0768e
Date: Tue, 04 Aug 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785887433
