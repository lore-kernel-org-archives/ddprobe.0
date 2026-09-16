Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E87B4A7CB8
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789578634; cv=none; b=hUVinf+21s+5z62GCDxNWbfMypPmXhLTSL/QK0fvJqjLSrSozDMrgtTlTbqpQarF6l9rEWGuS9+KSm7HiJ8P9yoLgbk1y4OeGBTXADszFiuamTaNHcL/u0+8jtp8rYM+8EnW771cJCatH2TQmXX2+Pe6OYflyL3GAfO72TNpXZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789578634; c=relaxed/simple;
	bh=YiLHN3SG0jxYg+WRzBQTKe8DpGNYE+wxgZTDCsgsXqI=;
	h=To:Subject:From:Message-Id:Date; b=tN+ZdqQliJ7eqDSmNPYJDfPVNPtRmv/BmbmvKHA2iz/1LA0yUdquwXOYy5DRVscWuNbDhZBq2YvPDOKpcIC8dewwrwv4F5s6cJBCEt5cf6TZKUG9ncqoKUFbt309k3VwcsmM92FR3yy+076olh9bySS3nVlgCGI/Ud4J7EUwy6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HydFqFpd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HydFqFpd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF0DC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789578633;
	bh=YiLHN3SG0jxYg+WRzBQTKe8DpGNYE+wxgZTDCsgsXqI=;
	h=To:Subject:From:Date:From;
	b=HydFqFpd5GskoSBH66LmxUElIhSMAbW7Y/86IyMpI0g5B904QLW9+dtwV5i6Y50er
	 JtHsoC4l2DSbqLCaJnhtsp+PSmGSYEupbKULGLrJD/Tw4Uf6gh43ygKOeJM6dzZwBG
	 ASUpWHknMTANliYwg3igErnr3xj6/kv9MEj66SMjtmwgCdv9WXwUQMHQpHbyFwRFlu
	 Vj0o1HMrzQFlZXsnnCy5hSR8d9UBI5dbDzkbmAMDxOk1Zu2qoVVGt0FlDEA1sHFeaz
	 4CKQ1KOnn9xB+vJn7hl1gykn2i6+EpYlh4AQ+5qc9eF23E09qhO4stNoAFiYojfWV+
	 tqeNAtnlSVHvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC3BC982C1
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178957863369.4033.13136988767947423721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da4f5f11302922b0d6335251f6f64a5ffa8747e414d84479216f4d53c280f301
Date: Wed, 16 Sep 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789578633
