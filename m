Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C096194A63
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722337554; cv=none; b=BZL4IyExtGLtPttSenYlUstss/Q/uLxpwBs4fHFIbTfdgaMV/Vm0kR+2IWXwq54d1ny5yirdd+d8KHbq5JFC1VIPsO1GWTRGXw1zGvw+Fo25aeHY8TAXOihIMVbM6WCPvuWekyyxIXMe5lMKUgADlHUyNwHcSTpOgStvARepyco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722337554; c=relaxed/simple;
	bh=q9YjSK7NNDBz5WQf1Q5u7X9lsaCGx6ZJbzqUJhRCHpg=;
	h=To:Subject:From:Message-Id:Date; b=pfZCdjjClyT6u+kTRMPMrjFJgIpIYZG21m20LHwdvnIxIWTrI0YMQpS2BEGqkKO1uHuxXDs6ZY3beJ/ti18iLfSaxLfk1esd2UnC82dy8W6I1PIdxVjhv/chEgYTP3pZwDhwkDlGZ+vUIjFJeS6pYEBcBCvpaXJ7bGsC6Sn1NMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k88IYICE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k88IYICE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF43AC32782
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722337553;
	bh=q9YjSK7NNDBz5WQf1Q5u7X9lsaCGx6ZJbzqUJhRCHpg=;
	h=To:Subject:From:Date:From;
	b=k88IYICEdviorhumvJUPCNIUlKA0whDEwkUyuSVunvCQ/pYNPtrbO01cLy76R39Fo
	 5VNCtrnT/LbXKQ9tO8QwYif6fxE1ZJCADEp4frMru8kkhKj5Znkn4Ng8n0ttp8TjWc
	 ZqwxZaOthREoR4h3eAgQnx6CKwFd3Wb7iVUMdh5cFya+RKdSj+QDDGfNF2QBnU0Wb/
	 GtL91YyCbC/GTphwTVnrgStIOCoOOL38i7QM0jT0Q12NceiROC0CSyNOHLX+ksYzvL
	 yoX7jiXpPTzftI2jvV6S7A2pyhhpt6K9dS7w0fS6EbX2aIcNdHo1svX9lzMKMuUdCO
	 N4asUTW2stEgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E993C3DA49
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172233755359.3012.7926312600892081276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78ea271b3213ce66ed9aa02b160ce145a2201aa5b34a451c71458646ce149d40
Date: Tue, 30 Jul 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722337553
