Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 501352472AE
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790433034; cv=none; b=oC0fvoW7Rya9bqlh5BQiELXX5CsLrLL7b/C8Xm2tt6PJaggXbPvAiTWz1w3u8EBMEsJTrONYZlPy5fNe598oV+u0lWY8p79pm1+adRbc2LJQLnA8BhCTEimLmvoz/bXbWRLAg9uk1+FwwHnLHx/bFLWD0Js9n7bYwDDY1e4/qbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790433034; c=relaxed/simple;
	bh=fKkrrfQcmCRUfCnrEC28cwE7nonlAQSoZcG75Lvd9L4=;
	h=To:Subject:From:Message-Id:Date; b=Emp1iUVL/BAo4lCeg4X19xpArr0Z94f9IBm529nqFSruuYsOs8KBt7ZP6nu74RLWR2Lb22ia7YMZxrNBnuf66xDgeTWdRyCB/QzmBha/z8qlpy9p578jAOs/7Vu3I4wR+FN1qC/1AS6NXlZkXFQNvoinDqW61IGEJwARWqZbMaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nxF1OfZD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nxF1OfZD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1A9CC2BCC7
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790433033;
	bh=fKkrrfQcmCRUfCnrEC28cwE7nonlAQSoZcG75Lvd9L4=;
	h=To:Subject:From:Date:From;
	b=nxF1OfZD8gNleZxAXVWfYLeEX7EZimHtgNbuDVZUxwqmjFFXJD8Nvkq0Eme4YJM3a
	 pa+Vn0CbKcl7p+bfMubhQs+t9IESCM9qeqEasjG0OEidbIFw9JkFzZKnCRJRGsLtOA
	 a0HrIxV29qBbl2uQ1+i6s9P8PniTdBonbR21SgCaB3E2NTUV0RxQjSsfgGrfLb7DfP
	 vAOVsX/Xhe8ujYLvKbTX5b7c2YuA0dydcg8VUyj3X5Tol8yDWKWY7VgcJ+CDIUeNpY
	 bhjRlN4B7gvBg5LqtrYjl/snvM2iZGlhbq3LKdnjQ1pfbxQYtESXjOCIfsCf70I+5o
	 VES817flYZY2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC5FEC98338
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179043303368.22094.7804100791171974868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56f5f705995de26fd98934a6a268d1f2325f0c9cfdcb7e5659a90c475cf3eff1
Date: Sat, 26 Sep 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790433033
