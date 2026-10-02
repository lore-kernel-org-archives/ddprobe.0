Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E9C8495040
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790972434; cv=none; b=e1josDlMRe8hknYFPDxtSouy7xdXLYj0qLyqirjnDB17B9zxwO08BcRAc61dq3gRPSLWrMsbL/fWgb/U/C88mjnJxV4iG0So3X5ogw65CmbAFFWqaHBu9d617+FLcLssd/H/4bkfr7ofZS2JrHMDvyMFJv/5FJ1M/W99WRj615Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790972434; c=relaxed/simple;
	bh=xXK/K8nEVHa0TPnlbicCUSdxRAY0N/kQdTQ28USI1gQ=;
	h=To:Subject:From:Message-Id:Date; b=Fx4wIIuYhEPe8rfelGsKMsisyhTO3O8E1leunM4TKgGsnlYyOmn/4AYZ9PbS4CnkaD7h46/rksMp9kL7Af0pgF/b97clKFGfeN54BMfcYSdEeEnfDd+Zb1slYNfwtetWNvOF088zc1Koo8ezi4YG5fk8Vh5nM3AUt9AIzxkCAhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FYvlj4ZR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FYvlj4ZR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F8AC4AF15
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790972433;
	bh=xXK/K8nEVHa0TPnlbicCUSdxRAY0N/kQdTQ28USI1gQ=;
	h=To:Subject:From:Date:From;
	b=FYvlj4ZRRyhG+g26QLfnMezU4Uknv10PQtb6MbDLpCuIQmYuqrxHh64J2BjTSB0vz
	 RcfUI+Pw+DFHskkiqNvMzxFJ+n7YO9ysgikUGMTNkpmGaLbpA110QR9A5jsVzcWyPD
	 aiLJIMOGUU9/fM+t39hGLSSWNWx1RFLHKDoHUifRTlMa8nWouxum1AI1g5wMeg3uiJ
	 DsA5crPrFfRCUDjXOX2RCnVi3qxOceCyOzdc5pUmvJcHfIhowt8PrUMAPhoDJk1IQG
	 ApCN7CwkBHrQcyCR14VgPtjUN0ZlaijMaw9E2ZWeF3qErKMszW1uXHLOwlHh0YyRif
	 tkADOwNiABjVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC032CA5FDD
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179097243369.27531.2305117201006960851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77d75f39d2f4c3848d254cad850b450daa658717983eb8bf99cb38596911222a
Date: Fri, 02 Oct 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790972433
