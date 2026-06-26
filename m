Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6555C346E4C
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 22:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782512314; cv=none; b=GJRf+Ul8w6VujtbY3JY2iFlc/5vodMuapSZRGFtI2s21nKxxUp/0OfFsu26R282PbWdiQ1YvngesSCSYQh53acKV7Z/1QpUYhrTIFyKKZ0UTEGIfVsP4dIZ1fL16JZ0J6MGcsVMTi/OQz4OdNAdNNY6fUts9QdS0jmvKY4aTN5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782512314; c=relaxed/simple;
	bh=eDz5UlXOFlcCazUnr/Wqn6p1fkpEKBaeiRSl0M2HA64=;
	h=To:Subject:From:Message-Id:Date; b=IxK3Xq0hALmbf2xGkfC5xqGC0kxoGKt658+mxf1JqX6i/6vMrT6gvDPnmwUGC2XbbA0hg2DFE48Ebb20xA4nRx2ZWl2W62N7zpOcxliCBRqDpfCLFdvU7q+Tx3IXCjCJHsiuX3hM12sBNcRrPX9EpvIXwkwoDqAgUFszKu8vOxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qge0G1zg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qge0G1zg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1C88C19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 22:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782512314;
	bh=eDz5UlXOFlcCazUnr/Wqn6p1fkpEKBaeiRSl0M2HA64=;
	h=To:Subject:From:Date:From;
	b=qge0G1zg1Zdo8a6t/kwIQN4YetuKlkeYzPeGqsHjejcGvtgHA+p2VSKP4Qd+TJKuF
	 zCEB5LsOg4GfsPeuP8a1uoLwjrveMvNAYljUGsvKxO7/roga6v+LCeJ9VPazh2KpR7
	 xOmoxH5q/0rURqf8bCgRgWbZkrzH/GHqlZjCfL64CkR8rPW3rT1HXRwICPOZI2gUPH
	 CRjUzeg983n3oZ8/9VK2fikc7s0JfSxawY8ff3/4zzLwnGGxkPR4H/Ct/Oaw6JIape
	 0rthDlHym1H2398+kiZb8ZLsLoIMbXMZkCkm2q3oJaRVI6TrvOV+2K+aZGZsW+S46g
	 Da/8ySH1jZ41Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA15CC43458
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 22:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178251231381.8601.9803289387027393652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c6c2d1dcdfcbb99881f3564533c05376cafd785601aa13f2263bbecf19c382a
Date: Fri, 26 Jun 2026 22:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782512313
