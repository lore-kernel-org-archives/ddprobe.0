Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A6361CF29C
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726313154; cv=none; b=XLG5bbZrypBvo6LrNcyPXFAUgjmK7Tztje5hwO8eEzM83KOCBPQFMUbP1/FjIgYLlYZ5zTVMpcMXWY3zr44P1VvRSgCT4dxGvo06/FdW94m9nCDL/illEKdVruYRjWzHEaOYWkhuIVv6S7og8vPQFcSm9bi0Cb1kNQ+NynuEy0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726313154; c=relaxed/simple;
	bh=K31b5iJdmZ8fqOr33tZQt9in7SkkAMuJPCsypGMeN+I=;
	h=To:Subject:From:Message-Id:Date; b=PY0ADHp5i1ezO+8zcL3/f7XxZ5J9XyMjYu9aUV0B2setN4UiAd6Ld37l20pCzHhR2t7ZlOLWnNFY3Ok8cggT3+dyFbpwCEWYirJ/xxcNQsQCrAczIj5vXaOy+/U5H9oqoHY776KW+xUcpx1bko4hGrrlHOlWFQII8V+mD72BqPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h5lBIlSf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h5lBIlSf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7EBFC4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726313153;
	bh=K31b5iJdmZ8fqOr33tZQt9in7SkkAMuJPCsypGMeN+I=;
	h=To:Subject:From:Date:From;
	b=h5lBIlSfkbnwl7CJ7d3f+GfTdDg9iQNW8JZJcjfhyqAzQ//a8+eeaEOJmMXGyeOuX
	 QHSRtxyvK55FhbXfp9rf69rHeOvWLxroAXG8r6eNobKo6HcH4r2KwnzQ4rO8vqiN7f
	 fkPzo95TMqMWxFy7P7yjd4TfKGzZ3FAUccfj5fIl+8iobrRjg6hxVXlFG8zTp0Gfzr
	 0Xv5aAqPjrC/PN2Ix7XjEahIQNdfBMp2ubYQit9aP6iK/hn5VW5o6ggKhOpkhE7V6k
	 PS4AqUOPoP3GtfnmX2gAn3rBo4/FEs7B51SCtwezcDnG2zYRDAGWEkRH9YBxI2DHZr
	 AFJbH1APds59g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A73C02191
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172631315358.14641.17194329168764550910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8b72e3227d9f44ef765b069d2a217a3e4649bd6e4b0a9e17200822a0ba1e30e
Date: Sat, 14 Sep 2024 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726313153
