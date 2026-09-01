Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 605F439446B
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788258034; cv=none; b=o5HN9RU5CPED60I/3HniEj8SgWJd6RH87QGFOx+YpzphVu1YAkTmzddj+mRbb7qHcUei1fCWK/6BNVXWYZhwCBCPtTGkBK6i11mIkxCEoPv1q7SQv1gbVeZgSrULp8j5DQxHHs5tEhmHqcxJLA6FLY4h6MpkyoFK7ugzlFwl5HY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788258034; c=relaxed/simple;
	bh=0vod1wahjbfbjr9JTmJBbukVo27CtI0qEs3QfjA8ycU=;
	h=To:Subject:From:Message-Id:Date; b=m3C5SgB+zHhoFEyT+yMgE1xCdMiWS5jb6uXnjZsoDMsO8G5IUbmrnezK1wTCrAE9mMOKAYzFnIlq5XTaX3jxq/NtdL9D4DlwBqUIJFE7JY+tfRu34WgYMOgefHk7btpsApBHcKnAxQmnNesHd8Z5oIelAOaSaTYa2EYAqty5E3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BY3lo/Db; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BY3lo/Db"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE9FEC2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788258033;
	bh=0vod1wahjbfbjr9JTmJBbukVo27CtI0qEs3QfjA8ycU=;
	h=To:Subject:From:Date:From;
	b=BY3lo/DbTe6Mzb7jeaPc2CsCmYcsigPgAtmu+jcRZxQLm2ggxXWquSp6J7NZwRz1p
	 aE65N8Erew7+WpsdoInp2zZoTDAV+N5lL2ZyWoxRFDgno3F9QTBMXOtQbOIcZ6HQ0b
	 r4zeZG0BNgGi8uHx5SxiNtB36WQXGUHt6gCkzVQ2ztE+C4EoEIeFGBf7bQmNR8bgae
	 qr9O5ZY08S6kzUvNf4YLt7KMvlSWC+1hHOJjpF91rzDIkmkRgomokqIg08/0LUvD1n
	 D/UyJTs8PcZ3ZFy2i/SAmRiQ34Ns6a8q0QGgfM/Oe/oi7EiLEo+ZJoqGiecEAv8R06
	 K8qHOjsp4UO0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8F3C624CF
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178825803368.6300.14976069844661675754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1e45ee901596d850d62ea936501f55b244a3fd56668195345331af74cf3e392
Date: Tue, 01 Sep 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788258033
