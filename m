Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A01832FA2F
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 17:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771867494; cv=none; b=E+6h7PvCjW7oVhAFHGl2JHqBDVwO/1qM13ESjGzQJLpmmHdDNtfKcOULz5YvSKTRRwV+nEEVXZg2eGf06EYiUlfDcmlrYDR/60mRMD8X69hOu8sQOP0CgYsoICg4iXR9q/mdfo117lZM62l1q4G3cO+4Gqns2Fl5paCK5QicprQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771867494; c=relaxed/simple;
	bh=IN+C35S7WLXRPMATtQ5XgE8yTM/dkqJCi4lAnx8Z8Aw=;
	h=To:Subject:From:Message-Id:Date; b=Zn+PDxfhZGlSfoCpTfWVyMKrpu3LERYf7kcfJBCUpDSM0RjtUturCLMMm76h9yCXP2Gq+eULxtdK+E9oOoPEKacwY5cb3faX3xWDMXHQW7TpLXLhmvxH6wzW5eL5AmqaZeZSx5W+4rG5Sdh63NHPxA+oX3eRBLaCE0+bBv3BwLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=irdTba3h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="irdTba3h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0236C116D0
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 17:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771867493;
	bh=IN+C35S7WLXRPMATtQ5XgE8yTM/dkqJCi4lAnx8Z8Aw=;
	h=To:Subject:From:Date:From;
	b=irdTba3hu/WC2865rwFjK1ZYPotqeId9cYL6npOtWH1bY6tG06xx9oZg7ezRKvyin
	 ubxqfY+sXGhYxWBxfCf5bC9ckDW6o5BIUtpsjkDrOtVaFHzE7ZKMhhHkTujA7j2L1N
	 fFHPv/PM7E2L33mAaYzWE4X239aPkk4rvdi+7qs6xJd39keENwhsJQ838q/cuyzg6Z
	 IZ36bR4+cpFjDqgjk1oDdFjLriqCVkDY71QabX4trss1+JGU9Vqa29ndAdm0xOQUPv
	 9rYjhZZBk6cgaiTQrQk7kCM/GI0iEX8T/6mvNfRXxUvNszieFAzSbg+wPterroZZ36
	 up++66Qa8Ew/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9183EC110E
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 17:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177186749367.32678.15873171248293995480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a70ed278cf09197f3b9540efd3dd3c0672d441c11df7ca127b4e139639fe0dfa
Date: Mon, 23 Feb 2026 17:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771867493
