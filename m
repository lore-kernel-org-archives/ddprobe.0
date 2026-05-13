Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E52033E9C0A
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 09:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778665834; cv=none; b=r8RD3n2ZBzroZOJIAqaIeAjuHIf+b+j/eHMA3SsdXAAhLcyi4sLpVmS0vShuLhoEXlf2onlkHG1N+ahtfgAjOp0rOlVcykDcBU5FqPRIVuLrJgq5tHe/0wt2qsxNQb0Fx0Ft4UYYd4JpIQCqYhk6hpXtHmNZGitGVhQjJuZgszw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778665834; c=relaxed/simple;
	bh=ZREH0YWHimjRzp4AaIeL1rLoiB5XFtFLP1RFT4ROmxg=;
	h=To:Subject:From:Message-Id:Date; b=rrEvSqZdMe0I0JjqKYaP3QfLDln6zUV9NQmflTvdqCdYLJMAAeJKrmffzG1B3R07cjVYU8lPd5NzaxHa4NYN82du/ETG53hQ/bz/fM2S2bkzt6u8N7cLUIVpTKDSsfuUbYd32BwfMk3C3GhjBe7HpWxDVw8YIOLo6Xuolrovx2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EuquqRsB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EuquqRsB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC588C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778665833;
	bh=ZREH0YWHimjRzp4AaIeL1rLoiB5XFtFLP1RFT4ROmxg=;
	h=To:Subject:From:Date:From;
	b=EuquqRsByvzZf0SSXszlW0nBX1UWSToAiqGnzO1opQc8pSLKRkE1Jubd1nyrW8Uc9
	 n6o2mCBLAqBqsGIo6dmfws89S9sTogDQfIxWrHm3cXugMFGVKqInmiLPS39a5NGiam
	 BBgW3HRIJrmGOTGeEsv/1/xQ2ooZDgvvdj0pN1xxTLEqiE4LenpfjrVVmL8lgcXYI2
	 ruL6odNjziaJr5eeo3gT/aRd05ZIGAg75qEGI63NbIWJ8rlI6gB70gmgibzZNckEGb
	 EQeooR8kp3CczxLLgsbUCmqcMZuR9ICP6LciZ4eW66OKpF3THxF3YVG87CR/rNbZ4W
	 XH8mr6mlfBHqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB845CD4F24
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177866583369.11957.1542906152797810494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb07e59b841f44ebd7334c26c5904db6ef217f3287c98f7eeba57b16f110b592
Date: Wed, 13 May 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778665833
