Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ECCB1F936
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787188234; cv=none; b=h/KOGpeQtlMAW0NBAXt9bJeVZCnAqq1tsACa9ijwzsTAAd5Win3YmEPzvH038Kytx1I+UEAXojav0M5f8oDeo36ViRIs8h8bJnmxNGfoHeBQNs+jX5TokauyDznxjuq2RBVJBfgO4Y/Evdf2TyKUH/ZMj9lkO0sCIl7wf7vA2a0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787188234; c=relaxed/simple;
	bh=APoiAde3NQn52qixvvBRKAihvYsquvS1vsZlmUdMqjg=;
	h=To:Subject:From:Message-Id:Date; b=M509BkJqDcYWZs2lXjwMCNd4+TmpM6j5gAdNStNACTsve974fhAMaZAlSFPh0eb8flnTLqpaUAwTHO24PCzUbIcqXoMeW76GPf/b3xoixlxDgopHHtrRZtDAB7ZpaW69/oMBt/+HKjSMouN3vjqPxNu/oOrw9n7E+aWH3FNJQcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EUy8eJgh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EUy8eJgh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D49F7C19425
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787188233;
	bh=APoiAde3NQn52qixvvBRKAihvYsquvS1vsZlmUdMqjg=;
	h=To:Subject:From:Date:From;
	b=EUy8eJgh735rH+cluwkJkD3MHxQGy82GKSnNdHOQoBuQjKCaV19XGEcy3OcO3N6Vn
	 pZwh0WaYusGj3dOCG5Kk3T5XN5wSLZxbX36OBHzF56wt7dq3YUG1xZEX9e4YhtoI0v
	 10Fw/HBbMzu6h9k5YsjoO59o/KjMv8Me9uSFPF5dKrRWVw+XtQfL/EnSHmhugv66DH
	 inpZQnOzx9Edghij3pDfllImXIVxDR8FwC4YdWbqQJV42xnomufT66kyfu4YxyeA1M
	 8fYb7Buog8ZXp1xkGIta6aB814E9/wF5yGBjIJjkkJ9BcB6I360kAAZBFs6rWLcxyZ
	 YpAfVE4g8t/xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFDF4C5B572
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178718823368.9698.2401946413230805268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d8203849a2ae7693af6f4e0c0233bcd1e009ac370231549c0b92d56b53418a4
Date: Thu, 20 Aug 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787188233
