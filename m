Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A39E37883D
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 10:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783076314; cv=none; b=YIrXyucL4jVcCw8buGAafNQ3KK6Scqh4elGvy6LgxsTARE3CGudQ1oWZl9758efu+nJ063V/9d8hNWdA/6+D2ExfpQRTYFMbRSYhPB7Dcmrx/qlqx4zbk0m4KczgDGqK5McpnNX+d9Yl+o5Q4RjFkHV6NpvObbPUshgW+574D4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783076314; c=relaxed/simple;
	bh=kJTe1KivXaAuwkOZBolg37J9yFcAw0Uy9lLnBW80qvs=;
	h=To:Subject:From:Message-Id:Date; b=IeXu2A1vLrnwtBdxO3EYmsU9F5s+3z5GC9yuRNzTbMjkYYARoi5w1xVR7CltPQ5J5c3f+109DUKht4NxfMvEqRLOFA4qd99lFAtYaMGoUQjkpsu2bT4S91DwcUMPJxfuqrCBCD3ug9cTvQT0nr8LhGQ37Bbuwd9C6Ls/fxd50HU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YpSVj3vE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YpSVj3vE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE50AC2BCB9
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 10:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783076313;
	bh=kJTe1KivXaAuwkOZBolg37J9yFcAw0Uy9lLnBW80qvs=;
	h=To:Subject:From:Date:From;
	b=YpSVj3vELnwFzqtnsGMzXiPgv0MNe/da5tEOO/zdRhfJQFdWAik2Oh5fqws+4CrHC
	 BGXUHiHs1n9QE8LJMEdM3nMuJYejPX+OEEj2o68eHJxxjezGGdjgRa8OeaTqrAzzXq
	 KYXy2pq48h8up4JNQSrzxoZz2jBYKaqpdQNWDtGQwE204MogcHh1eMUMrcpCspFa+s
	 JI+cv01ynptKMVsqGxKYNyu3TAi/L4TYCL17sz3Q19Tqr8+BBn7dtS+lsVzVNAulc1
	 lWbWjiDf3t1nGwP34ESoJAaVcfeN4uQ7nm1D0R/YlzLgigLtAbC6WUJZeoroAoGTsR
	 ryJV+sIZ0VUJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC237C43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 10:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178307631369.3064.17559397258361216768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b99a088a0580d24df213a1234bca7292056d29f951d9b1350dd13b0ae9b0a66
Date: Fri, 03 Jul 2026 10:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783076313
