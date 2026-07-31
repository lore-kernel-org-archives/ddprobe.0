Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47FE3343890
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785511234; cv=none; b=XwGWovW2GQlGM77MqB0nURRxJsvX11QAuTmspGpT9mu4IALVM2JYuHsjGuPfIgHBiFn9FPGIYjNocSydch4Ac/ie9DdG0wngG9B3cupmISkLSXzl8k83KrIrTWj43IInMQ8YauLwtvzf9ZwlPIapNoWLpTegq9y8dEl4qMaN4wo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785511234; c=relaxed/simple;
	bh=lc2BEb2xDjwnBV8NGxiNR3xJ8ifqfOSq5KEvvBtbVs8=;
	h=To:Subject:From:Message-Id:Date; b=FzBX8hWaoiHL98wh5gTGilH+Is3ZBwIFIM3LXvpaStxjqTRulOWW24JF3swFKRAFb1KICI4isQJXL1YvvmICssHm0poukQwUxEbNmhrZ1BvVYAfWjUkcIfVNeZzPAjGEpznazFpBU8y0N0pnWvY7h008PsVVXrkfg+SMEXsxupk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E9to6vQd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E9to6vQd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D43B7C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785511233;
	bh=lc2BEb2xDjwnBV8NGxiNR3xJ8ifqfOSq5KEvvBtbVs8=;
	h=To:Subject:From:Date:From;
	b=E9to6vQddcNEKGyAdxzvDye41UMgeghS91z4tG+AhFYClSm3+j/pfTnSgk2K9qA3W
	 iEJ3iIQaz1RgXHnj0xwssoYJVBjGa7/gynZGJwKVkEHV40+UnkP7/mum6iXizW+KTZ
	 utVMD5R82WaVzPmYRsZemR5JG2YvOwOKsTaY109O3Q33sS+BpxDX/bSLU2q7bGjORr
	 4CZCLpSVoM8xvMtSwiZSVro1Tn3Ae964gcmQKuA1xu5ikkvqd95haoOpJZAvczePmz
	 3FQSD+x6u9q80xAJsrT6DM2G5+oujmPZQGPiy3NHgk8OuiYIzp0fOapV3ufmSbL9Ar
	 +WjigIaNCZmLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEEBDC54F54
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178551123368.2154.13150903744007136597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec958e518cc3657e2ff11cdb81efd88d17dc77db50bf91095320ed9786405650
Date: Fri, 31 Jul 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785511233
