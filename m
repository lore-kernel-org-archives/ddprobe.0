Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3278E330650
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 05:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776749854; cv=none; b=h3J1BqCg1K+bDtrjYEO4dqHnrv+WzzY3ABOlEdhYKG414mSB9ng3uiT9pynCxC5gyDDEWSRLBsJpnzejdhS4Hg3FJTxj/169eRmMbBNAa3/msVAVJrF2ew68ue8nqgA+7blN/K1ZTguwA8vWC3MFzHO+SKu5n//Yn0ia4qxSYcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776749854; c=relaxed/simple;
	bh=h+o2CZH5Ih6M9oZxd5rDwjs5ExOWpkIV+pN2ocLOLUY=;
	h=To:Subject:From:Message-Id:Date; b=YF8IP//zsYX4cBRblvwreos7164A2usJrGZA0FfIXZ1ihAxZ+uNjJqtgYkwRH8w1DxAUih3968/nbpwRXp2Q7DCaBgKCjjCNz0nm1+5WLGIDoaULUhb0rvD0UVdLUdVQl1YZyrX57KwYtbmZppHueHGTfiPZReK8b5gELrkfpgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=anPW8465; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="anPW8465"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE295C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 05:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776749853;
	bh=h+o2CZH5Ih6M9oZxd5rDwjs5ExOWpkIV+pN2ocLOLUY=;
	h=To:Subject:From:Date:From;
	b=anPW8465Fi/NBrGRDJtGa7nyVYWvR/6Fr/01jlQghEiMUcof64cxK4r7LRYACRS0/
	 XD5SzGxmD2BDa7tM7ccdN4YSKj9zSo9VddEQnTo88TZPls2W7ZxAxafQohUNW9RT6e
	 z1Wa46AaG8YhEr2gTgEo5wwApDw648YaylBpGTpylslGuYdaxAY/kDV3qGTI43AcKB
	 iFeT7KSGp1E74a0LGXrL4WaUcLfQNUQZTPby8i+0lHBHXSsslNrWW5CmHy2O5iegO/
	 WNZypHm+tap8vDKnkbrxx7gUxs1KeYC1MFGSqtkoopCgIjuttW34xOtjjDscWzB8J5
	 S8qG+uMmJNw5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC693F5A8D2
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 05:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177674985368.20809.9354592507425841772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dda08178518548b70c78b4da504a4d4b0ceaf24c39f2dc03d461388f261cb95f
Date: Tue, 21 Apr 2026 05:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776749853
