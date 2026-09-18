Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D7492AE68
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789692634; cv=none; b=cd5DI8dC3CGHWeQ2dZxA/1QAprZFnGDQcDNHVLNWg8brXuh9ml93c7yNHPM+peoQ2nFyOzG1/rxMn53OlFwz1cRz/pSUd6mUMn5v3VnX8z0LJBSAnVbTmXXfAdjdHchvqMxRlI7yzR157wQjJ3MNbuHeHq+0DV8VeNqoc5wLPTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789692634; c=relaxed/simple;
	bh=NxkLXhrlZLQOAlr4BIwanl0vKw6vGJvTkZ6Il8+VnW4=;
	h=To:Subject:From:Message-Id:Date; b=AxAFFGz3BYfkINvgVkr7LkV7A7IV00maZpJ6PbcpxY/85V7zwVQny+V3aSS0CyQmRe0rixJnJPsMwl0kRVrRLCCaDTorTg4uW1YWP9u8JUkIPxONddZbnpjPNPZQRMxPPhTQD0Z0s8iDAQiiyTv3huWBSQH7IT3EBn1DIQdJqtc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H+2apuvx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H+2apuvx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDA45C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789692633;
	bh=NxkLXhrlZLQOAlr4BIwanl0vKw6vGJvTkZ6Il8+VnW4=;
	h=To:Subject:From:Date:From;
	b=H+2apuvxbUKJ8EFBNvWZOZQZvpG9EwAmuMTKFq7oEFwINppVNED5Iyz9XRmnVeLmr
	 aV3tHPkg5XliOZhUFo5axjsexKUyX+Td8hgesR3Zw8cCcOI8Tu+X2KeWXzsgFIJ2eK
	 iUQollIzaK1CQvbBeZVqHa+L7Chm6TICsEbTKBt/kx0Sw2XrwnJHodadmidTQ8X/AA
	 hXLgU4WbfcL4ZvjV2vYSLDojB5iT1I+vBhP01CX+ImSa1EIOzNY9pMnsg9KBiAgg05
	 Tvl2jKHCkd2vm4EQaIjtWK3Eer5w6hob0Py21sw2hfE8JjLm+jJ3AVIGTeoIcFyD3I
	 np0Z73uUN8C7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B71FFC982D2
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178969263374.27081.12528078507823814005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66b06f85c5ac57402b01f38b1f0c0983db47030ee1234e5ad7f9fb30d7b7d766
Date: Fri, 18 Sep 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789692633
