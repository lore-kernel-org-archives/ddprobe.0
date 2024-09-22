Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39EB52913
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727028954; cv=none; b=nbfH7SxDnbYSax8hQlse9Sj07KyrMHceq7bernNtf9UWu4ImrG6NWCMy1VPMFPMg9leHhDQPa6gwLVaDZF7ZhmBRc1cngc1x2dnUKTXDfJjDTHBC2kHTOoKNUtFClxd9JYdbcM8/6o/5+PNrNrHnsRJ/9NPE2x+Porx5ZbRy5TU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727028954; c=relaxed/simple;
	bh=YEp+cX8H4LJWkozL3UCAViJXx6vyyUR2Y7U/7RH0sCs=;
	h=To:Subject:From:Message-Id:Date; b=XFkHhohoVoWKDQSABPw5ngckUhjKJ46hDDXZMMmMKdxjL1UMZOnAYh6JpsB15DKivz5m/dEhWecVZbzQQYlsbWe3euyqTru/MUqgCKlN3A740Ex2wrfS7GO9x86L11WO5i+7uUiPUl6zRdIcTt8yF1G8LhPwn1KV3Ac/rbeQBmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WlsTPqH3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WlsTPqH3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA8F4C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727028953;
	bh=YEp+cX8H4LJWkozL3UCAViJXx6vyyUR2Y7U/7RH0sCs=;
	h=To:Subject:From:Date:From;
	b=WlsTPqH3vstXYvzJgaqHRsoxaZ8HS6KbObcpwh1gYMo42glkiOcKUfhup8kAoNT5I
	 u60+fe12mSbnKQpNEBGYt9BN6fFod23kgMYA2FedQZvcbhesIMokyoVpqBvxF2g6Rg
	 SVCuJN3FRWfOFgR95DbCxGrtCb9cknJloUuVqrrRwk2OrVm46tSipW4ul5r4US0KEx
	 YWrQzOTt87sRp/NekNvwx8syjmtGKNRtSuUDOolQW3yEl4fSSYTMZvlXgGSXLbMqyq
	 c4CHNt/K0vGYqNyNOenZP0kWoexxrars0/8Efk4T5PSGthv+Sxnhfd4qyhnJ5aga3i
	 wTpnGtF9QxZ3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9408ECF9C64
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172702895358.12281.3744945469208033688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4fb606454480b9dbac2bac128b7bada14a9157d0e1b26d90e0cdb9cdc5dd6f0
Date: Sun, 22 Sep 2024 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727028953
