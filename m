Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A6A225788
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786987834; cv=none; b=okW4S7LcGvU2IdGBIju8e+FFy0g7VjB5F4c5YAoa0mYnysvjO3/aIMVusO3E2+AgIfV3oyH2qspzLXkTH3kEwsjOEixQ/qKz5xQYUnLAUwXbQf+ku63VV6eFGuZSFspv6QESGwtZDwd+wR6HFWlmtEunQvpiheMiNIPckcnO7MY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786987834; c=relaxed/simple;
	bh=9k56u6J6WHylvxeFMYZ/DGdiP4TGmz9UYZoyllcNtVM=;
	h=To:Subject:From:Message-Id:Date; b=lrgT7jtE7KuoDxgEGNMxjT11pF0lolrs6g5WFIxxLlv2rdTwpBG0uJ2FxFUhZUs6hoSoPAc9K7RuJnAydJeoaGPz/CNk6RT6TwzRKhQa5juELsRkFgnXTTXVZ2TUhRzR6x9afF8ze4pXermPm2FVuz1SO6R9TokJEyvCnlxAZBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KmEvQR5S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KmEvQR5S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2C78C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786987833;
	bh=9k56u6J6WHylvxeFMYZ/DGdiP4TGmz9UYZoyllcNtVM=;
	h=To:Subject:From:Date:From;
	b=KmEvQR5S9ZIZSbSW6MmXO+U3C7/xxvfKyxCCedJ5hlHxDqN9sNavAvvZ1EQMMnwJ/
	 TQ5DVLxcUi7760jffUZY9h+bDcWHQamdzCfFMvktg4d64+ggsx4ULArmUBAglkqN62
	 UM32kCoikGaryRmAjtcNk/NOG2TuQur1HG3Hg5TkU48O3DgeK3NTmjChrBa+CMZIve
	 CRK5rJqo1TGeY/ckTQBNH67jsn11YbofK/Ur3+nUNNnpr98Thj7fYnN+6IwTDfq6Te
	 a03SVGiCMhacipK9P9UAd/W+G10CbgTgx3vpchDopq8dz/hqIFYq54qkKgbNBU6lII
	 GXoSMAf3NXgQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B829AC5DF66
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178698783374.21585.369569462551315024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31e2d67ba498f4f83f71364ac762520b0d678d7c23fea23b76c1115517e761ea
Date: Mon, 17 Aug 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786987833
