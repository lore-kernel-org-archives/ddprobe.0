Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09CF2314D13
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 08:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769761434; cv=none; b=Uqq74uQZFLINWuEg4JYTbq5axBXgKDcWrgsTHaqFbUdMcM8N6sOh0Lgl8zEjzZ8wpB3pXH33c2zTKfVd1pViVooB53jTv4zE9CrlQOsIOT0Ht86w8CT5gZZmEJ9ZKJi8iNJPYhXTmAl/uGUUjfWgNTxwchXO8GzYbLgkwuD9a9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769761434; c=relaxed/simple;
	bh=GqaLKyFt3VK6X/ep6Th0vmf5e44VkZ3iOpIbAEnYJ6c=;
	h=To:Subject:From:Message-Id:Date; b=X0Sw94a6CLa+m04b/d1HN0pYCYv1r0f5uUv54ELRUdSRS1wJBXh89TjbraSW5T3s0UKcxuiMayb7+aBGbWqlAWheWi0Fi2xaJIWeix6lOa+8OSuwOw+u+I70sNmWNXCQOFnctlq+0QslceowuXOo7280FpEAvLxisXSKmiWOWPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DNI8/LyT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DNI8/LyT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A17C116D0
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 08:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769761433;
	bh=GqaLKyFt3VK6X/ep6Th0vmf5e44VkZ3iOpIbAEnYJ6c=;
	h=To:Subject:From:Date:From;
	b=DNI8/LyTV5GFAm9E//g4Gsu2aLUQfBD11y2rbjEI4KmuBu0PUepp/S8qmmyZWj37V
	 PyGiJsL7wtlF0cnDJq6dSD7Wgde52RRUkiD8H5k3SpqaAqpX2/vvrfR60ItH/5kS4B
	 lDvAS8Y9xRlf+AoS7yacFsqFY7JWF6HyHFPrY34PalPMLJdjU1BeZrRL7+/PE6Ij0z
	 qpnj6xTPYICz+hffVTMeIAXk1XScFJ2lE+eH8YfquFH2IBMIVtjhd8MmXN0euQsaDC
	 Pa4imKUhDn610UeUoYKNfmHuzhAXtj63x9t4B1OsLu4eOwsm6/SEB39czgzQpufPHf
	 0qUk6LpTymBlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904FBD49C6F
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 08:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176976143358.28888.4322026461802328570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cde4a9adac10640f6802c736535fc2ef8a6e779e0bc8091a7d65c1fc186cdf8
Date: Fri, 30 Jan 2026 08:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769761433
