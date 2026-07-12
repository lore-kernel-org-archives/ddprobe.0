Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 526FE1C5F27
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 13:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783861714; cv=none; b=BeuZVu2Y5f+WAbHMq6+kErsofVtIxQJYmovDICu+rpCR0wwTjK5dArEpMJLmm36XfOqoaZay+f9AzeRZFsBTo+1NRLmNeJg9KpJ/l5jnDFh4+tI3I/Xk75WCfAXpdGY5Hd+AzzCYij2S17fT+BukqYdCWrSfd3y9vGJSiO/U96A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783861714; c=relaxed/simple;
	bh=0zELV39tRJY6iuLpKu2/WoytYJUMQJ0qmLR7z5u8bdE=;
	h=To:Subject:From:Message-Id:Date; b=G59oU7Kk2nrh1VtSl2FzDBprzW+0sGMg8HrAiG80SoHsah/+Epx4soGNplmoWRlH7ffS464QNZs/3U1qWrt4vkOPfQ1FhBpVOOZH5MOwD7yGMDccgtHL26NFQcqRhco3b62/Z1IaxeDsT76C3TEv0IykrFyU63ib4rmXC7u99JA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mqFYQUuv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mqFYQUuv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC352C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 13:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783861713;
	bh=0zELV39tRJY6iuLpKu2/WoytYJUMQJ0qmLR7z5u8bdE=;
	h=To:Subject:From:Date:From;
	b=mqFYQUuvX1zpyUOflw6PolXIrDG35H4UmBZ/dah/7blK3ssXXWnDVmedSf8G6idgT
	 9bhJSfUUd0ARUC6pmK/vEEtyXjv8znigWICNkOcKCypNMU5AyDvatrRD5eyWMIsY80
	 ouoXh0pcRwCAe/2m4BsEPt3/ZzzUK740OBmolGiq4YwPZd9okJWxK5xtso32xJRgKw
	 +mTNEqYPGoTSXk/EPAHt1FgVA5KQx2CHJmJqVMd/CgaDB/2XCvClnO25KgG28X31yz
	 oHpmGIZCTkFDlbqYV8em9YQC8AjRcpEZ8tR3qbX5WpmOrd0xH5Q/rdyVPFLdLNJzii
	 YstaRs6wnkcYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B39C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 13:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178386171368.28974.17073113017323190168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0cf572d45add9744f7be8739f4c3e4311ad840385fd502961a74183595bee36
Date: Sun, 12 Jul 2026 13:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783861713
