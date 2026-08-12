Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F1E32F6931
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786506034; cv=none; b=FaEnnWSnvbU248UyRpTO3AZGS+jmm52uZ8jD1swr+foqSv9z8T5rKCxbSy6J3ceaH5cLnwXanJm5Sv6odiraFLxYvy3w5A6JwQNE+UUs4wM+GhuGIIvA5WUnRFau56f6cKlo5C+j8I6JHoGZEUPTi7j4cDV3WgzPmtV8b60DUq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786506034; c=relaxed/simple;
	bh=NjnsX0LDXIwjiec1hJk1d77yWPS+RkdKRLnPXn/2NCU=;
	h=To:Subject:From:Message-Id:Date; b=f4cWzezLMk1de9H6cpVp/kwKF1GgKW0C5kPk9ZpNKvwfG2W9ATT/6zgDBrj30fxOHhOP2wV0GHXkrjODeUVdgqCay7IMUQ4EEQoNTLkmbs4Dkrs6Ytwk3g8fiECQP9quoepZuQFYI/hvIM88rT1hefQBeiA2QARgVWLkD7SkF6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AEzFy2B1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AEzFy2B1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4A6CC2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786506033;
	bh=NjnsX0LDXIwjiec1hJk1d77yWPS+RkdKRLnPXn/2NCU=;
	h=To:Subject:From:Date:From;
	b=AEzFy2B1M3oS+iUIxhVo417WT57bsJ9NoWXPAoCcTRbR6QLaX0lPdmbwRu3o9rgRp
	 YhakNQ88R1H998UZNuqjVBBZArJI/sqcoUc/Htn9nq89hmV4f6iTAWnQZiF9ElKE/l
	 FcxUvimKhWYGCJVBtIPEbGcBXZI2hGqrPwYynPufAJTmGfjpRRcGmH27fVnqWbERvp
	 LMtPXbRVBDzIFsxts6GBqeU7MB+YWAarHNS1qqvOJJ/EYtn10GV53ArMq7OdVmcDNw
	 PV37KYw79lGrPphNUIHCRgkTNkDEJRNpePcbvxAfG5TwYxexDp8ag8ke+2TdcT+a1R
	 OF6vZNcsxdYoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B310BC5AD5A
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178650603370.16600.4838661731383465276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9843ea6f70043c9d2963ff9353c0dd59636b5f25d32b89ae6c604f077b7a42b7
Date: Wed, 12 Aug 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786506033
