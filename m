Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C9D749D59E
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791549034; cv=none; b=XaZyYVnUTkO+OMJ2QJLOnLDj+WlYweECfSVwb5/NQiFMLon/VtuBqVf75VzXW+N274oA014iC7wjEfZwlT012lM+zen7X8kPfCW8ez1F/zq5NrsCgI4vhps8gdZ6jDqSHuzNL0DO5KbSt/GOmAV7mS210DsCSeYKG1C1ZGUqDsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791549034; c=relaxed/simple;
	bh=p7EM6Tkk/0tpaMXe1wZVGKVY1vVe+cS/geKAZnOwcms=;
	h=To:Subject:From:Message-Id:Date; b=Z86urdDkShUpXTMIY98LTI3L8Nt6F7OKSB9g3cw10lBqAMobN+DPipGA1swmBhXy/AJNuk3aCPZBXMtO53KAYR3TzV+Jg5lH/4KRHTKS3h6+x8S0fzeP+tfqw+xW6qbOhHO4Bo4xKkv5BL3HKavCkPepkQIkYwI5q+3ru+I5Y7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vD0nqCBR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vD0nqCBR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D40EEC2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791549033;
	bh=p7EM6Tkk/0tpaMXe1wZVGKVY1vVe+cS/geKAZnOwcms=;
	h=To:Subject:From:Date:From;
	b=vD0nqCBRZXFLfSktbvgm8juYrpHbtM/Ox9quFol6cG9eK1Z1vZyTqWH4i5pUw+YCu
	 u+hm5TNeX8mdUBTaY3VOgvIFwlvq1+noKhEmk6hdn2NBNWw9uSGisSnXbMHFtYW55U
	 1Mz1opOV9htIyUwTX8/A79ksc+5AEUDAqlKD5xJZaowz/2Y8QQN/Rge8dLnMFllis3
	 uOB6HcLdlY1Vb50Alez1GcOuzTX0/cwNMJRuIAPHu0ABRzD7FEyBgIwQNct4b5tN7V
	 ja9Tipa3m7jME8tb6xyjExvrVH6KyE4QtMLOs4KIq2i2hkCvVBoCdb+hjI/UYP9PML
	 4kkUZwMG+Go0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE876CA6019
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179154903370.12263.5855944112469381544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f554917e18d7192cb54705173228ecfe66feb904945fb0f32ff14cf0b23e753f
Date: Fri, 09 Oct 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791549033
