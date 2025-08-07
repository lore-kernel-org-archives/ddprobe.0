Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2645B1DD9D3
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754557194; cv=none; b=uoQeio/V6PVPjNzLFH+Tz9SF8JRGRP50+xvIWTuhMmFhZr7hkRz0fDq7KbXt4yvJn5Zuq5ClsDf5joARQtl8ga910reEUHJTTafcY4da85lOtdRWBgotA6NeMNCJTeV/AlKMKKzWWV/mJcfn+kwGH6yTjOKhmly+sBCdCaX3NDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754557194; c=relaxed/simple;
	bh=0eBHl6AbKigUg1JbBPGVNo2k6uHxGZ/Z87Y5FWwD0NQ=;
	h=To:Subject:From:Message-Id:Date; b=TahDdwigWItE0mdxjaLil2XZSm4K04gpGoMfwr/s1WibrsB+Bl0L/Xo4CTCisgBwaYLmcglqryFnZs/4QHhZNOITM4iMYNQ6FrlgGtiZg0QA6K9jiVUmP/JTuu8nsYlZIdDrBdZwr0sTAR/s3ezU4geBh7h5eH3zK+2a3C5L6AM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MY4jFgFV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MY4jFgFV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A6BC4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754557193;
	bh=0eBHl6AbKigUg1JbBPGVNo2k6uHxGZ/Z87Y5FWwD0NQ=;
	h=To:Subject:From:Date:From;
	b=MY4jFgFVr3vU75Rm2f7rzkUfqIWzo6PN77uu2qzRtdHSIhVAUuCNbZQ86D8KZIQqh
	 5g9gJzRuyjshSEU4pVSvA8q2hrh3cTR+HRkyg9GDc7D/7l3gWRvkJEw/CrGjOrACtd
	 0Gkahuwxr1SPoN1OF07Pk5TkL2kqn4O4UVkgcPj0abueLomeEk93Z12WZijt1DmHvg
	 1cQQ9M6SjZncz3R4T2/4roj/kbgHatZzHPxkYxi4EGsTDFBzHk7UMirQ27yg9oP/FY
	 lzIK/FFJf4EXbTTFpi7fUL6H04k+3bVy37Gx5SeA+UwvRShBhDCnHz3jzQ7I0w54BI
	 21d55luRavdTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9178EC87FCA
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175455719357.28462.341276629628161571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 740ea84494c06a06e48906dcaa910382c7e4ae9375ad656339e5a783aade79dd
Date: Thu, 07 Aug 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754557193
