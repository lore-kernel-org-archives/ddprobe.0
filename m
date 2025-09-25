Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 272AB27EFFB
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758794994; cv=none; b=foZzNEQOdTH0UFI3mMgD033fPQuZMe/vdHl79vEZTeb+jnzakOD3TQce5+rxpO6U3nHHhqi+2AjUoqqoB5+HAxhZRa/xE9tTSqCPFqtyg5Y+lvlX0rfuq59tlHIeCcuH1XoLP81h6oj9Cj3ipL/pEYHfPteeW/aScC4X6z0EqDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758794994; c=relaxed/simple;
	bh=X/F7Br/V4tD8ZbB5KOc0y7ivF67kGeCCJ7eQMVhLXgM=;
	h=To:Subject:From:Message-Id:Date; b=ROd3+3yunk4+x/1RI3rMs6Gv0ZeTMJGTmUUR6mbHdYLdoWbeGilrBc4ANBNbYRaIe0dcLMSaTAyvUrV68sT1qojSR7UjjrQtLMSlvI87Ui+NuzMeo1RFC/VSSBgrlMKosoaDzNzxaxWuy3bGPRDe/lqqw5Lwn6n/XGMnFmUYZ3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lK1jayKh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lK1jayKh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EC7C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758794993;
	bh=X/F7Br/V4tD8ZbB5KOc0y7ivF67kGeCCJ7eQMVhLXgM=;
	h=To:Subject:From:Date:From;
	b=lK1jayKhkgXX/LiEVgq6UUmuXD9sYe+Y9TT4UJoHmqyItFWFG7GWaT2wdYbm7QMFg
	 NB4BMqcY0gJytM4EFpaRb7ZjaSei5/55W9LP/GipBJZDKd4kjb0lIYuTNRNC8k0X2S
	 0rGS7/heZIhl0cOpQaOYbsrE4mfYvYV7WoXTRJQXEstnunfe8aPfQ6sojjZMSqHYaC
	 HEqeQd5ozlbU9v00IPK9uxsyh0BcXR1HjBD18oZKgdbgdQk8/GqgaTUcoxXD2wYutE
	 hKgGhPNfuirvK9PhTpd+R2EoKtU38f+B770iAfOn4HcF4lCLa0TJ66fMWAgWj8HWMb
	 1CKAvN07tde9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E2FCAC5A5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175879499359.23872.6514538814688646925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 073e7af2b275a3102697e408c7757fd9df2c1b9e56d2b5708946411c3aa91c01
Date: Thu, 25 Sep 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758794993
