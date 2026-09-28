Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51D732F745D
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790599234; cv=none; b=O9kEU7sLxoc0FSCAHh1jgcSZvLKgCQ5mxkOl2Ok2yXp9din+Qnzg1+rxaDKXzo2IIxhaL/eSj3OXwALUl/9gqRLrLY/EqIDTx2EanRJWqeuVINHoBcJRSqoCi/ojsH9FY5kteFirzC0pq9jQyNozDITz7/0FdnHWysl0jlFtNV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790599234; c=relaxed/simple;
	bh=ppLOxLE+LVzUVNSYM9gY+kZCon29R/GYGnSqO9eMW2E=;
	h=To:Subject:From:Message-Id:Date; b=aeIWCohtGGvTpFaylakC+C/LGmOEa1SCL06BgsSiApCAdjToBdsQd4nT6W2tyRQRkH78cJZ/QfGyt2QVPGHFxwS2/WDQT7xkdVgfXT2s356R2ivSxqCfxKANkFt0EEufPKWCHzlv/i46nUs+eecQ/JWXap8mkWmd0FtO0PyTBnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VQ7/YMSL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VQ7/YMSL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D18C5C4AF12
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790599233;
	bh=ppLOxLE+LVzUVNSYM9gY+kZCon29R/GYGnSqO9eMW2E=;
	h=To:Subject:From:Date:From;
	b=VQ7/YMSL24kzWz6k+v2BLmdW4yzgZkA8/XGhsNd9WeKq1w7LjVcXZ70T5AuHR0Fl/
	 H4zPFvx8utaZNB8CGzhWOb4CouKyTixsessETxlTdjbdj9IExNcgF5fdrRz+omk/xo
	 WZ9+yKzYl26dEtqV2P7M36l/7ub/XWCN1ZxJv2qvegl09E4YsrA57m/6R6rBAVM1Mb
	 Zeuf9wKv4d5EixAeD1B/RfIg6sTzRYgUW/81VFVjnztXg5qA/ILPGQj65kgcuvlZ3H
	 S/IqA++nocl0r0b1AiYWXs4X8ojqsnja27AJbp9/K86dN+/eD5Ufvwruc0ZujrD1ZW
	 wZBhn7RsJz0Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC0B9C9833F
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179059923369.3774.358719548185906964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7240f8b64f9cdbdd14c8dff92152b5d9176a0a23b5837fc3c7554538dfd1aaea
Date: Mon, 28 Sep 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790599233
