Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 196E34C9F
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758766194; cv=none; b=rqBYghobd66lXDIUpcj/qh5hheLxURdSEwC/rtuW7cj3exuG2xBRN+aH9bZhab+ZsWj8Hf0YTjwwdcBNGLZLOqERAAuWcbkspk8djyPf/Cj53ao2jXmbxHiZFWZBPk+J3Bq3DUkxmSAaNmUHFeIBTCVQMtdJZEpTLsyFzpfkanI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758766194; c=relaxed/simple;
	bh=LJeN/N4Gi0zZueqPd5XeEZ6jFEChUCR79apIeYgrJX0=;
	h=To:Subject:From:Message-Id:Date; b=SnCJ6DeqH9uJH0NWsWeUak+Twf+s4afdXg4psIuEDJ+WgBaNNBrCeX7FOaXNf2gt3vjyizNoxURZ0C1MFyU8kDXwa5S02GA1pJqqJjAz1EyyMhW4fNBrNNZ/u0/KZep3kcvbaoXz8rtgHBvkFX08i8ZArfnI37jqOMQTZ7N1fSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mbGccQPt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mbGccQPt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F674C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758766193;
	bh=LJeN/N4Gi0zZueqPd5XeEZ6jFEChUCR79apIeYgrJX0=;
	h=To:Subject:From:Date:From;
	b=mbGccQPt0U7hBjwqjywXvMpXdSkbkfAUJgsEx9Z9k3W9Zssup6Kl9bmqRT55AIvHL
	 e6LUOncic66tD7tfpKkzK7DGyr06S82qAnrbZEaeQGZDiiL4bPBnhCONG6ky7/HY3K
	 KLDg7foMgrP2HnLSdPxd+r8Lb0Z9kovY93EF9TZP/vIzJtbMh/a/FOkgqiEg5Gj19u
	 p15FBqYYOTihUdDlk6yNT1rggP7uPGsL/n818LJPKrZvkhR+eN1Xkg/urBr6qCDvfL
	 fOQ3GagcrosTSNWzo+z/0fP/9fDwNMdd3ebXXjqMvIbeSddVEryKix7x0MQNHFZIIi
	 9HPeKKA/Qpubg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDB0CAC5A5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175876619357.2327.2429268817645672210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae9b3d65be265dd3154b2bc217378e5c937104b0331119ca63f7b452ea07e37d
Date: Thu, 25 Sep 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758766193
