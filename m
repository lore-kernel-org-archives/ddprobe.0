Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F40B11C84B8
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 16:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773852894; cv=none; b=m+01WHtaywC1UQC4iTswCj4dvMGc4uJ9wvMGaYY75qu7G9w66o+zWwfrO0pLeXb/btUDGTuzLy6k5fXp/0OdZbKryjerPfdkYzPD/YTL3DE7qH6SIvMKlMtrO9MhmmTFApos6KUtDyYnNYu/t2/YfkdsTZQKJqX8ABlLxW1B4ro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773852894; c=relaxed/simple;
	bh=i6YRV9QAjQv1R9RQUbTdA3MGKf7ylqCsuu6djHie3og=;
	h=To:Subject:From:Message-Id:Date; b=Gvj2jVu7hllCmuz6nLkMwNXrUMofnnM38BW2MZC0NHRF34DiLYcXrbhzFHIdAFQWr16Tj1tUBeODxv6chXNY4R5216SJsWY707qrAfx+xbe9EExMMN+lDuRAnNH9AtC0yVVB+4Wv8BpHQGTeW9kWtlVOL4U/VXxitbTS06rq/eQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t7YvNu1t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t7YvNu1t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2587C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 16:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773852893;
	bh=i6YRV9QAjQv1R9RQUbTdA3MGKf7ylqCsuu6djHie3og=;
	h=To:Subject:From:Date:From;
	b=t7YvNu1tXi/6ETaqua77jd427wTY7m3WQEUw7B3OEU3umGdNEK3F+Lf/m7u2ZZACR
	 yEWOysoWpcGr0r9MeitlIXVvkeD2JKM1Vp5RNB/joVCjEgOTaUXHmBr2ePit5v4a/c
	 /YUt1PfsJruon68iv7JIkSus9jyPvyZLC0AVjDyD/C8W27fJcXQJSgEIsmg/bvQd13
	 fdz77N6QPpqO4dlOqgh/K1yhLrP1EIWuMHfKPn2EOct3E91TGsnNBy2N4DeIDqOR+I
	 EEUOu/chjzfyoJK9ZAAQIrKM6GU1oacVozrbGZY0tEKAVlk86rqimLB19wryV74fKF
	 5m7YZ4ou3a6sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9313210775E1
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 16:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177385289359.16431.10044651103261413668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 539c8c7ba7bb23e20cf9257d0eee7295207da42911c1992335dafe8f0f00145b
Date: Wed, 18 Mar 2026 16:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773852893
