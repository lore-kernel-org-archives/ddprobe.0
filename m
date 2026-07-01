Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39A1738E5ED
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 05:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782884914; cv=none; b=izTj21vNXlOXDjuAv4NLqAncyo/eSDcAr7RWO/9POvmdK3YS8qTuQBJZfGRIY6ZtQlqytzxXy1PPqNsY7i3W6AJ+I3sXKAUxbhYeSr/oza8H6M/r+IZy7QZhGcjZKEtTpKx37rfgaQ8fRdR9jgDPu7NSAEy8lfCqLEMNnQ8dEk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782884914; c=relaxed/simple;
	bh=seKnSnLkCsmdoN7DWYIRmXl+OioWHhm+G7zHI7NHU+I=;
	h=To:Subject:From:Message-Id:Date; b=G0Ddwt/qAFs44VCoGglZesPQYgF/ddY2T+92aPDim87yA+lAzCeIEMoKAUIfPTZy8MF/h117tsHjJQCnQzjC4JCTXe9znvppi49SnhYGh/B+SJMwvNUzlgTY7TLkawwByYwUO0gMJdxK/VFnVFjPuLyQgYDrqgWto2OvS1asIJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZTpXeY2a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZTpXeY2a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBEE5C2BCC6
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 05:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782884913;
	bh=seKnSnLkCsmdoN7DWYIRmXl+OioWHhm+G7zHI7NHU+I=;
	h=To:Subject:From:Date:From;
	b=ZTpXeY2ad/GDQVygOvToGQNATdu6ABGNuVx0mimy7zjblJBUzFDsHYObyD9/ClStz
	 MvUqe/BqmAJ9ZsUaTDg4EcxZTtthaYwpH70fdRVlsBB4zug1PWIRFhBlvuKja96er1
	 htvoS2ywKQv9xwXQ3aYV4SRaWXk4eAr3oVfm8Fqi7FOFvPQdE8GrbCYlRV5/3M0Ldt
	 csnmU9BjpuzG2ABiFbZB5IHIwsciKG8fuDAJ6ZMlBC1KGw5R+kpEgbgyXF/0TzkFNT
	 rMd9+iOquUD6saHnrEhMts4u1f3DDemEg9MSw61BI5ltB1bhtszsXMrqrQpP7eN6pe
	 0EYxPpJuSA9TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B12ACC43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 05:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178288491371.2350.10178535591760328247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66f9824d9722a592cf09a917f1d2e3480590e11ad1b1c3e05d14ba75a71642c3
Date: Wed, 01 Jul 2026 05:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782884913
