Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 359B1449B22
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790167834; cv=none; b=XTI+Vsm5PJ7oczGCerL9UKdPlpTXXb8dHQZUWKAFBChKPmhYUvlLgZ0GfpX2CccfqeybsFDLIS4+kkj/y350vJ+A+WogrXMPsOOz0ZHjEKTIh465SwsdFOO3sH5UrkcKUuXs0C4VOO4qpzTnxD2VmtZJFnIs6m5ThNepDpn5Jkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790167834; c=relaxed/simple;
	bh=5ezDxLY+2ui0QGFYdrnzu58KVlcG8XQTVd6CMZqNAI0=;
	h=To:Subject:From:Message-Id:Date; b=IIKNn9nvhgKQUmZyWNN5k/43q9XyKVh264nGYMuJOxSshPiJ69jOpvy4AMo2U5O7LFcngyYFTUvsDe+Z01LV3iDdKC+kWVcLvdWr/OxkeWC38kYOnbiH3XgmBRL6ZF30/JaDdIj3LwOQLxTY4saeB0GoIebrbemMLWJMEbVJfxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IeF8zyQg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IeF8zyQg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD2CEC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790167833;
	bh=5ezDxLY+2ui0QGFYdrnzu58KVlcG8XQTVd6CMZqNAI0=;
	h=To:Subject:From:Date:From;
	b=IeF8zyQgYoU9BtQKX1mj7UmvWW9FNDtz7m03TrcxHA2MXjCMr31gBBOiFZQfLsJ/P
	 M2+RfL93mXgqIigh2ZM6iV6cronaozcA/sv9dD1fQBKN3KRGR9fWATl1rS80wPJzpN
	 oHFD4SpFlYQrIJrZB+diAu8bQna3T71bEGMayTzxFGjvR2cq1EMqUSz3hcqbXuG2RZ
	 7x8xZbYudOA/ths45paf9E4GMeUEDv8astaqQ9k842KNEL2LbUSP/lZQpwkemMzVEu
	 0I1BdSJEKB7vDjq/ip4VZtYHvYsXHQQD6/VPAKq49eLUfeKRQEUPhvMWWWE7mK2b6h
	 dNIisZsLhny3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3F3C9830B
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179016783368.31817.12100021196572153271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c43e56c66de23d97ccc97897f83755ef6ed56cc29be402de6f5da48d5f8b315
Date: Wed, 23 Sep 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790167833
