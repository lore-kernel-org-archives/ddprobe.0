Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C232E32C938
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762799393; cv=none; b=HIpVTBx4ZcHXxXUNJ/f+d27x8BKLkulTP/QlnUEssHs9B/NmlrXLO1gAqFTbaBNUvAe12TFlXm6Ju/LJsf9U1zz75hD9Rjhqcio/imxz3rb8/G15unurBrMXDgTQwr9Enmju1MI26Z+bvZUIPE4+NegYgdVC7NfMDdqGW/2y7Bg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762799393; c=relaxed/simple;
	bh=JXSP7GyVWVqaDlCSgdoLpr2kqt+O2bmezVDb0hlF+k4=;
	h=To:Subject:From:Message-Id:Date; b=WYvoUSin3wbIEMXqo4YwWatwNpbyHXW38e8WcQn90eq0G3vkKTR7WS9AXiU78ipois8aa1EER3PS3pWKLi/sP5R1eRSdIQOcCwXG75b7Ge2SjlCi5ZVnlXWaoNYzolEmJtwS6fAeng9zMhBOeaEeI6NMozayjSx4UGtBk/KnnF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qKOV4Hvs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qKOV4Hvs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBE4C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762799393;
	bh=JXSP7GyVWVqaDlCSgdoLpr2kqt+O2bmezVDb0hlF+k4=;
	h=To:Subject:From:Date:From;
	b=qKOV4Hvs6PJ3t5rPpY0Fsj+RV2D9oGkEiKNZzKcqYNIzE/+r8p+FLtKRIAMMcgHs4
	 fMnds6M17qsah0YagPZ88tMIuEtQw8D9HrfZM/0ASuf7E22Z/ufsU2iYA8idIkCJxK
	 cJT/UMxf7ijUEVknGuBN7QcML1p1eWxTvsX9mP9IRDpHXDGqYGSZYtT1UoHJWLFjnX
	 9QnmsqTbfttI3TBRCydErcRl0Kaq7ZK2c37fiiqiGKtHn1Pn+k0N2Fo+RuaekRaNPw
	 mC6POIlIZfnIP42UzneL71qt+PZOoPee2tmG4WGlMv3ApQczd54HCLQlOeLSBQVeIl
	 0Xl5ZWMrzqgUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E34CCF9E3
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176279939358.32201.6369298027844830965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19731e0305b98d8f8bb84946edea4072e7542a06e54565617a92f0c6d50eada1
Date: Mon, 10 Nov 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762799393
