Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BB7B39B955
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 23:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783553914; cv=none; b=cIrbHfWKLOS/e9xiIiAOFolY4hNWCv3LNWUDjil2C12c9S33nR7tzfgJtLrhZigqUSdu6GB/B3ZhzTC6qVAEkyx0HMV5zVCwRSpj3CDh+fhO2/fVIOaLsJ2ar/B7DIFTIFa6UTjpkljsE/MFDkAp4Ov/vInoElFbICDtDlHZTm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783553914; c=relaxed/simple;
	bh=0KlHPY26mCmq0cta5SR1kK84dtqfggUnVl82xq9Z9/8=;
	h=To:Subject:From:Message-Id:Date; b=g1mU+1R2+qFqbSbbG2+mSOGQT+H0xReGGeTiKay0njA6xgfF9o+QGrdG/sN6leX8K9CUeh2BMfgKE7D1guW5s+ozxQYA3xlRgcpderjeJMkK86VSdPuMTPAlDf5tDFSn6njy6gjPqLhxSEm0iuQZ0wpyJkeYG/ajliBkLf9YU3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OZM141CE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OZM141CE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8673C2BCB7
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 23:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783553913;
	bh=0KlHPY26mCmq0cta5SR1kK84dtqfggUnVl82xq9Z9/8=;
	h=To:Subject:From:Date:From;
	b=OZM141CEwNW9H2cWFnKxdfAw7URCEW9xWWgIczq6ynaCwk8CDi7djCHQNlyWqi0Oq
	 FR6OGIi9aoXzCpcwM4LKLTzB3m8jGXeG3UtI5wbJiswkono3afx7M4vqsi8d0ZPc7J
	 lMJeInw0p4aTkqC8YAdeVekmvpw1I+LFRnfde9h5kz+tPz777lkTSM7uBlD0W9krmC
	 7b5gT51TuTCPMlEVaXd7wth7zKgZrwD+4LUbxdAM2JG+RrlD7u16snSZk/un6BqcA2
	 eqh6rCjAbya6xqkllJdnXB+of6gLEIvQbzFufzXiu5QyWih3Thp1YeNUeLS1+RWWHu
	 LE972Sd8YIFYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A84E4C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 23:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178355391368.11062.18369090330820536455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85a3bfb7487eee1dd692288a48ab6ac1e3352f22d24ded1a9337209e8838dd59
Date: Wed, 08 Jul 2026 23:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783553913
