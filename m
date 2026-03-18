Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06AA61C862F
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 23:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773877494; cv=none; b=Ih6UuoeIxAGX7CxbVEYKUSoOISfymuvZ40BwgQlP/2LNsDF/+AGuKCOvVKRz9HzZ0ZeXEmm7FgNG0A5i95Ql+R+TCYind/haRuOVQWRTnEktDz9ufaRZBXTuZfYmI1Jbgeni5CsgpO0M6Ldr7oeNRcBgspkymMXB+oRZIIM6vrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773877494; c=relaxed/simple;
	bh=JfM/iKudDWunUq+FhGstffu57DHTLES2mWCvfio2wWE=;
	h=To:Subject:From:Message-Id:Date; b=Ev/QQryUy7f10Dso/CIgJ82GpaeyELV7L2IOlt2z4UrdifXvFJzPMVEsOZSrnQZziUlVGTe6ueB3gJyMZ34n8S8DDUvfvok3mlDsNcd1Yb2QKDRBQBqjXbWfclW5/lk0JxtStKDuh4UYCo8fid8cZbrXfxnU1K0UpTrPDRUCE9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XmAooSQ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XmAooSQ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A629AC19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 23:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773877493;
	bh=JfM/iKudDWunUq+FhGstffu57DHTLES2mWCvfio2wWE=;
	h=To:Subject:From:Date:From;
	b=XmAooSQ7F9GcJb6rOgxcY20E43f4xwYsWKkl8EI7igmHqHjNsAJjdt/HQRb0h6LMF
	 1ID1d41LhQjmXow4Fxs1d5oRVRZV1tqHuq3BXImcs9eAkgfp0XlIVG7NBn9VbJLGNd
	 Fi6Q93vbCNBSnRpVgU4gl/tQQaiEhjAfDZwxHG/2lsfJzCH7l22098SRKWdKgGZBzl
	 PCFQCrFydxpAUhrwH8g3ZD4Fqwag5SFLSX0jEpVEn5x4t6saBhQYpXegOGvKeipClX
	 IwlOSEHvKQ7yi2wAtFKVi9ZE5R3XFxfv6hilgEhgmcRHH75SEdwQGfXlYdWV5FaFjm
	 flfEoScE0VwQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9565E1088E58
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 23:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177387749358.30236.2416115885323839646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11450f1fecb605a092b347b8a8bf5afa3d4dda8200486cf1d9adb4c3995bdd54
Date: Wed, 18 Mar 2026 23:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773877493
