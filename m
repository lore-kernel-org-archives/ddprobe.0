Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F67B11CA9
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738511154; cv=none; b=odqbVSLg2jPJPWUP+Yd4FvEbMrh3b1Tc/VWsc5quvgS/4QcVgQ4JKdQqcHO6YUIafZcVlxMQJAitEbrH5LqBuzobC8AP54izBv5cRTx++kGkfaWdVaFU6A9SruwlHLKOqn1jSsGvoZFB6jLHGpWWGRyRC6NLL9HXpOidSafyPbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738511154; c=relaxed/simple;
	bh=khwwM0kI57LR+iqsFgEY+5aockxjrvS9KyxkDpBy/MI=;
	h=To:Subject:From:Message-Id:Date; b=GPaTzjQ+BapLFwUJ3S1CGEOvZbyIGMDKusJojlSGQ9LiqzdyZM0ze4Xj3JRdV16dYLcT22TFB73PODzeRYZDR+v7vVMWCLnZWJKpJ8f1FTOdYImCQ6r/wwj+t321tvP/6WSV/jdYkl2kkAFmjZwq/3lEYGR0nTUc4lHd6uD4O8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OOK/MCnW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OOK/MCnW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACEC6C4CED1
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738511153;
	bh=khwwM0kI57LR+iqsFgEY+5aockxjrvS9KyxkDpBy/MI=;
	h=To:Subject:From:Date:From;
	b=OOK/MCnWHzFtJ6YQj8TyCvmbWiX0meB9phTQLk2SZogAHhoqKfZvgOG+ZLHkfOUUd
	 8crsv12xQR/PlyEGemSab8iN6uiSwNJC0kaXbynHcuKno1n2BNwTYBgareAVIb/HfZ
	 MhFd3fnDWSVhR5t2Rx1cDerdPg1b8RMJFHg+1JWLxHneTDg5ilkbaltcgmPVf49DZG
	 6k+HaktuvUlxx/Jpu7KwdcokGTIgGIRhmUQyNodMoa6kIp4ZapapCfwSUeTImqKW3/
	 W9X1izTRzPdgPx+XcNTbMyE6vQYu3InUscXuw+FKH9saC7nwiq6+DA5K4e1Jz3L/uA
	 zEeMHuEGLUTCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97240C0218F
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173851115358.31877.10304006345755704171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6177b77ad99a4276cba5136d68d1c0f8773964b6b18006f2aa170d909191eb61
Date: Sun, 02 Feb 2025 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738511153
