Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53D1213B2A4
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 10:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719483263; cv=none; b=aEeLhy8XnQ8CV7agwnsHfhsgc4Ub/z6swyOZx2yugZdaxjNdpjhJxOvwMnCAgSLw0YKVPeNT6sR2Vz/JWRCJuEXh/Q8R/g7HMOaL7epOJ5es6+poILa43csKGy1d1cx8mdwwb3pyoXB4jgzrI2hZTgF1taioeJInRjpjYnAOak4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719483263; c=relaxed/simple;
	bh=jjeK1yV36bk6BzqvS1ddX9gvIJIel6WE+ABPlv6+nKo=;
	h=To:Subject:From:Message-Id:Date; b=hPVfatH4tcTAb7M7l0akx3neV4xy6IuMJRp0nct2SpGTkl/wl5H4g+Ws7vIdWh1IyyloZPRmt7LMX5kBH3e2LNylF10kCUMqEvQYAw+uJRwAILevbAn1ROPl+YqOlOSKS9kVCInOqk5sWwv81yDyT+0XEmALcZG9tQKV5XE79pI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QzM2VtsW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QzM2VtsW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4885C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 10:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719483262;
	bh=jjeK1yV36bk6BzqvS1ddX9gvIJIel6WE+ABPlv6+nKo=;
	h=To:Subject:From:Date:From;
	b=QzM2VtsWuffLlUzMnq1MRjmIK9HbA2f/bXpYSN3F44PJnUMxEX/DYBIAQfCjN6mEH
	 1cWpI4aG+GB+xa4RngVMyPD7WVmOKkj3vzV1BB0FblFS4vD1yN8f2loBEH1NNpnOKV
	 w2/ph9OYuI2SCwyQAPveike9ICnftdDkDniCRLg6rvA0OM4E91D5WuimKKAU4sbuxb
	 713BRTrX/7bMa+RZ3Od8z/IaWcrtnT4v1Sz93xnT679hqEr5GacpRoUqftEJ33pj+4
	 /pMZQLerNI5ygjcmSer/L2vaQVjYaSq28plathfraX2W5GVKZ4M0KAUPpSlpk6OFu2
	 tC2H0srLiKBCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2238C2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 10:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171948326278.15902.13499461629845699980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7eb7063dc040606d3eac495528d8b2bce52cf8764210254093f64a31210c07e6
Date: Thu, 27 Jun 2024 10:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719483262
