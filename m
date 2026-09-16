Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42DF8412C1A
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789601434; cv=none; b=HkynchblxFj7tHlyhr0k/anetskckvEObCT+pHQN5aCACXsGeiF5cNe7wrJ/YehjrPIoaKIVzUMmu6OXwAtzWY0vcEOPG3NcWmsBvg2UTe/w7TLe96Kvv3O4R7+zpNfB+R9jcqjgTDMZUQZXUxVNUGY+hvBvvw73rX5q/xaL8Oo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789601434; c=relaxed/simple;
	bh=7fRJFDn2ndIShYgqlamYs0Es2xievTHmGWJv09WhRWQ=;
	h=To:Subject:From:Message-Id:Date; b=eeg0IOIuBtS/gsvQE6Nzkt8/aXod5AKnhEcrAtJcS5WwutFGiarmvdOLMznaB0ILOkp4ngKSGNuE0mZbC6WWo2/AXVeg+FcLhONkwGHjsqVX1YYvIia/RUMInSOOBMmfOUChWbGaLa2ZgG9lZGAt+ClPpYQxgitJOc4MYRJn8Fk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P30MmTTa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P30MmTTa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D93FFC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789601433;
	bh=7fRJFDn2ndIShYgqlamYs0Es2xievTHmGWJv09WhRWQ=;
	h=To:Subject:From:Date:From;
	b=P30MmTTau3llv4q7ocYwbcE5SklGQgR70+o+VZpO/fglTq7ZxOJczB5xN+YGK0yvj
	 5/qLFSay0W5PynpVnrO0hmXt+zX0yxtFsFH4SnoY63WtlepDM9/84i1X9fzmRaM83J
	 violsR1YVoWlGSWlhGCynEHn9xqzMut+5X9xmPap9tla2ADt0r5W7jVLK2GKlZVsth
	 Z0Gy4bpYU21v7VcDKzsjA0s1s5kcVZyW7ATU3VDZHnUSCPyCoYXIlnDiDPLpygHmgH
	 mPJZ1DT+FUCwsMwjMzFwaQq1mkr+Gwnzl75ziNn0k3754GZDkZw/vRvecU0N5AIu7l
	 gmohXFIfsSFWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4E3AC982C9
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178960143370.9906.9257502022097546631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 629adc57dde937732bdeda509fc275a54a289dd7baf5034fbe31292029cbcf7b
Date: Wed, 16 Sep 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789601433
