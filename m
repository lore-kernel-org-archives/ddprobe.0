Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 460461624EA
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747242594; cv=none; b=gvhamKNH2A0+ckGCSQk/JQq/GDyu/LZGFHWsG7Yk/XBgSM8j8bgYS5D/inq417WQDwhG6+Fnr+SYYYhfparFrAWyq1O1thIWiCO2MfzNq6yiNToSzH85dAj8lEWRafp+3SXU6/dlFevtgZbJAWNyj+g1aSI2O8wQXn/WSlfqOCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747242594; c=relaxed/simple;
	bh=4yq34ush2vHFPFZm+z2P8qmnmfUVlNt1kZEocxqfnw4=;
	h=To:Subject:From:Message-Id:Date; b=DCkYmQhzaogG0OLWoYmsWGMY7A2lawpnBPmzallwy/cb7uYiUVgkPVVYNt+aWALQ5Ehq87almxme8fjLCvWig9KTukrLq4Ppf72KcOyC5hag2D+oRWQT3wybPeP5fzedREIiz7K/GSLJU8yan3B97YEs7cYNEDebQPqMG860nBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l9CcPT20; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l9CcPT20"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A255AC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747242593;
	bh=4yq34ush2vHFPFZm+z2P8qmnmfUVlNt1kZEocxqfnw4=;
	h=To:Subject:From:Date:From;
	b=l9CcPT20x1EhQO8m3QF6UaV1MXuYKZgJlJCZZdmEvHr5Lf31LFFa8+zfsdS2kMV6u
	 UKdEwvq2DrKUh2vUTxJ+TEaBcgQbhSr4yo6FsJvSV80RBJqzhO16YthK42jyJPWjnQ
	 xQqikaOxoJHi1FhFqP0tWpwYTKeN6PclStswFcGivPN6edLzZnvwzP6oykbamtMdXk
	 JW6Sqbe/qIvxQzw71WKYd/doK6o9TBExCEmPDeG68ZdwUZmWVNf/bI/GXnTdFkqBCF
	 /f+HDwJy0FkefYGs3KFwHJy4Sadsiu8poOHcHTpxxZlCHAIkNXa+RFFqd14Ky//TD3
	 dz8MjJ9uoz66A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F601C3ABD8
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174724259358.5773.11157187187069880107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd266595b59fa1eae4d4c9edce19fbeb283b130675acc45de223c2a92bc39c43
Date: Wed, 14 May 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747242593
