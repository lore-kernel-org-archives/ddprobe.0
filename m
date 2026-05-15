Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC8C3E9C3C
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 22:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778883034; cv=none; b=eAEexIoj2CaSzbJIqAxa2sNn/PrnVhXSbTCzobnSRHQilYEIk1B3giUIEqOktXJtf1Bz68BO9MnOpZvoBPVs8gpVw6BAO+DjnPNhTP/c+idabLbLJIIpm2Gc9cxjzREn40F0IYNcP3jhgypdNMCJEaE3DNYAz77q2DE61qovscQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778883034; c=relaxed/simple;
	bh=EnBKcWeiUDTMujac5utwhM7aczrp3CVVOlwmlf2tJSA=;
	h=To:Subject:From:Message-Id:Date; b=fHAXF1eJ8+EZaPcaU+bk1BBfMRsgKdt+mq1WO3y78zB+YuG+wiJDAFInaODP7I+EKw1jIka3DPT4HtdeFaVNqM87jsw6rQFE5FRuyziIbgHJP/HV1d8LFe604oT5hstONCcVnnKqm7dS/iHGgqEv/tpo//2/DTtbTAF/KssJ0UM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qBT39yox; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qBT39yox"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC759C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778883033;
	bh=EnBKcWeiUDTMujac5utwhM7aczrp3CVVOlwmlf2tJSA=;
	h=To:Subject:From:Date:From;
	b=qBT39yoxE7SacOBglpJs+fsTMntiqqvcdPa/KHgiDpxNwl/UYCnFJZV8pu7L4A+dn
	 SouMmqwdfF1lxhkHdbUTxlAo8TOZNiVt0yYJteL4LVE80haCkcg6JDLBtSiFs958nZ
	 iaXBoCVlBM2GSustQsSrfZUXzHQX2rMwxJKsQDkNW5khtvbTODiyg97zcBO9yaJwsa
	 QRF5wlp+qVqkE4FiyEQG8JBx1SaoYy2s+rnVVid5q0JvkAwCBzhcmGjCDRjStTu8Pl
	 JWAOwPrZqNL/IF2d0Q8ZJq6+fGQb/oHV0Q//nAzsgStgooD0HI6xbx7OJfzmbx1VDy
	 jpwXOqmTQQ2uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAD13CD343F
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177888303375.31408.2256154821991126761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b7900976d8ca7490a6a2ad6364bc5439961120c3070eebdea3282789d47adb6
Date: Fri, 15 May 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778883033
