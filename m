Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 238E135DA75
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 01:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783993114; cv=none; b=c8/KZstuTRbklTxjmJRO41hDi8GLGSpKdoqHpHVwjyxNODcWVWVOGxoHn8OKG5p+7X8FptcvSB0GxEf4vQgzOOzjTnqUDJBurSpcT/liRHCtfeq39d/LC1UclxaE96d124MPlBs89lgQYetVdpGbdZ5lH+HLj/t760ZeQutNxY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783993114; c=relaxed/simple;
	bh=KTFq1jVSYpZW6oydtzg4Ii51RlBoQmsJLMN9psADZM8=;
	h=To:Subject:From:Message-Id:Date; b=G+QINvAaWAeHqdsKF1MQpCDJT/IdC+WaJSaCKitGjxDpQYHJ95yij4jB+n1TeWBDXh5rpTH+gKBt0BWxIx7GVlUEGJ7lLyWI+Cnvlo/Bi0Vlh+8dvfunWkRpv/tWUvjVZRp6MemuQeTJPi6Eou4KdC7LySJw6uncSkQbGvpEv+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s1JASGZM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s1JASGZM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9F68C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 01:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783993113;
	bh=KTFq1jVSYpZW6oydtzg4Ii51RlBoQmsJLMN9psADZM8=;
	h=To:Subject:From:Date:From;
	b=s1JASGZMvo8CeaNHTuHHINBytDsuT307EB49zGg653XEVZ8mYCLkzwPmGZ6wv7O0w
	 A60o9aokrYe9bOFUVUClB9b6eLdqx/16FBSOAlIvdCx6kwcbFtD6LSNYrX+S0rq0mZ
	 D5A8roBMuLILoHtgyfiqXv+yYh2BnzjnVjZU2ZazdQiZPb5iRjQ3w5EfuC9+3AKguP
	 DXJiKIL1cUKfTnWUtDi6H/1DgSVyqHY161zKc3RH2DzODNZPbeIEPo8PJleLMWrdh2
	 DTmvzypv++OTuM4HM3WHMYSd3/KvZXMoLLt/p9fL0HD/gJFEgXQW+3xXae+z7dV37L
	 2ykszoXhvvzVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A84E3C43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 01:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178399311368.22092.7690572469248863705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86953a24afbf9af5e6833d8a673745c395e7d7321069657e8ffd872d84d12aa8
Date: Tue, 14 Jul 2026 01:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783993113
