Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 155AF38A70C
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789030235; cv=none; b=D81rdlE8Y333p6A0lF5qFMEyyhnof6xFTEgT4HLhRTsiRdT0wicmiMRJ9z6KwX0aupqi43/pfwjUFnb8bvjVfGL3axt0od/vigUW5cy4tAyxlzP8ivzf6mrzL0Q84bauDyi+NZKMeNjF2kVxybyXCPH9tDYdeOvQVUJQE6uGk40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789030235; c=relaxed/simple;
	bh=VXUr/tgmzu8Pu1Ds33hZ6wYSZdjkd0nYprdIUELEF+M=;
	h=To:Subject:From:Message-Id:Date; b=WQuqMbVAUhb/UDSw86M/QNmhGF2Nj89JLEmcLFGzfToj0k8WxLUMVNfyZtwQD+irw39QhaMYDaiyx+HrkT1NUlz+2pTu3EnkGsOrO2cgBnPkOqDc0f6t88QgW7Z3s8lvbYHR4wT50+YvXxvyKTD9v47UUgk3YKLsJ0LQng2hHwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XxaV2rt/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XxaV2rt/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEDE7C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789030233;
	bh=VXUr/tgmzu8Pu1Ds33hZ6wYSZdjkd0nYprdIUELEF+M=;
	h=To:Subject:From:Date:From;
	b=XxaV2rt/mXFAKuEejK7H3M4u6SQP3CBix2Tan9RuPbt5vGzs7ZnPhG70o+LNKz0pO
	 Cxws3K4bRHqTGw6MfrBdYrVAQtSBlk95Zf4ox0LHIVrIKnkTV6l0/Pv0ajgY5FqW6h
	 6UNTKlbVcfabx20CpF+Gs14fJS1F4f4JiOQttPN2CjQ1oaPAtqOKfqj96PIpRBq00F
	 WYj3VNB3ZRFMg9NsfVuYcz7s7xsmwqJt6QJZAg14W7j2RibSAeNNi2VmkCAe0RTyG0
	 VbyNArPqZnNRHvn8dqjMUsTEpOWLY73IVidWG+6aNs1wNCdLL8OdQvELSS4W2ludaQ
	 QxJiUhiQlBg9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC2EEC79F9F
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178903023369.22528.13286083268617534802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 595819352ddc37155d5b31e41a244a889a1227a2a62630fbced62fff0ce250cf
Date: Thu, 10 Sep 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789030233
