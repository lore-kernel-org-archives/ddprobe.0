Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A06F7494
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744081794; cv=none; b=uW2L4Pm0OsReruK1hrpPs6NqFy6mPjVXOAuJd4UquG10Anr5TIsYdlYhgKnsWEgLG6CCMcJ12NZy/GE0FFVvzoJ2tPl3EFlHM+9fQiqt2gyE6eVw2IIdAk6flXwL5vCXAZ6fFjwa7nXlQ/ndJkHcgqCrCoKKR3y7c65bKjIsiTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744081794; c=relaxed/simple;
	bh=8sz90snSE3g+fFNI1nFxXImuTSuT9ffgOrNrBJHcxDw=;
	h=To:Subject:From:Message-Id:Date; b=ckNWcAT541G1yCdmq6p1rwLEBYtYw/GuWy5snWq58K0zG8WBYg7JjpPtS+6j4ZnSZdqrumwYCu9AJ4WuCRafmCmzVNCVhv1Rv0NquANr4MdUYzgl+umA/FAbg9XeWSPv9FoDNbng8+4gWnJc3RsZophnO7/tf7AkTaedMnENAT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B6YLzzes; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B6YLzzes"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E5FC4CEDD
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744081793;
	bh=8sz90snSE3g+fFNI1nFxXImuTSuT9ffgOrNrBJHcxDw=;
	h=To:Subject:From:Date:From;
	b=B6YLzzestPG+gyPxQXdWKbY4hRmgVBuvrW298IAXFReZnl/B7r7T+NiJaW+wR27pD
	 wjFBh3PD8mZWexxc5DKqBGtZPp/p/0SUEe+oDpmceInYEtVhCJmoOiM12v9vmLWfvC
	 AK5VwbIRVv2PerAlbZBhNCVQELYnPVKKHiXEg/prBdmg2Z1q5GMGUNjywDAuwLZJGX
	 rtWyB1tX6dI2vY9Ki0BtsTNhlWOrzbKCBVa8nAWryKoGPB8meoJ5zuZX6oSor/ggHH
	 rj/ND/5Hmb3CJCE1AfG8Y7i1eYc955ewj6/tdP/2LxMLflyGGaCkdw3t3FIZnPeBhr
	 RfD5evGbUTE9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91131C36010
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174408179358.1450.15248001498159605580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9517370f7ff4233d64904f1161e2d861e0cbcc61ff475a770e6b74097ea4110f
Date: Tue, 08 Apr 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744081793
