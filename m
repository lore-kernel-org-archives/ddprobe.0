Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3238C1F957
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737122154; cv=none; b=onqQpBH94DCcJq61nCyschAvS9DjUVwAiNMkdZJBrfaZ36sRj5OfYRxoyNE2KU/GaLYXVaXcHY6XVMCEKBZogplqsiWo1ObTqrryCb7I4N6X+DSiRuBhBQhxfSpIdDcFlTAS1DoAR8LgGq3wvvCPQDHhm2Udwf3FnUXCE399rZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737122154; c=relaxed/simple;
	bh=VUvvMGcWFAveF7oK9vKyMtoB2gTUpr5Fg8NPo4mEW9A=;
	h=To:Subject:From:Message-Id:Date; b=Sr6O5Lyx0VtifiJqbbXmHfSqIObocFmY2FzLMp1Y7vHQMnKDB4cOFrDi1xcx5ec11n+TgphaIHhY68dTj6z+RCbFygDuq0nExYpq1gYcwi+S0nZAAtuPVhFfSSqJqhdsQhqq4iEv0URmpaBDjz8IMugtLsEuFPya8HMIU+9ID9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HcgcqNop; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HcgcqNop"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DE6C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737122153;
	bh=VUvvMGcWFAveF7oK9vKyMtoB2gTUpr5Fg8NPo4mEW9A=;
	h=To:Subject:From:Date:From;
	b=HcgcqNopAIxsK48JYTX3pOwj/NTjSrjIMJNH5YN/bzm3xeUfwcKfswsw8qf6QX3bl
	 nmlii8bJZx3t1+IFLWKqen4o1A4ooxnUBFVy94qVCYVX7KGN/vZDsk4EH4DjMusvlU
	 /Q4OLP13GvXi8gWITFjwXCq/pDkGF2P4tGY/Is6MMjHgOR4PXqcN2abOXKkh6bus+8
	 YN3ITCiYQj0yTpUO+7yOoma0cUn4Y+NZGKcaW2E1dEnaWfaJcwXrX4CFMOffXTRvTf
	 WIzbJZ8no9latT4XR3wOcTNGpdHDMzc9NnUkszYK5FVwiElOoepINGZaFkpuJ7s1JD
	 v1YcbHFmqilPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964A8C02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173712215360.30291.12350138056305405201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b8bb20178136d05b8739ff4a8ad8a3f0d916b1f705f4c6ff2d49f012ae9a2c5
Date: Fri, 17 Jan 2025 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737122153
