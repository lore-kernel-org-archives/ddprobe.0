Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14417200C2
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756626594; cv=none; b=UepsTeiiEaD9DkbeDFbPqF3DFyXb9ySXb8vt1pl8inEZuLlh96yYxg2XbbrtdmSCTUlk5CDfyzTIQXeTBsKwbD0m4lSmuhE4bkZc1+NOQs3W/lcakxxvrq27UTyzgmP9q2lKBqUK3FukNOPSCrmmA7i6otCC3rL0zkcnBF+cRKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756626594; c=relaxed/simple;
	bh=DR9hNZeOJeWXcmERC69oGMrL1gPy3TM4JAytx+LRqoM=;
	h=To:Subject:From:Message-Id:Date; b=BHG4cIFnVTyDbPXmkRl4XxWGzDQ/x1KzyfJm3uYnVLsjSe38L29s5+jEPc5QJhovSHf77Eh9k2wkM9Sli+7vEl08wESxBZJCuH5Nkf7DpGetz0Z8YXJgByYQ4zinHf7zCLPb4NUnMgxv9csU/ntsjBh+ASPp6FP91wOQAUj2rTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=um8ClCCa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="um8ClCCa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3476C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756626593;
	bh=DR9hNZeOJeWXcmERC69oGMrL1gPy3TM4JAytx+LRqoM=;
	h=To:Subject:From:Date:From;
	b=um8ClCCaYXXeNtMbr3vW/BB4OjJG52PXR3ggpaUvd2fhpZiWNpxgNXmxF4ybZUDCB
	 mcl0uNp1y3fmgLoiKcRHfGg3xXrts2g4qwf4Lgt45Ct+mjTdQdVy471xRQSWF5c002
	 agwn08+vLL5OrXSbOhcct/zMVLMBNcvx5Kz7YDIDSynyeckx8n5OsRyE2n5va//Zuo
	 UW1QdDNtgnJe2HyFT70rtvyAQ4e0jstntlEybxNLtTnZPub+fkW4aYlshB0QnOPvPX
	 QZ17+tLYFWh07Jt9WAjd3Bi9lI5ccMl0KjZg2E20mso+0L8IqeTtQzx+K3LDEAxk9B
	 9kwDIg3jmIseg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9179CCA0EFF
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175662659357.2073.9348275893702960799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60de87ddda78c7028b368bd5b94b045c1e38ff7ad73fd96ed37cd0dfb255a0c0
Date: Sun, 31 Aug 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756626593
