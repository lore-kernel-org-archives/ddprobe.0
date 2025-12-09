Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B27627FB2E
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 02:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765248174; cv=none; b=ottDjSVnkber04ejYzSduXoCpjJr4T2/wcLvgdTKyE8VodUGEjYCr/8UfO8jMO0u+1HV5OEykYczRoyzXV179Ykp/Fp8T/bYmEnHyUJdPhpIgeMHUr+FEcEPYRw/OZ6s2wh3yqRoFU4rLJpYZzPG3SuSMSt8T8FfsgRU/5n4d64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765248174; c=relaxed/simple;
	bh=Z3bKfNu4yolXySNLa0405u9U64M89FzazQIhEBkf+Tg=;
	h=To:Subject:From:Message-Id:Date; b=kPk6J27DTETjNMUTwgBhw/2gtFzGYlHKs5r6im07l0Cl8obneHSmcq4IJBw+UXb5mDxQVAMOgbx2BdIlQQZXo1eUIzIztsSTh/k8AonHactkEhD0bdQqkZlpg41zkaKX62mBX8Myms8RxwdMHyDygOd0XxhZ4npV1ds5aF46Hec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KSVEDuZf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KSVEDuZf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B297EC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 02:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765248173;
	bh=Z3bKfNu4yolXySNLa0405u9U64M89FzazQIhEBkf+Tg=;
	h=To:Subject:From:Date:From;
	b=KSVEDuZfBGMr9SsQcY+8iJmgSkjgcx9EinoblZw49TKZtIujo7rhUAukG+VrD3bnU
	 FSgORlXg22VjvEdkCpA6DxiA6UswJ5m3iUehv7Lez9Ig7obdtN99ut3k7oFn9R1Yhu
	 fvQDNlpYETbLBeSCZ0t2LJ8v4A6mTGlyux8HWlNHKSP3MobF1h9uTEVz6ILLTRDC+b
	 zL9pBAkQCSWP8cZv4qnqGknW7o48tSIYKzsPIYOmPF1el9mEVzPJ09WF8lxI1c8JE1
	 F1Eosj7V9Yp38Wh2qLkXcreKqV+YTj1kJubUU25R8vvxvqjEXycbMiDKGDp1I1HspQ
	 L5iJ71pCkGmlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C01AD3B7EA
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 02:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176524817358.23730.5585874798569937630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c69927511dab8a82afed6145d6236ee394f68578716976a96a43fad1d1139d00
Date: Tue, 09 Dec 2025 02:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765248173
