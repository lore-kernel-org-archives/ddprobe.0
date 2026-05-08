Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A6DC373BEC
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 10:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778236654; cv=none; b=uL2dA6StcT01h5VOOD0/A+ZCIK2pUOx/41ikt5EJbWN2pbdis5MoPH+xUiCtmCaLyEc4bNFCn9V9ABe+gNFQdt74nhIIpzHTZRpq6y5mQuEBdGoPfo9tWAWhfuYh3USk59gkKtN/5G6zmWKy/jVsSYpKUlG+F7mu1xko9Ws8FX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778236654; c=relaxed/simple;
	bh=mLjnXC+bf9CrKHGMv0HztDPStGk2rD69PJJVtEfnmx8=;
	h=To:Subject:From:Message-Id:Date; b=M1qwsR5w9z+jo5YKyv744C7aVWDdNsqfp8uKNOpqmKG/6j+ffZjXbgVfvDEIBhYUsnn400DGNhPoYA1jrs1ax0ytLcGyRJR/ON1GVfeCNEiEl4sgujB+OV+iU7Oem9x7tQl81T1MzOuoh4r9AwN8Tx1GHEkrjO8O8gtiZEklWls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hiMnwh1P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hiMnwh1P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAC07C2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 10:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778236653;
	bh=mLjnXC+bf9CrKHGMv0HztDPStGk2rD69PJJVtEfnmx8=;
	h=To:Subject:From:Date:From;
	b=hiMnwh1P3udwGSu6gBPQ9do4YK7blqcUnVLzJeQ1ol7CD4+lhAjTHQpv7UbftP6/H
	 dnUgFBooEVENoh7hI5UJD4U0zy82gVP9TD3QoHf7fsBiJzgvUhY3wOmidnlrR6Hsbm
	 mBHgiIB/5FNyma6z4rRaKn5zDjMDuK9S1S8ivAAp5WG4b8mpVaYVWPLJWHGI7FnHs2
	 UsicoxmEdrOu1aAti6xb/rLDbaLR/ETfgBtKpcgy3q4GJg6jfONCa7wabZGY5jZggs
	 DgllCmiEWz6gvBWDxjkmjenaCWytCHLENE9SXUIS9e/qRMyA807IoCt0KWlutZsFUy
	 Vc7JcLtdSAPiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AF0CD3436
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 10:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177823665368.21752.18441022987460169405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f12792c6f95f97ca689d61603bc0dee8ef79af786e2cca0d69076ff7a6ef26cc
Date: Fri, 08 May 2026 10:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778236653
