Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED5340DFA3
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 01:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778030254; cv=none; b=PWVAAmeRJKhMZ8a/RYSlG5UfMRH/ya9tPBy/qeZ4z+H6RyL5YGpg7ievEwuy6Acmw7+0DkC41fJPS8IeJia/HZy8nS3xjgcchQvIb3qpSj9S1X6cRi8mk26Y+cQmGv+y//ez+dh/neBYwIU8mOKWtJUTjbhgWOqZDP4af2v2hkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778030254; c=relaxed/simple;
	bh=ty4XNvRKkmXc6w4FuylDbk+aFHJUWZLfhqsWcdXwkGY=;
	h=To:Subject:From:Message-Id:Date; b=s5VqZtowPQO1XsIYnX4wp863R5myF1oRWZT0oi45NdvU24UqBwzkcSwZFVfFCIe7Ro3JnHKOJ2+VB+LrTF0M5hVMsaBqOkQ10EhZOIKw6DfxjqRQPtvFov+XVZ6Q1MxV9mcfYfzKuRIxcN2lV9mCxHWmYErQhfiAjhMDatRbImY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=azK80IBc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="azK80IBc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1A28C2BCB4
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 01:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778030253;
	bh=ty4XNvRKkmXc6w4FuylDbk+aFHJUWZLfhqsWcdXwkGY=;
	h=To:Subject:From:Date:From;
	b=azK80IBc2fT77PqDMNDhpSZV3mXdXlVkOauJtHPKN+ON2PJ0A0847YtOxQLJy9TFL
	 yYM9iI4HTmDJdIYd9gcDpxIuEGPE07+pxd4UOUFe2qqQga0wGT94C76CJhUaZrt//P
	 jfgvJVr++alV1FlaadOwl/SpVw62cNv0oLgXmcYJLX22PTFhLYRFuE+cWcGz1n4nwk
	 wsrVnN8GlWTKgoi+b/1lElDRIbd4uklSSJ+9ytldsKchFgx4TU+3bBrxHJpNRP1oDp
	 tr2C1q94lrLUf30gM22jGITFSGSAR2Vygh33RbwiQWRZ6pBL4CDvdecp3+uQmlTKLw
	 YZhG6hy5AGuSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD38FCD342F
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 01:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177803025368.16158.4944262926075895856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 750634dcf832221bd8470b7e624ab0fc104ef0ddd2938550d37aaf900cbd0106
Date: Wed, 06 May 2026 01:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778030253
