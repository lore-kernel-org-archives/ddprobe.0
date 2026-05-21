Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5631E4028D6
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779374434; cv=none; b=dxdgZnHUv2ENOK8PUi0TzQv+MHwHWmM+rR81F3AQlkxNNAjCg5sejkAHHIhHG6h0Rug1YCsCcIZuRcCwFJ1MfQDG7Scmaq8ZBTrVzQX/K4vPHbl1Mb68QLUr1v6uj2WZ8vp2sxexeVLQom8fBo9n1MedYyZc4L05cVmtzhtY4w8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779374434; c=relaxed/simple;
	bh=fkyMenfGbF05Vd1PUf5I4EaHJRw5KeSuGSBnKUxoz0k=;
	h=To:Subject:From:Message-Id:Date; b=VP+Gaoaifq0UpL7NsTcaNujjmOGR4NcN0iMJ6P89a1n7K3RrbKMEule/PMW+zV+R9ws0RQNLieiGwX0hJUH+yLTjDK+ZzSDu0m5ANYYcq1cUkoPezNZUd/QNWl0Czxs3t66pu8O8EYOvhJuxKaZrcdVrben99AdeF+hjh4updHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FxDTlfjS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FxDTlfjS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBEA2C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779374433;
	bh=fkyMenfGbF05Vd1PUf5I4EaHJRw5KeSuGSBnKUxoz0k=;
	h=To:Subject:From:Date:From;
	b=FxDTlfjSw2ZCN75TcKhmoL9cOiW148SF9zKkhG7yoqPLsHJTEH3X0XKNYi28/WnqE
	 Fg46dPDydrJISjOI7R2W/JUv3SRx2mA3bcgZdMXGtObLazzFwWbaAuJuXenRW9F+Di
	 5mW7FfxZ5C6EaJ1StcVt6ANQ3b8nGprdd4tS0YgaYY1U0uVhPjWJJhfJ5WcGLqaW3q
	 lpBi4bdlYUg6TbUAFbZ11AAglcBZhQqGX+YVkV+ZBgNSBPVcdyOU/7g/l8hh3Z666b
	 a9KtWHZhgIOMJKCMLd9oEFTgU9kLwNvB1ND/Z7p+YcDVlSiXfnyBkF2LaAJKHQprg/
	 hnl/wSZzprFxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA6EBCD5BAC
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177937443375.31568.15144855154984021679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2a980b5b726fce65e691f4898e1c426bfe73f1f49f6a1d375fcfc63524d8d04
Date: Thu, 21 May 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779374433
