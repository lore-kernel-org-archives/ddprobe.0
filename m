Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB9D32BE043
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 01:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779328235; cv=none; b=EZi4nvvSkQGFOG867JbMog3BDFi5F51q6lQkEPymQo0V6Fsz/AofW8eOWR2Bkl9iY/JspGdxjE3kcAjES27qRjNz7FAsdfLnBQEs1lGc1xfq9pA2QiN7gM9RmpvEXyrJRGaIsv7Qw/+OQHCz9xuusEfEBKVXRuM8T/cUMcGhvPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779328235; c=relaxed/simple;
	bh=M8OJOfNqwHU5bxFQANflrrbAY48uAHpXuQJ1GZdJle4=;
	h=To:Subject:From:Message-Id:Date; b=B3vUJLVGqUri5Ask/i+NYgT+FmIslpBklUJJQwhIjHqZ3MJsvGv1iVQf8+up3bIWcy6UPgBwaiOBwEbDnBSXJOgfC0TkuIEQ1bU94kuQrd38yAsbLxD06Zx8drzRIgO6AiWENg8XLCxJ5LUObLZ+UUYgDrF5jf64+O/eyPBcc4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pl/ceFcY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pl/ceFcY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE2B1C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779328233;
	bh=M8OJOfNqwHU5bxFQANflrrbAY48uAHpXuQJ1GZdJle4=;
	h=To:Subject:From:Date:From;
	b=pl/ceFcYl3xmLLZKEAJwnR36ZGedcuQfeP19O8ZUDeN4XWZ1bP3jBZY4Iu8DnR/14
	 CXT6eQCiCUMzq+zham8YqJnK8+lFzCn7rTUtMBDLp92L4hUN8Pp7o+wQ6f7qsoT1bJ
	 S4WeTo4hm+4ds3+lOiUUawQ57pbHuizRXWQU4Q6zgN6sPQnX8/prx9uOeAmcr8ruLq
	 UFZjVwU+vtqTG3hCaPhwazFSP2/Rz/XkPiDiigi4joJCWH0Vi3c7ZGn0qcDgJzb2Cn
	 dzXaU7hZo+LZclndb1FUM9KR9VA+WKB6Lw9sOmXvuUxpPfhVCOOe2CfNK5p3wquIuj
	 gEbvQGSZQTtzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B346ECD4F54
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177932823370.7028.15813924381195957958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 619d2930cfb624a04dde73a452f11fb8d7ba29afec7dd0c6244b225d20004bac
Date: Thu, 21 May 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779328233
