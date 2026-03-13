Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEB8C3932FB
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 12:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773405293; cv=none; b=j9yWhsa42yK3rzaxThsi0MXWtHZxHUg3JWad1l8onPurPj6INkNwal5610hal8kYhvCvs1+C6FbRUNIlSDt1ZI4zFMvC2KxUzQTEWutH5PyQLvwKfDQ7+weNuQrw1MD9wZ8SfkXfA7ZF27SzpGMy9K15nBLF5INwLngoeIL27xI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773405293; c=relaxed/simple;
	bh=CRn+QAz2bpumsANAjVlUyqNmq6eJJsdTORw9GFmHQ2Y=;
	h=To:Subject:From:Message-Id:Date; b=tJ4tvy8kzsAKPf1kJj3m8IMbjQHY8zy9Zvp12QZaiYgDyf9JsobrUcPJufvvdDWFDBPsiJcqQ0Mkg7SFNAX5TBBem0SLXg7cM6hKI1gYVVIIYOdXF9xG+BS55RolYkyzmbfjEcZi7sXlxJOzDm9rEyTZSdN33qrpmdrGAbKrlm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=konyeuPR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="konyeuPR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D1FC19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 12:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773405293;
	bh=CRn+QAz2bpumsANAjVlUyqNmq6eJJsdTORw9GFmHQ2Y=;
	h=To:Subject:From:Date:From;
	b=konyeuPRrdXwb/93r9SIfl6cyiaLYf0zd0QuMLefHKWY53eKPAdwDw7hnf31GfWzF
	 bn5dFpHcgfOaT1yMcV3c3TJ4oLlPB3IFtGX4nx5xA97YhUCVBwwpNYYczsHuAwFBFU
	 D+4JM+XKPdswEy2G66gyx2MaRna9i7SH1ffGexPcTq3KPlT0/vi0kWiTt2+JTlXA5J
	 7DmoyaQYd8iYL3A1eIQYaQDn3gDJKBkN37EmLTqXi3tjGgLJVaOEHVH+e/SUzvIHjS
	 HCXPerC1z/JMSEMvlKqzA+vPEcdMsr6MOzj1jXKF2MMS7bcgw53hl/4L55b/au2zVS
	 uv7X8S/yObagw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F6F105F78C
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 12:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177340529359.15780.17431069094288084496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24ae29ca4758289191ef7f9b06425b432f846d0bcaf08fdd27f5ff3046d9a90b
Date: Fri, 13 Mar 2026 12:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773405293
