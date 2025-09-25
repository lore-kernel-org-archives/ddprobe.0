Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22EB031BCAA
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758829194; cv=none; b=l8hgjevSRUa/41jUlvoQ1xf0LsjqUJ0xswXLcoUVOErJe1Vt3NTEPsC83nE+EHk/ldh/IFSqapCgAKAAPRrLkQxvNTIO7yWoNmxeaD6n6S5tk2rfLcZU4vXXk8XPdtk+AfDx/IobVHa8gdppUzEx9Vk/uBnRN/75RWzI8fF60Hw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758829194; c=relaxed/simple;
	bh=+RKpYVk8op91O2VzHOPtuA0FmSCWOq0FbYLwu7okWRM=;
	h=To:Subject:From:Message-Id:Date; b=IXApRcmCZRG4lU1xVLJvvTDi7qwFcAGRsUWF7YJVRh7sTg9nOYwA1osOXMaWJyO1AcohEpS7WHdFp5HtPIHKZyddhDPAhJSJfn6WC9T5jBt6FhWE2jkPGzlbi86VBUD/WkGqOGqJnU9Geg48JvwLY7WAXLDmIic9ebyQulmC7KY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c1rHwyJl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c1rHwyJl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0967C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758829193;
	bh=+RKpYVk8op91O2VzHOPtuA0FmSCWOq0FbYLwu7okWRM=;
	h=To:Subject:From:Date:From;
	b=c1rHwyJlouEXTSeYR+SQENfFDMEBMSnBnFjFKtcAfhWJ5bLVdH/t1cy0cVNQthxBh
	 0bd1Lj815TJHkgO0F8Lj8SfMh+r0tfkl0yyDb9q4J24zbH9EQM66StMflPSGd+g1nj
	 kZ6YmYtbN0n7Isi+agYBusaRSNuSyG+pLWZdbbBbr6K8RunUoZ3/LCUAHdwccgfoJP
	 1GMX7Lbd70BmZueXPe+tqmpbePP6e3P2Nva95uyRT5bMAMqPvxZTZVabAzhamtQwCr
	 CfGoLwG4r6i2zBLZ2T/3mk/vD3NFD1m/Zm/1ldjq2/+scWdmDcPJWCi17cBexmtPPp
	 chrBGVWonXiZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ABE8CAC5B9
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175882919362.21458.1781146783529034167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb588c25ba8151b896beae45c8987698c97aa3e4204a4213c63f7792c16f4246
Date: Thu, 25 Sep 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758829193
