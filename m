Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 511F43A8C0
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 15:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713627023; cv=none; b=mjKiIILhVs4gIRoy9bY3rVGMDqNUdj3B3CEe5U8D+RpFwCyHRbsdbeurEjhK9g5jTKTCJBfC/hYGGWz6hTGqumnVhIitNRUYaab8jU/BQq1bO91AZanpZm0RGYa02k4mJh9ib+/AHNKUDH6aUkHs2IX3ggRKDL3SRFJ1s2NkAkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713627023; c=relaxed/simple;
	bh=DG1e92/SAvfChzl58un6rErS1DrAuHRMSuufVfzD2m4=;
	h=To:Subject:From:Message-Id:Date; b=tsKtVuWoMIQu5cQdbK7EwrodtxezZCh1IpVBAvjkuRkF8sywCVUkAjlXFtc1NMCCGNBTu6GaKP5omLYmw4uy6+aNALySs3rmI7gxxwJi3mSTg4M1fmvqKfh4CeYLGUcs7D//iXS3zGBHluCAltbEmdiU13XmU/rRphAcGDFhH0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WBBR3Mwm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WBBR3Mwm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD247C072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 15:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713627022;
	bh=DG1e92/SAvfChzl58un6rErS1DrAuHRMSuufVfzD2m4=;
	h=To:Subject:From:Date:From;
	b=WBBR3MwmG7rcTEtjPxQBqpyz5ISp0N58hrsixl9B20I6S6rmQZ1DgvkXOCpZ0rmIk
	 RVC8YgJEy7ZpSmUPLotiaDAX7iW9kEDx8n06ZAyJNDKTPAQBZ1y+hKGf41XCZz6isO
	 kqxPUu3eK6XA74h9EAas521I56ICcG/2AK1U5fl19oH1heOh7/OHhcpHdpiuW1YoXH
	 1nYMsX2p4c4hFLH2fzYoxSc1ACCmjYvPfGdEmmeptQowCybt0HkO9A/pqwwUXD810F
	 t8yfqINKAyCxkrWintu+MD0n5qU3qzKn7o7PTqUrKCh03Gu/wOizYqtyJCU7ZP5xmA
	 HbzL0pmjx7kkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4B0CC4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 15:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171362702279.550.4484680800172787270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa29a0c79624c750be55b6e1e51a5c61b0621fb9f5672578e03739dcd801f909
Date: Sat, 20 Apr 2024 15:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713627022
