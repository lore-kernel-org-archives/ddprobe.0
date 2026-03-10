Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FABC2DB780
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 23:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773183894; cv=none; b=JtCbLbjVdkQ9d+P6o1yg3pZIyRAeDGHVOkLdfEaOq+zdMyUnljAjpnVlbkdtOynaLnXgMoMamNgcZBMb8lyeZN+FOZ1EzsLCTJbTXMjataHSI0rgrQ5N6GbW6SJKMFbCSICNknI8d+QrCWkg1+KWEWYhYL2KD5IHlmqo6Ua+fTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773183894; c=relaxed/simple;
	bh=PsOF9yLc2a/sh9pE2O8A/ShbEKUyew7FHP18pZXNuRc=;
	h=To:Subject:From:Message-Id:Date; b=q+jSUqUtPF/2AO+awcaZedN6dzk7Slj0a0k5ZTbHnjSVATWLSNiPwcDT0tF5XOUSQsd/fOKFKUQDxRMEIgUHOud7hIOiRDlIwXWJF3JVoyYiqkB7eUpf5NlXNMl1l2WIQTwWY+ik6tRV+GSakOJVJQokIpsL7tQq9ivde6IX+TM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W9q5rnHG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W9q5rnHG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B10E8C19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 23:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773183893;
	bh=PsOF9yLc2a/sh9pE2O8A/ShbEKUyew7FHP18pZXNuRc=;
	h=To:Subject:From:Date:From;
	b=W9q5rnHGOFaJ7r35FtqzMyj++CZ/gZyIpcLU7n3wYczxlizaGqrlDQsUQBCPH7SIf
	 Zu3nWi9uZxr5NN1tG4ma4gKMRgsijSrG5EowCwsKRdtIkYUt4bh5epTlWuCpQBTbmW
	 9Tm7qV7Ebo9zqME0+aO5cbxsI0wDluHum56sCd1rjBAUIRlF+sJDZUoCnz/Uh2RLC7
	 cj5B/zAMf+2C+P5QCgJV7O3ygnVeG0vheA5+xcqyDlJi3OxoNEenmvA2rddUtlfKD0
	 TY/zOSxUF+rOdowDs97ZsuS5L04/CfogvGoe09yCfdc3ap9D69UTnbaJmEQj32tVnH
	 Ihhfk4z1NLNXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95956FD88C5
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 23:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177318389359.27117.6852773272393228786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b7217f8be9d28e0668be17e7b664184586611b9d4b5e9acba7c8d3bcea3c7ff
Date: Tue, 10 Mar 2026 23:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773183893
