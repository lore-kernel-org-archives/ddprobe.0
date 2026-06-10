Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD1F386562
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 07:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781077534; cv=none; b=V6DglprJBTKo9zcSTucVMqfN0OeoOXU5dsFImUzVlCB8LxogfCDTUlVAsB+04ikUvEsWZ7fVQxJsGvl2mBtiimm/zuJ4FBC/cEVO4vrk2zMTW7IoE+V7AT3v50Z3tWAWm5iHArQJ0uVbkjxiFODl8+w/qWNVgaGuXjBUVSjJxu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781077534; c=relaxed/simple;
	bh=sa6M3XHvW882j0gWp6ifvViNBNRU5eBs/Xe24JxHJDE=;
	h=To:Subject:From:Message-Id:Date; b=ei9db4fChKiSmHmA/JyNva7/MEMDOV4214I2UU/SdjyXKRo7+eNSHCwqkGILeuaBVtTnPYaEwKDQdlAQ0N9hRbRNZwc1yzhiKV/iwlOgSgmUkt1nIF35TXvShpnrPnohdVPJ972EM+5nPOpGRfjyj83rMou/zFOIEaE0gih4u5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xtgk7SaC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xtgk7SaC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C75A9C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 07:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781077533;
	bh=sa6M3XHvW882j0gWp6ifvViNBNRU5eBs/Xe24JxHJDE=;
	h=To:Subject:From:Date:From;
	b=Xtgk7SaCTYsOkVqrKwtsu3D/tpMRRiqv6Y9fP9ezRBRI7ETAKHYc0kOaGC3wRXCUt
	 vlfhrC4m16+DJ7BY7MHiwigtT37nwyb9QgOX6/5XE4YaLi5xRas8uzo4OM906batHh
	 iHYpqI9RbJO1WEG675MQ4cHKx+I9lgMxplF9hKxuWwbUHM5Mi5Qn66nsUOVM/ukWvx
	 ZcL2U/mGXxnRzmA78kG96+JJsRiEKnnZQH1Jep75bPd5i9Kh4268mglidR6seZ3AhF
	 ApW92GCq6CKF/GwivVGjm9UtCFcDsAIp06yIw/tMrLS1rCeExEpZQKGxfqYW8gaqal
	 +UOkKTNtf1uZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC0FCD8CB2
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 07:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178107753369.28619.3048569399545416082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cee3245d3a79819e87750ea483b5d59ce92940392bbf0ffb1fe18543174c496a
Date: Wed, 10 Jun 2026 07:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781077533
