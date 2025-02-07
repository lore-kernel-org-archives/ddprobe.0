Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C7EB19C574
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738927556; cv=none; b=XVC8IAyrPIril+V+WD7ezGeBlqCeA4OoPhjQ/Xt3lwJuKw/8QtrIgj+K4vbZkrIatK9KWGpcmwveBOQhymbMcdKfSF8U+Fz2rVrZ9crFAPLwHEwkRhSGMSnc/lU8wNgYkfoUCoPbTfx9TlOoTRsTivH6Z5YdsBPzlLhAN2G3Kag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738927556; c=relaxed/simple;
	bh=OAcaWhwBVFEZg9e89n/GmedjFzgsjFDBrGG6qSJEskM=;
	h=To:Subject:From:Message-Id:Date; b=igBequfDoo6+OeLK0911hqcHFmj8fENzASYlfmMd4fN4ySbEWl4/hrs8zkIyrA16C+rpUaBJM6TWwpS+g0V4bpYbFu0P7eg6HGZLHLf0sL93pmB0NKSViu6L2aFXev4V86eyp91QupuPgNDX00BmkNfkgMnW7sWLEtH0/5hsSMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=izLbZvh0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="izLbZvh0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB847C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738927553;
	bh=OAcaWhwBVFEZg9e89n/GmedjFzgsjFDBrGG6qSJEskM=;
	h=To:Subject:From:Date:From;
	b=izLbZvh045YxI/4ygg6jiEcf+0y8AxJphaoe05xc8QXuvKeqiTX/qDdAERwhEhSW+
	 pLxrre3ijoWlF5AFoWGpiJfeXgz9EsnMrQFzt+Xh0bh8fjEegcIFycH6CjR7Cvuicc
	 axycoui2dNcOh06KNqmB4AET1UETFQtn84Gd0oVqRzehT+Ds/mEz9Bggij/UqqZiC/
	 9hsDJTJmKVO2vtFla/Codit8WoYLz+/mAuWhdh5DKx7ZeLrhbIuqDUFtNeSCEjKpGS
	 eJhxgG040tUW04O9odVvvNkfJc69fSfgGZbycMwsddHeTQclCoTwc1IE6DvihxEeaP
	 cE+la/qpW9NCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7D08C02194
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173892755367.27460.9514134599668025419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd92236fdcddba5445bc5ee784653f602012845f542877e32f7734e7e177728b
Date: Fri, 07 Feb 2025 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738927553
