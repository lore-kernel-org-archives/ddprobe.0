Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E6613C81B6
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 06:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782457054; cv=none; b=IfsM4wHrdIXeWu4x1qwRczsXwsXGAUF7oA4mKIUIdKEs2c9+h+2aSE6ZPTnp6LU+ijQkgHnB9+nwtYsdJtHoFnGCRmHhDvgLXuB3c+mfLnkJo1AbSxJg0zK5WXqTa0iFkGyw+sN8lTScQeIj5TGwf+MWeJQjqyhEZdmtM25zxZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782457054; c=relaxed/simple;
	bh=LMsqwLYcOOa+l4bHSuf8FtxmX/ozszTmLW+qOLQmaDA=;
	h=To:Subject:From:Message-Id:Date; b=nPDOZ2bRjYWiT1gU+zCVgYYL0RVuCdLZRE5qqcQhKS/TBGDYs72eRG2iMSGJ2OE1LrkwlgoymYxcrCjGFBdD6zdM1d51fse2VAxnAWL/IliAT7B4+hAKghpl5falGX2K/QlFEFr4I5lAIW6maZfbCx2r+yNAM2Bvfug+FWrajHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J5fAe2q8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J5fAe2q8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4C47C19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 06:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782457053;
	bh=LMsqwLYcOOa+l4bHSuf8FtxmX/ozszTmLW+qOLQmaDA=;
	h=To:Subject:From:Date:From;
	b=J5fAe2q82QFPBRBuDQ4VLZYcBZWca5OhglKhMeHrPJr4//av4AI17BC0Iwa8j7TMF
	 HXw403V0dtbHuxHn+R0V+xRO2d/Gpsy1S9eBYgOGo6pJ1dkAH3GT/Ips0fkogRs0Gv
	 DmXeH9EeFSdYCQOvQcOZD64PHPN65r+NRHskAYXzXkLLJ75uKuD+xbZ92yLUvE1bhS
	 YuPDShWfWl1DNkyXEKfQem3zk3TTCqWCSP985Wb+zs0qgu2jvcz4wCOIbDTSprjeVi
	 rS0y7Khe4SOOmq2y83EWb7y/Xu1E5PJ0H+fcDtE7aPjOKInITxXKLbYrA+8YvwZAvg
	 63DWDv54biIRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6FDCDE008
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 06:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178245705368.21658.13366702715150976780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fbd7be055c53e43eda9dbdd984fbbf1bc8930026f74fe08974b804d969f398c
Date: Fri, 26 Jun 2026 06:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782457053
