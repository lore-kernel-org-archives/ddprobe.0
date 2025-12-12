Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27F7C245019
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 21:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765575774; cv=none; b=iZva7epNLlaDuwAD69Rx/sc0B+8qIl5/5Ijfepg2r6H4Vz/THhQSWcNXLEjouc4zbvUj0FwJrdg1FdFJuKaKZT7B1KdJJiOBakAVSV3tkeH3rib8DO+D7r0mJH2DJtxPcUOTZSu1bAIqExke6aqJIan7Gck3b2OXC8r4zlfaP/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765575774; c=relaxed/simple;
	bh=/pFy5xeM7XYO3jGJ/qbc/1MNVinHk3FiEBOFZmC0oz8=;
	h=To:Subject:From:Message-Id:Date; b=fHrplN7Ie+kfcYKTSibdp5wYkpDbenPt22UgEzzurhsR9tdkvD/migNMwOCMpUKSiQcFimcisXqZdaTFSuKI1i271n30ewa2FwCGWPcgkbvGG2yMF0ivvf+qyD6vTtRa24IJxJd0X/G58Xf0u9FcGZlGUR4Ju4upKN5kIJqd79M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lc0d9M2J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lc0d9M2J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A9AC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 21:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765575773;
	bh=/pFy5xeM7XYO3jGJ/qbc/1MNVinHk3FiEBOFZmC0oz8=;
	h=To:Subject:From:Date:From;
	b=Lc0d9M2JfpIbXbHqCrKy1xU+ZHkV86s7APFfidDDbzBX7UDkysHUP8L1BAUYPArVV
	 8x3CBbSGWXOqHSPoX//ejrn+oXZUpyNwGSR/tXR2PiBgYQg0/pNi8Ghf2fxSo3eJ+S
	 lQAsdPwHXPBevVClspRv5qB7ek7AtsdrPzLHP2KJbQGySPung+zCqnaJFS2KCihQvO
	 T13v90NiSZI0KQ/m07N8sch8zdN8EIpYYW0A1oXxVF4miu0OVru/B2pH0dZ4qYdgBY
	 RUEHrFRFlX3Z7AR0Q9jcSHTjQRtreld8m1dhBhhhSsFpicmAMfu5AcwBLXjCpTNR8m
	 eSF0Y8nds4WVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A0DD59F50
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 21:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176557577358.27416.398388282678367825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7341b834c8ab3022f17177137e2dbf961f85b720de86c318afc7f2b76ce7273
Date: Fri, 12 Dec 2025 21:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765575773
