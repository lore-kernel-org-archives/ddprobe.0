Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A237243A7E7
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787919034; cv=none; b=oCd3Mwn1KPrq+ZmQ/1maGc3DpqZhPorOiwY73eMEuHKSOfrrL6QE0iPD74bdb1+EKeAlFEody3Ff8FYk4ZUqs+CHtuRjCvl+ELlJRg8X7KP9L0VYpXXTEwYKwKVq4Q2kqw91k7hSzbEZi6EMAL/UJmSLHIqZByV6qPT+hCiOw+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787919034; c=relaxed/simple;
	bh=7yS1eWN2iBgxEMsM6PeBgB4U5FRXlmdFlH6P+pTHNwg=;
	h=To:Subject:From:Message-Id:Date; b=edQqIDTeYlvXJYa5EBq1GwrjHDEjAAz3LW7b4ESoSH7/ztPLPYdNf9CtrLAvk5K3XnAQQG8xBe9EglaIwWTO3qQSusuTqC6hV5ZDbCRs/PC/dBUyzo3VgF6/hRSULo56ScNFTa9j5siSzptfCTeh4BkpcWUAMnUhFqEGdgul6fo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DddX8S0j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DddX8S0j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1AE4C2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787919033;
	bh=7yS1eWN2iBgxEMsM6PeBgB4U5FRXlmdFlH6P+pTHNwg=;
	h=To:Subject:From:Date:From;
	b=DddX8S0jexrrNypzi1r3gLVkjLDXBIaR6uhQXeB/IKNtSDhXFXh2Zlgcx00WAlZOI
	 9kvRT2RlzjM0x/trraAVTnm/iYOMZMBF1IIXXTe9n07Z+h2/l6eIJ9ERb6Xcb66Agh
	 ZketLYABvwGrcoAsYcPZAnFJLJVEsJgguqjhwgoMn+KMkugylu5K6qPMPN+gR81UO5
	 Jy6zuGgsK6i3erOVy5WFxEv8H49NnEF+qvQcUlW0kdJa9cjwRFD+lmkZr6xI5vCIOx
	 Zs5xNe/t4CewyJxyA+bG3nqFVZiPRliX+jYZEtcxJA2qGJMzfYTJrTJTyUvmO8zVic
	 hbVjTzt1qoAcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC0DC61DCB
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178791903370.2427.9880575046417344618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd2f4c8401ad838485133485b4550c39eab52d44cd8004f79ee4deeec60c7959
Date: Fri, 28 Aug 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787919033
