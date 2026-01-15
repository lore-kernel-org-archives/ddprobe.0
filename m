Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0ECA320A1A
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 22:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768515833; cv=none; b=Z/ReJrabGckJWf0ZV7XkBRTKcm+zW0k7KhvmQ/HYFn87ReZ5hDb8PiLxv2Lzd8qXgbyQi8gwIsdNievEXQSE+b506h5699gQDfaKdaIJbc+y8ZQK0fnptzn4mzHovnYbi7x2zRTX5MGDYfoN2EsqCgCME7LBO2YLZSYdwynp+T4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768515833; c=relaxed/simple;
	bh=6+xclb9F2NcI4zI/r3NpuWGeSRpz8DKztZHnr9k6BQU=;
	h=To:Subject:From:Message-Id:Date; b=REHVHLNSkiEI2V3XK2Lmc1vtcjUjX6pDXpqIxckrKbvh3bi5JRv9/m7NjCkqgW0PV145efXVE7c0yrFwEL/+/HAW6QEUo+czm9/UGqWGwPqEPxiSilZnBwM+1t8bZxyrxpCE0QLLU3ytew0llCfRWaztWPe4aIU0qut/turYf3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qw76G+ZF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qw76G+ZF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C8E5C116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 22:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768515833;
	bh=6+xclb9F2NcI4zI/r3NpuWGeSRpz8DKztZHnr9k6BQU=;
	h=To:Subject:From:Date:From;
	b=Qw76G+ZF7QlsNdjtPahQh7QhUKDlcBu1PG+uvl0IKG1p5TGmzBRfqs68pkj6iZuTp
	 0xh7nxdcMM3pfSdkjjQbKNK9gUCFZ7wruEVZFZX6av+qKI4CB/pkUBNF8OMu9hPEjD
	 OxbWwrlWcMlWFXccaaI81u4i3L5y+UI8zkYPOdKiJ/4Wu3sgIszpHnPdyY8rjTL86W
	 Wb9WFbDxWTWE4oWYuP5H1R53TI9HH/ca8+Onw0WIjXR9I3z253NFNP5Zbnd+PV98F5
	 W7NVSeFMUEUgNXjwDGbmZIJ8rFt5lQeubFC8qnrvyUT/yuD2UWjGh+6/A69EUC6xgc
	 Fz1qVzul2eUrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F693D4662B
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 22:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176851583357.2764.5626218634850278272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59fa0f9ba540e0d60d44eb9adb249777cf8ac11fad671f19f2095aa78121c70f
Date: Thu, 15 Jan 2026 22:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768515833
