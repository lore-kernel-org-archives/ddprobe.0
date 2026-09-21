Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90D1323C4F3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789988434; cv=none; b=LSfAoIVPbwTPM8MK6wpQ4qxNrBXSgbuFb5Tzkk0U0/EGO84LACvTq6OtUYF7EnrE9eXNMmjh9i7ELird4EFCQ/L3Gkxf+f8hhWCs7Lm5a2FICd2igz4CEie/+Y8GiutGjQSRFzhyDyQqNE3pUoSQ5obyhrT5Hd0HJoLtRtNQ7Gc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789988434; c=relaxed/simple;
	bh=739lG3hogRdcRSLqKlnRskij97QDnhRX7U4cXXMdx7M=;
	h=To:Subject:From:Message-Id:Date; b=K22w154Urxx3JL5KsgTm11Uxao4WVoTU0+o9B9e/dANEKlOj/YRLjxAIxhMjmLHRlSL0viiNXPgNV9Gyg+QzY0pWjPigsO/MYaLRzyV25BwaJE2f0akyUIekljNxW0RdvRhanCvPmL+R2NXLW10fOU0YWFN580i9XlHJbbiRr4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FFkogAfy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FFkogAfy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D85EFC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789988433;
	bh=739lG3hogRdcRSLqKlnRskij97QDnhRX7U4cXXMdx7M=;
	h=To:Subject:From:Date:From;
	b=FFkogAfy/Uh6G679ru/1zGEqoQ3Y7y9QswVvsQo2F2cwz9rvu+dpvB0jK1gb+3DIJ
	 pBPbgwuqNQaJJriDFtQc1HjOa0OBWJOK8egB5gxgoDG1PIZYvRTWEcCu4CUamIVjh9
	 LExw1v9Q+RCmrj12UBgObyDCeNTWoNEpMYzkCk8GW74w7kys4giFJPL1vfaOsBZBh/
	 ZrE61psZ8RPuEfnZy0r1iNDvJWuDCSGER/LA+jQLsbORtI6ed20VPsJbU+ebuj4jbn
	 Q0N9LV8DgzjZqK2XivuZRhDOp6bcIlRPGigyVws/3omQPZjl/hA2NNNScRVvciunmY
	 yofmVTJWeeatQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2CF2C982E1
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178998843372.17264.3653716507918061096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0f45c82dddb9d07a76678aaab25c2dcdde556a404c47a9bde406ece74bcfc74
Date: Mon, 21 Sep 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789988433
