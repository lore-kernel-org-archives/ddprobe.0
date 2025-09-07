Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 269AB22370D
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757284195; cv=none; b=tGSsupz78TMQ3INzUmAYfuyp0rp6jyU/4LAc9TSuSwnIt7u3U/2/cEPEKQDLZCQPYP5hhTBlLTA9VrjRr6UaTjENzPo1rosgwxPXHLYM6kvtVy/xwQxyo6fIy2WMCxPC0aqgjgIM/ruaybWFjCqvfrubjfrwcjWUrR1Pv2+8jbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757284195; c=relaxed/simple;
	bh=rpnGcjtGxir+KKf5T3/92hqON93DgZ6Wcd0lOuTx5UQ=;
	h=To:Subject:From:Message-Id:Date; b=gWYA+pHQoFbL5d506MNyVTjlPuKmhX4R5relNNyr4qDcuuhyFaI3eNzDNUQD+FSM8eJjGuhLnvgHZI4uhqVGEb47zQ3ew+7kaNISJdP5opyJsVfocJXkjbs+QiDsbLbY0HzKwoTKyqHLFIApTKThYj046LTaO/AdztdAMGtM0zM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lP7+lfIM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lP7+lfIM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A45C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757284193;
	bh=rpnGcjtGxir+KKf5T3/92hqON93DgZ6Wcd0lOuTx5UQ=;
	h=To:Subject:From:Date:From;
	b=lP7+lfIMqvS3TUp5iBuW+M8pMMvy1bQ43fDolXm31MbDQ3e+B6x/yQRYjHzKxHA+I
	 8u8fl5r+NfFRrGN6cv7E3o3isl79iqqrt76y2XomUKsj6FX/hD1rLxQJPxf+MC7nq9
	 +btxwZVurj4onBi3CWKK/rLGrExoqjf0FHEsqk7aAMM3wmEihFwR5aQXG+7+hSVeXi
	 lQ32oKLzeBFZbG+4rDlxMu7d8HBucr3QOzuy6tdtUmOsN8VM3dHBXnT0DgM8X/39Xc
	 4khaqRQb9O0P1YajN0q7r0jxLb02A8wcMcReU4VQtDGvIKdYZ1hP9lScYTNkD6Ldvk
	 k0PMP9kVdCOmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92183CA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175728419357.21111.16980332906188948737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0e92fac561aa33187855288ed3164be78af96b518a2c435f3cbdf393488f7f4
Date: Sun, 07 Sep 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757284193
