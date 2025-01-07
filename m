Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FB5A86330
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736274354; cv=none; b=GO8YCeS7lG1bvNp4QFE/7KpUQir5XV9cr6lKDV/0Uxrst7UaNIinu1TIMF5kUlEm1ag441VLPfVUlxVsSmxglDRTFtg+KAm3U8FHvI74SRFVgbAWQUZovCkVdcqyfFaGm+0U2AHZY7b1afwniBsoLj8q3XXK4gHwgvax6io1Af4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736274354; c=relaxed/simple;
	bh=GZe4n1UodWGA9T39MViDKO2vPVcb7ALhzgZQIh/XyeI=;
	h=To:Subject:From:Message-Id:Date; b=hCEKo140/cqWMJ9toM9+s317MbrGliS9LWSA1UpH0rPKkDHrEATiyGWQpx7U6n4qM6GQnYRHFyFtW+nEFuiX5y/fNTF+xtBQ3e+sC0QW8KvMoGFgEyallAsPQB0bnmsf8aFG7O+ULB4AIeX1lAQLBDYtqZuyLYOata5cFVamJcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n86vrUsU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n86vrUsU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87E4C4CED6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736274353;
	bh=GZe4n1UodWGA9T39MViDKO2vPVcb7ALhzgZQIh/XyeI=;
	h=To:Subject:From:Date:From;
	b=n86vrUsUeFngIFe3ZNAUPGgoM5e8TlD3hCBob4d9iyMBVBw2RfjHxW0tz/IBv8fcb
	 p0sfB3fLYcxXnng/B8M6wcPH+Mj4xjJB7fg92acxixgiKaaCHbfxcRwMOPejdhHLcc
	 oWKw0iJPkkLMRKGHrYQEJxu0SBXVVpK6K92RxSCdCALyGgBUzrO2Z7Yp2CTkpiyA+T
	 WBRvcS0hUvdOn+MBQITPo3BZI+yOyk8x0M93ObXGfuOEC5xQk1GmgUrV1TwLc5u0zr
	 bX8kArKfwNyQczP3vCsaqAjmSYKle1XV09E+7SRCANWzFB0I40M6onByzKoLz63Yy0
	 fg4M8CrUsZqlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97143E77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173627435360.15826.9292073381470571310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be88bb1798ea4ba56f29e99d6468056ae7636de7d5d4c4b6c18525f92ac6d44d
Date: Tue, 07 Jan 2025 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736274353
