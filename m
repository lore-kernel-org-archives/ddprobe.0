Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AFC93F99E5
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 10:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783592314; cv=none; b=FUZVUUVsKv0j2mH2WYpkoc13EbNYqP7EDnV5v+7u6DE7Gu5fIEsj5MGkWjcTdjMZ4k9wJ2Buv9CYDISM529P/cbaG1RM/3sWxT9nb92liT3FkC9/v9pR8/+bYfl/4FeP9kqvC7NCN05se3IgEkIJUBtUvjItdnCoa53JjkI7twA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783592314; c=relaxed/simple;
	bh=RYtFA9Qsoux2Xu8OwvQh5aeDrvAiknRfh2atGWq3F2g=;
	h=To:Subject:From:Message-Id:Date; b=OP0ivpnaKV0/OC4BeDiOCkFwJQYnmi0Q/9WIhLnvN/F2p7RGWkWHPYkW16jOZI/IV12qdAnXMd1F+yhxTh5uXw/E5r1C6TUT2M3QG25dlVBfnmwYhjQQberl+16m/EZnVi0xcsjDKMnrUlx+jQmYljYAGteskkRrqNm1+uv/MK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PnmVjYrS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PnmVjYrS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8306C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 10:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783592313;
	bh=RYtFA9Qsoux2Xu8OwvQh5aeDrvAiknRfh2atGWq3F2g=;
	h=To:Subject:From:Date:From;
	b=PnmVjYrSgUY5TwYSoVwbmmBX4TE+NzuIG8EmR13DLS531JL9J8zBWOA1L4gk8hZy7
	 Jw/v+rArne5be5JqgdAgs14V8DFheHHETsmY2MOigwkD5maEAFWu48sFJ28B7lAg4M
	 ROSBtTLILrGqH/DLeA0MeuYWyrlgHQPfnR0af2AYZsh7sBs37056oJcbvtT4+OmbWv
	 nzCGxkTjr4e2S8sGhiVVoo0xUd5ah0r71T/MWRQC6AUJ3Wp2J9gkQSm5T0E6g0/oBH
	 UU+gwfuOJcTHs/jaETvImAsYd0ZLTs1ZDSiVf68vVm6xHQauBWuSM+lwyDBCb6un5K
	 H5+MufUqcSn1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A88CAC43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 10:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178359231368.5373.15273820259195453824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d9410fcdef34b152a16835617da156b7f4870e7c76a8d990ef85cf928668944
Date: Thu, 09 Jul 2026 10:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783592313
