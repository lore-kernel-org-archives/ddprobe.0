Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ACF12C3266
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 04:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779252634; cv=none; b=dEGUI1L1MqHGZ/rvr/HznmJtNohjs6IIge7LkgYKSCRNHQYFEtzHavO8KCZ37TJKXsNwCBLkb18zkVzs7YfR2qxsIlvs+E5pNaQY964zlhWlH/O9HMIkxiZ++Nbqbf4eiaI5jh/Ga8w0MndcVcLXd+YZcpRe/7rIl1my/+JuYg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779252634; c=relaxed/simple;
	bh=NW3x6TYwyw/jZ5mg9/gkdLYhzmunNW6QKOrHrBweLOE=;
	h=To:Subject:From:Message-Id:Date; b=rs0hSt0VkWL6k91pdPw3GynhmpcA/CMWorSKoOY/GpICM7vD8+h0ZnIs9WAfF+UleirX5XMtMHqb8TjgbBXVxM/db2abwo7WkzYK8vHvoOz24Dsi+UxB26nQbBZYnF1M7y5wAe+Nsj6nhRqq7j+vDijZDy+TWwFUTXADxcWf5bk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h4ZJvTlQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h4ZJvTlQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7FB3C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779252633;
	bh=NW3x6TYwyw/jZ5mg9/gkdLYhzmunNW6QKOrHrBweLOE=;
	h=To:Subject:From:Date:From;
	b=h4ZJvTlQMrS0Z71q8zt7yw2P+T14RY/6dcCMgInqNRtTQktb5BxyZmgVwb1r4Z//O
	 GU5R12Q1QtgKvPM468ugZEuHOJkHSBFkxB7YAWzetiyYV47LhBlVnRUpasjzgk69os
	 qq1iy0b+j6T0EH+9C+5qifzubwqPt72Dw8CSXpLozieMol4iqOXo+PnKwu303yr953
	 +cjOh2HcaWNKnxvXMvNHL/B6o7CH0reUNED75vnalky2VpxKnqCg2L7Ykg8rlg+09s
	 QskVWp0QeRfZqnyKsxjIWuEh2qHEJe140Ew6IPPAdPBV3chqcIPrU2cd1aXSP+EgTr
	 1JNh0OKAyYYzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC782CD4F5E
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177925263369.15894.18160991245531541018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 299109e91cc7cf2821b0b78da46308b0658bca7f126203c5370f26c966591ec6
Date: Wed, 20 May 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779252633
