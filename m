Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E0BC53A7
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751428194; cv=none; b=sCET8us7V6qRRWg7zZ8Wz62qrTh7/DUjCYnbdu0L2U8wk0vszzpH6OIqSA/plOej+TWsd7rc+Gh2z4Bmz5tNK7+IwcXilwK8w0j1WLvIwm/jdZ3d1zjEk26fVRWAjFEtT/jxTbZ34po6JKXro4ljqOO26NxYqO+yzuMCBlGSTE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751428194; c=relaxed/simple;
	bh=F7BB+1pxO/iJ/rzVdbgboYRFTFV8zqaoy+CItDlnpRo=;
	h=To:Subject:From:Message-Id:Date; b=KZLo1aIZyy1ZcjAPQzkLEqjRV3OoR7SsQy+0IPdqZzSkssp5elqXBXJ4XoJfsFNXZS3n5QtbzY7E4Z7IJ+YhZ9VTF3YH7IIUKvXCGKYwIlk9jOQsr1upJ7eYlCd6iMig6OqPDmxkhiZWOpXJYngMeTO35kXlXbhthUhAme5btUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eZrtC34M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eZrtC34M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D769C4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751428193;
	bh=F7BB+1pxO/iJ/rzVdbgboYRFTFV8zqaoy+CItDlnpRo=;
	h=To:Subject:From:Date:From;
	b=eZrtC34MoTx7VPCqG5mmNN2nO8PoRpbno7jqnhFYuS+IMZZnreD4hzJPOUbUnVX0X
	 HMWaFAkxbd9G002XzjJKw94ITEZIBCUKG9bzhXgUuFEDQ/KTvJ3j4oSccaE3GtwICi
	 WA4WzniYWaUuyds9XnPgpJ0QuCnYRJYiy96urgkTQJLG2c+f15V7afvKERr3K1wWkU
	 ++QwAEhIvxQS5wB7pcLZAfgZq+cQCP8zgok0MMPHmcNHFAbpEsphk5mE4ciRcgNkZv
	 RVb1eIu3kvCYY3xwhEhAXwYT45J1L8xIgyvLgdO4zDLhtQMkEl/76tMoLoc7M/XO+E
	 ssY6zccFcupEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9AEC83038
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175142819357.11092.12399543859055864003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 599d20208d9cde830d26cfece173953bece65994b083bbe613f41dcb35119e99
Date: Wed, 02 Jul 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751428193
