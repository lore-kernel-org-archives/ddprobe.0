Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D991D5146
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 14:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790519434; cv=none; b=oJ+KfDv5tECUUunNqodCOGosTm5THfakVkk/rBiO+pyeOVKj55H/xhhg5ZrXOaPLeQFCFHMgf6XlVtmuysMe148VaxsRD0uIWqYuseEGNM05XCE78JpBkyCj3pQBN00oEPaLjXqgYuyYkcFj3YLEM61hUQflMv6JOqo2eCozk2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790519434; c=relaxed/simple;
	bh=UKauyonTFlqgE3p/wnr++2X4/rGlrqsPZAAeYP10WwU=;
	h=To:Subject:From:Message-Id:Date; b=hxksD8OzpQU2GLjd/EZxLrwiJR48V4Wq87h/ICzZctZZoIUcqohj8cnxFgx8FodC+9DO3lMVOcctr9wiHRv8cRd75rViMVbcVgCP35StpwwPcC1+59CKQpG9BqmloONrg4vzwbU8fnIAAP1lvI/mH/19cHNvG6QDnc2aIyMQzQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=odGZjhCV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="odGZjhCV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBF6EC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790519433;
	bh=UKauyonTFlqgE3p/wnr++2X4/rGlrqsPZAAeYP10WwU=;
	h=To:Subject:From:Date:From;
	b=odGZjhCVQJaijv+ghNJNXRdtgMFqqKeK0fnpq29uaRb9T02xlIOt/GPt80l/ohIYn
	 emWllhGp6wpLQpnrM/KSNMytQjJkEV3l8NfLPhM8gnX5gZQaRs2/JF8L6lONzTUI3D
	 SxaG01Qqh1jV+7WsrGMw0JQkNfkYQ0hI2wb6cE4E4mizPp6/RTrDdvVyaZIfjE1Nhw
	 SnHct3NQnpTCRw4cOMvF6vFV4kr60oEAq71xYDSHPGtDC/9hAYu/nXMRXbvuw0I5l6
	 7cz8zIubDmBTOCxzxz0xfBJ+dKTEgDH3ALYIzG1yq2GRTu4e0PyM57uKsclkn9Uipj
	 LQ69Hm5PGDaPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CA5C9832F
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179051943368.2225.109137869297527388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f7f3117179ae27b095f31c736072996d04cd93d324fb92e40f575ae3204fabf
Date: Sun, 27 Sep 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790519433
