Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3309A17CA05
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 13:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721136323; cv=none; b=bD+9Umq+bn/S/ZU+freowtWVkloOTcurUSPw/n74/7POHy41gA3rOwexqOEXubJKfmvyg2TuOCgTuUxyiDVzyyAzqEb78uro+wsjHGTSHYdydS/pX8OZk9AWTsGoXt2m88szsqYw/hXIaaez8v86YrH0HFGKDfKXA9lfdPHYcrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721136323; c=relaxed/simple;
	bh=jg0zhNntXq17bYoydscHw33TAy/Z9ZXRZZHzke2mmLI=;
	h=To:Subject:From:Message-Id:Date; b=U/Dpfk0RbdMc82dA/BETr6ZLFH1YnJlHLu6xL72gO9dV87vov04gjDbSREonK2pHwkID89TXHaiKGM9uuwB3tWdRhJKMOw0fADfsX8HtZOyhiXzqoG1XKeCjAw+p8kcizAAZHMUAh7wkF39pycGpQasgDugkHSN4ha8+iRKFDpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RmmYGuaU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RmmYGuaU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF1F6C116B1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 13:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721136322;
	bh=jg0zhNntXq17bYoydscHw33TAy/Z9ZXRZZHzke2mmLI=;
	h=To:Subject:From:Date:From;
	b=RmmYGuaUENEMPwi6ZNLmezCpLhIBVpC6u54/F6HOzwPS/HFwe/mXzae2geGCKI50D
	 94QRWz2ZUxNSSztgkL39CM6eJBMJW9C4LH2lpgkAb2aq+OcVQwbx586XV246u1jkQn
	 3B4bGVrsoK8iw2R8K+OznzKncZ953jojl9HhzbZit1GpSAqZVREZxnBpXuVr/QGyPY
	 56aHHbeuo0abnlSpq9eNyEOeIKcU9CtV0fB7nxDpsw8j40dNW3WHXz6JSW0BqyDXLF
	 Z+mpLVFg10Veg//enQqcD/GscOlmvFnuhpe7fN+0M6qlcPGeFKmW60cqwc0dyX5GRi
	 ktRVrlmWvhasw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA798C3DA49
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 13:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172113632275.27576.10038418120974237058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abc25104b21cd785939457fdd05517ccc13f30ad83c18efcffb09aba9b9eb890
Date: Tue, 16 Jul 2024 13:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721136322
