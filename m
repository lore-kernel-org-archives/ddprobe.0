Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15B821C5D57
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760242194; cv=none; b=iV+X4kmTK2nyO7Rq848fXDFisw0bBS68VbU6sycFFtKd8VXy1JdRXJkaJOZYHJJq+TBHZ1s7lI54ehnF75FmXXjRu+vWpL84F38Yn9XJcDaso28+7nHHvusVgzhdaZzfR4wzb9jSfFYkEkDruiz8pD9A2QwS9CEXw4/6cWJYThQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760242194; c=relaxed/simple;
	bh=FDetmtVYkbonrrpruHoQda1EysS2rZzsUH3pPbOONKs=;
	h=To:Subject:From:Message-Id:Date; b=nf66ydktrcrsjWS2Ufa3SmHIShcMCdIanbk6PSXuJejhE2sa9nHbcEGRW9j4g4B8qpvk+6eqNpKT7ChXg2Us0JpTvuF01lD18TyA3QSffZEMnHjzl4zcbXuI5KqvWJ5Br3lOx7hEaHdEisboCRMuetO9SHHx08CRj+haUCtCdiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=le3SinS/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="le3SinS/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26A2C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760242193;
	bh=FDetmtVYkbonrrpruHoQda1EysS2rZzsUH3pPbOONKs=;
	h=To:Subject:From:Date:From;
	b=le3SinS/8ByJtDa25397rtCRqn2EBomxAyLiTFYNZ+hfVYatCnEsodjz500hwqr51
	 U3la61Zvk/gsChh8C0rXUfPW75VfELyZyoAI/kL0lqLx+mp2Ic4tn/bzNd6m6JQy5e
	 oRXazj8qvwXkoxgkRbZuyrD8OpiHroSzThgqLtYoDdkx4yCkJ+CCoXMGdMl5HG5vAf
	 0R31tnMlWwa/OmZlI77qHAQ0gjmGC+dNCJcIR7POAmpgtVpdQ6n3sIDCW0Jg3MiICr
	 Bgr8LRYuaWpxaNnC+9HIOP92msvs+RrTMQQ1AXst1D0CeixboBMfqpRRE5iWhyRDCO
	 1Qvp0zBDm+Bdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920FACCD184
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176024219357.10499.9553290531744631811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45c607fa3b37c39532763f6c54946286e7cbcce6f30755a3b081bbba2d195433
Date: Sun, 12 Oct 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760242193
