Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E176C1BD9C9
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 14:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775312734; cv=none; b=cx0TEL3AHghoQF9B3JarhQQZJivrQvgXG1rFZKMrmtp5kvtc+WzpNEX5XN1G9duBz4iGXfROTlZDxL4A8BpSjf31GTpyvV5krXjibO29yh9ctihzaZQMLNCZPXvX3SK5o7qWYfkxMEQ17OamkUbyW9Qn546qpBrx6v/RqAlqZbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775312734; c=relaxed/simple;
	bh=2ts8ZLRt5KlG1526tdFsy71Wbn5Z2ouJqqzSmlMNbug=;
	h=To:Subject:From:Message-Id:Date; b=LZs2iREB/JI1AVLKAVgPvoqGHX0Vne9WcalYJ5nuZ8kEh5u34gC1+84QU65NP8fL7cPOYr6QWPMJeCBO+Gv/4uUjFCsBGSbwpM0mLHRVT62aecPAqH8Q94PIFK+oC/XmUgy/IhbURdnBMlBrzsxGzsUO0Pi7U4Rn/OPEwENzDnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dl5x2qYm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dl5x2qYm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2119C19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 14:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775312733;
	bh=2ts8ZLRt5KlG1526tdFsy71Wbn5Z2ouJqqzSmlMNbug=;
	h=To:Subject:From:Date:From;
	b=Dl5x2qYmp46IqRDjvxgvWkC1yIb3aldjXLGpa7DVFnA50nNeMkOfJSLQNgeQ8ehgC
	 Op5dTNYc54gQpOV2chW6xFCI1nXiEkBjGyoTqzG3lFDc19pLijI2TF4T5wjeZpDrwV
	 S4FOWYMlmtjXUOhsKJ1rFzm0YGPSdYL1/ew/3hV1JVCAedhW6w1UxdYkYEnYOcd527
	 /oQ6ceiIWk6ZQ4ZojyB4VSYeforHB2CBMg4wZ42mm95xeZBsDSW2+Z0/NXL8Bw7Cqm
	 qgDhqDXdI611GeM57iIsTnBfvfILPRnKgNTUADhMYypnDKPzjZzJK/HPpK2zcKyKOR
	 XKD9yNaNK7WeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1DCCE88D9F
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 14:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177531273368.15247.11315051366611379312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24c91fbb19140f30e7a78b2627b929a1d2c6fb4f5de0ee46f56627c8198162b2
Date: Sat, 04 Apr 2026 14:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775312733
