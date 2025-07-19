Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1235E14AD2D
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752967194; cv=none; b=GrsqkIrZk1QpuKeZ7AfY1tCH4Q9v8YDsKhG9cCNQvxvIMMdoj+S9nCH+SyqcHOJwMB3doUSKwH1bdKqLtvLzPN7Rt8/brIpLNKcWbs9lLa7lrrVK3u281RpLLW629kk0c4mGs/tOItW0YgcNaZxNAxLs9yt+JVD9doghR7Q6wYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752967194; c=relaxed/simple;
	bh=bwPIkFvFVUZU2L6kiP/wdL5RyXMHPt1FlQQ2O5w6Fv0=;
	h=To:Subject:From:Message-Id:Date; b=AmU6Lx5K6h052+U9cnYpZsw66aoZggEmTVPx8XDBFsHNOM8kh2D8j/Bg/NdUwrV4kI2uUpkevSMfoh6eUGBfQNf/v4DAlmHmN2Q72XPr7BhMSgbXxTTZRSLcQvLZMnwtUeuGEsQvU8z1DQpdbPlPKmW2769t7Nye9D61AucYehA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u2kYet9s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u2kYet9s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C79C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752967193;
	bh=bwPIkFvFVUZU2L6kiP/wdL5RyXMHPt1FlQQ2O5w6Fv0=;
	h=To:Subject:From:Date:From;
	b=u2kYet9sJ8lKF4/YJDU7lQs3cvWF2bxUxsymLqelVJ8h3orw0YGlHGUQzuB5ZRLqu
	 7gPXQEUOW1xl5fnfEfr/UbbBn4yUN33SL3XKeGcNc77qSHi1HJjW+zsPtPZA6fOT6E
	 R1VsXp79U9Ip2KH3uS0WkKocA2DvAwz8urzO4h2aAdy+d8zxnflUF5LmSxR+SakRCy
	 bjk3U1/dNcZwf5ByDL4RRvQx/enmDX/rfijbqNCJ9pByW/29ypwYUQ/OpBq/Sik0si
	 dkVZEimkzO/obqFusXi/vrGomEl78mGEc4WQtIAbB4zU+dgnMlL3fldmDh38HQasnd
	 zVjddF0J0nqmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F66C83F34
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175296719359.27874.15123349291570694219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d429d08e469713b21af956f6bf1ed464e8e221811915809ce9a870e0981f2b90
Date: Sat, 19 Jul 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752967193
