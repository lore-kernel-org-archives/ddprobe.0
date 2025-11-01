Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2354434D397
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762001394; cv=none; b=sHelkzWUmSwl9ReZtc6FTSJZHVgG7w2wJthszVhRIRuS1/6GQt/ELRJSVauUp1QJLwAoPF+XrsO7pegv1tCiWq7yp0he43hPnL416svCspo3hCDSAjiU75debLPPSRaVPSnZmeB/+9o109UJLNhpKrTtvhxGjAE/WffIUeH7bbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762001394; c=relaxed/simple;
	bh=hrHT8E3uj6rCY7Bx69wSa7NQSlLfyD6V6S5+qWAbwBA=;
	h=To:Subject:From:Message-Id:Date; b=n4ruH6+ExzkD3M7R9+dAiH9s9l9jybfjdtHYv3jakrQsYY1BWFiNc/tQ2wC72G7q4vhUi+Gr2iZYDQCMwF5VjrgzK7R/Loib/MgJcLA9RMjxr6MmCsJ+KR1Y5aBswDugD8+MEa9FzkHz83E2kASkmSLAJq3Cfz8NpVGwsscloJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nUGt/JLU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nUGt/JLU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABEACC4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762001393;
	bh=hrHT8E3uj6rCY7Bx69wSa7NQSlLfyD6V6S5+qWAbwBA=;
	h=To:Subject:From:Date:From;
	b=nUGt/JLU0rICcbZoILM/BzZEhbnuvGCpoJDsUx1s1z8LNQ9p6ehZXT0lhdmd1aR3G
	 uPJ+IVMg6K8F0JOd/t9VPFTvL3ep8Zl/8F5vm/qmUYMNPekaLgQ+5JvmoYkrTiXxJF
	 q2cn3cUCUJvFOxBPNKWjTRosSpBjcNOPW2gc0wc08pkvHXeqVvEUSDN2Vc3A0DlTxt
	 ekcFGoN7m4882u7sRfZEHdkGNtcUDyss8B9FvhV1M4CFyUTUpOqXJDK4klwY7YsVaE
	 6Une6lfHlqMWaX/Hlm9HFUh6TPNS6l13UNSe8Vh/At/KSRA/BVpXlAKQoHRdhwAr6z
	 bmrJx3KbphfRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A2ECCF9F0
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176200139358.30517.9565567853526624125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 344a360f7d032e8e0b5edd095a9f96c67feaaa075fda5f23ff165c4c28e13cf6
Date: Sat, 01 Nov 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762001393
