Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A6D8472552
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789986634; cv=none; b=ljk7TAJEwUUtmolnoXwmVVxTBDVYgg3t+V3rt8zBt9FaRtxIy9TG6jdDHlvVNZ4WlHSiQUxuGBzdb0BmSlejzO+jl9PAuXOpPB58ybVyrfhvFgHbDF3tkTLp3Xb6q2CemSDtX9qqdlsrvnpFJmInb7RxpjQssw2fe0/Mo9fatq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789986634; c=relaxed/simple;
	bh=ZszKa8SGdlTngAjVgf7UM7CFXALGcs/F2JbEkpJDoJ4=;
	h=To:Subject:From:Message-Id:Date; b=D2B/nz1SRe9aUPUNm7UjDO3gVuvxpsyqTVu9CKzPpDFly5M8W53L/RqeLnSGDwxy0IZOn/exo+Ga64gDPBQBioRDGeUIkUzMftmuwCwm50HisFskR5qYzwcpuHeI3ViYvesULnJdLZ86Iu2UMRvtAy1LQpw2jhSNOGspYsjZlM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QvIKTg7T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QvIKTg7T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCE7CC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789986633;
	bh=ZszKa8SGdlTngAjVgf7UM7CFXALGcs/F2JbEkpJDoJ4=;
	h=To:Subject:From:Date:From;
	b=QvIKTg7T5vn3Tl6NLK9nLdx9C0uiB4L8G07dnc5BTRaFa9X6HQMU0FTb/yFvby4kL
	 vCuBi1LoYN1L3VIXAAispccvJmXHlQ/ABUAR3WLh0tl59XBQfUxqY8r+uO2F+p12bZ
	 NXTPNjV8REjX7apgf6/hFIm4y/YGHVypkb3NlDvNvMfUTuJKhbuuRi67OtWXkBYh0l
	 05aNpZy7bHnqqXP0CjbQJXVF5FgOc1CZFG7B6YazzIdQkOT+GGVvRyzlwRGDUksCXh
	 a/kMpx6vVrzyFxivMv7OZWdDcEribTAirbGLZH11AeS8T+bexHKqqKfQCVPDm9visl
	 c0aVRuccqAUVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA21FC982DE
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178998663368.13525.4140153854085773093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d65899b67fb21b6cb405929f57f13d9cbb3e33f9baa8380782e11128bf2f68c
Date: Mon, 21 Sep 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789986633
