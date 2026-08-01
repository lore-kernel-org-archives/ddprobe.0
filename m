Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BABF2E54D3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785595834; cv=none; b=UM9w/N33aEY8UzIuF8ilUeVhhpvScYL9EmijxvaD1F9AjZpFV6GiNjs7omzU0T9SESDj1RXg+G623iUX51to8AL+VmXKFusWGYjtq4jE8wswsV0d9TeAoscDkRikUaP0PiW7z3m4kvV1Q5XZUkq43teYhHGaGQ8ZoVxCRMMztqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785595834; c=relaxed/simple;
	bh=1+cVc7YxRVveB3hhPL8pjqS3NBnjjH+tJQmNkMjviiw=;
	h=To:Subject:From:Message-Id:Date; b=hFCAw7doIBuzvBNGWaHrE1l7Se7pJ0OC3xlGXH66HOeM8k7ns4eGzlcHQPpPIALLrzANKZzrkh1HM6Rs8TN3CoSEdp2zptZqaDnzk8Oa2TKTTS2IdPiSunNsKsaRT/zVPzP//5bL/NjUjVXeBK/1F6MTOvJObZZ81hVvYnQuO1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZN1VW65x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZN1VW65x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D03F0C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785595833;
	bh=1+cVc7YxRVveB3hhPL8pjqS3NBnjjH+tJQmNkMjviiw=;
	h=To:Subject:From:Date:From;
	b=ZN1VW65xJeXr0nXtFpZm0C6uUnlVC5RAJzUadOO9K6wnY1bwVz1TzSS78xztsohvQ
	 LBNDLfqBtyJ9JyHhBXrWrjnHUVUCcIp37QeND2b2k0co2osmequ9wu4dwvGtulmMqG
	 4+lU1MiJbrUI7V3som6nm0RHbDrTgDfvFAjg/hRWx4qVD74ZxmONgb7ozUAvCMqidr
	 oH6Ytldwo6tawbFzAI6Gs8RTDeaQwxaYRFEuPQ5GG9lcv38ooZQRC/jLtliL9rSdFu
	 KCe+J7LyB4mNhGIvgQDUDjZ2QBr+p5vI3n5GrJR26qz5R4KYOowBkKL33VopS7X1z0
	 n2cu/CEug8wtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADDB9C55173
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178559583370.28227.15457905508607701639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6004df51ac46d1c738e390dbcef46f55a408499dafeeeae8dfbe1908e7634a9
Date: Sat, 01 Aug 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785595833
