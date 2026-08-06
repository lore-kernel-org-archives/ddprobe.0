Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 427F6248881
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785983434; cv=none; b=frLbf27d8a+KuJjtyGm6hVDOlOtGn/Gvco32QH4wd1pu/jzAQ4m/fBolmrNVJav6MV1ciaSAS7kP142pRZFfbbxZEiHw4c4M51N9AxsGkXW/qgTMdN3dsd76GyND2W1oXWJQQZETmSrLhDqVsxYzN6Vyy/MFWDlx3uRk+TJE5Yw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785983434; c=relaxed/simple;
	bh=ax/y+YeCi+V7uy967O3fNBp0j569D2t936417rxakdU=;
	h=To:Subject:From:Message-Id:Date; b=KiL7plaIS4qO5NEeUsmes2hOeALmhjmgQ7T7S/1mCoc8/ML+XPztN3G1z5ow2Rii5mHWQh5Zs8Z4POp83LhtM6NsgI+ma6pMnYjzMiNJ0XPg6fC61ZeD6sfIFen0uuXvmDq1wkAaGAzmTnfmGDkMKkj6FU37jevixNI6o+bXW1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T8VEcJJo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T8VEcJJo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2A14C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785983433;
	bh=ax/y+YeCi+V7uy967O3fNBp0j569D2t936417rxakdU=;
	h=To:Subject:From:Date:From;
	b=T8VEcJJobyQfW1zcj0+UuKgLDZHRjukFu/SBA3i5ji2aB3MuaSp9KPxw2uNOZ7RIn
	 OFfbygsBIMNAvmR1zd9icgwFmFWQYvg3uSa8G8e9oUxV3PZpvPRqPJ+Mmc7gkto2Od
	 44l5hilMzRmx5+hkD/pxSAcBNZ9Ic8+N1motrtAaEb+NOksaQNhA7yKrRnJ6s+R6Fj
	 oe1P8jwYC6P1JFZyht2FeJciKHI80k/UwIIQ+ZRSzNGTsP9w/km1u7hSsgAjrS5Way
	 MqTjVtgsBvGq5nUDsc40upjRG6KB8f2rXh0aXorpm3wk8P+xPlMp/UxxsFg+8h5QJl
	 QL9Vkf0xutdiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF95C55174
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178598343369.31801.7631530226282626252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af20ab4c0fc6ef5c6e283a27561e06ec9af1a5a2c88a535588a98b5b3da54926
Date: Thu, 06 Aug 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785983433
