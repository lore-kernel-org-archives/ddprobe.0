Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3168F212B0A
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 08:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765526574; cv=none; b=bNOBWd6RSgCK3EkabUDsaTWgy6nX+Lm+pGCq4mbUV/s+htPXhHa3xt6TxDwmsJj3qfkDBXOkijqsJ9xttY/WBSo5DHELTfkmUApuyEkTe/rKBfq1Jalgmuuj62IvVVYaudKv+I68dj/rWxtzw7c7YTH0HmuYhAbLlK2XmuYg7O8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765526574; c=relaxed/simple;
	bh=wBlMXuoVi34aD6aCfcBo0nMQwxAgio8g7G0IBWMRwAE=;
	h=To:Subject:From:Message-Id:Date; b=PPwR81Pn6ySwEyp27SwNsSRGQBU7h1RqPwpVjtAYRWPy1fu7nMB6ZQjkqsFh+lD0hwRSb1ziIq40G+hRtDod9O4QuIrphEyM9QzQYKlxVjyCgYWV+DfgB+aqD4Npp8au4UvHHBqFJINQ0dwjClqDZK/21/OJNEGhlKNzkUtwJNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SK0QDeB4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SK0QDeB4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A850DC16AAE
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 08:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765526573;
	bh=wBlMXuoVi34aD6aCfcBo0nMQwxAgio8g7G0IBWMRwAE=;
	h=To:Subject:From:Date:From;
	b=SK0QDeB46pdc97vBktTisenCcBP1gboZa2caZdE1EXwnTaJFyAaNT8B5Q0RuzCXKo
	 kvayh/XRZFEY/ZDQN7E9jcPHiQZVUPAQp6cdgVuoxs8QnmHI09HOPKCSsrErx1Xd0I
	 6ZIfga6tYLlC5INSUda4V6pdQZRQuy7pAEW3JmilMHT7xVHJdo40HzcbElN3JI2+js
	 IxmhxCgxH2T1M9i3K59+kOgWmtNvj+CnPwBc692jh1nvQIP5CCRjGc+sv2Wc1IaURc
	 iPEnE+ipD9SD3lqixrS/8dHSqCmXMcgqnOahgZOcG5yxsdB39EEfvfUCWFKKfXH60Y
	 jWMkFujrpCfyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 980C5D44143
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 08:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176552657361.13990.17995967550479333461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18279e1e342627c5e5e93d80f67afcdb4e8dc826000de26b7fcaff2a7fabe1ed
Date: Fri, 12 Dec 2025 08:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765526573
