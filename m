Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C9C83B6BE8
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787951434; cv=none; b=GsZ+Edndxcg0FcuhRaIwRkHM3+G+kN+fXf3q9CUIDrwgIPYli7sN/sXGfUMfRlhYLb8ACS1pG+/GLCxDkq5zO4QGzim5COGxZ7U+4WRsvQ5lzAsryKvPP/naOAMLMum1gC2Chzj9aJDoeFYH8r7LwysUOqILMfydjYhf/QSUBCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787951434; c=relaxed/simple;
	bh=ydLlhMRwLQxsxlv/MN+a1g67+kXmiPUZBzuJdtovTc8=;
	h=To:Subject:From:Message-Id:Date; b=rDT2HPHQvroJqEDVA+E28pBdYxDAxF26EYhTT4hvJIwPvG97rcC6nT/8j/XN5rtU4JAyA3AQbBtZ6ZHx5voxZra2HU/eJHdgqrmvmxFXlngTT/zzp6/igE+Ogz4GoxK5m5ODT0Gy7FDzihNxzM8HsHWm1y6B6shjIqVzW+7LaEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EkyHLLbH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EkyHLLbH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEB33C19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787951433;
	bh=ydLlhMRwLQxsxlv/MN+a1g67+kXmiPUZBzuJdtovTc8=;
	h=To:Subject:From:Date:From;
	b=EkyHLLbHsSN/5RBmd8N/tAoQgTRyFQkshUk9xoqURBlcye+AJSsn334MKz/M+QEHG
	 wiN/uu9DMu4D7BsrxFshXlV52hXAdtxkL7KlU+a1HqKo7jMO7YjjliYaNuftCHJtZO
	 IpmoiA7+gWunKFpa7UY8SDPJcTYxEJkOrWxRbHDrT1WZjwk7b3rhJ9T1Z2bPeCeBJI
	 2FQiqnYYTQNwxYnd25StuCF5AVgEqliAga+YVtDKYolrGTUWHXlNiZ0kq02BH84l3C
	 D1iJfMC+tNLr7aQTL+n7kWmqeMwpsVsUqyg2GmVrr908BsHrY/vPTFlKBWvSjoYXUg
	 8Y7+al0Utex4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA711C61DCB
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178795143368.19674.12678617931918685979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd134bfdb237cd233be3724827d10ff2f1a57cf057d16f3263f7d3a1926cc6ae
Date: Fri, 28 Aug 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787951433
