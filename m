Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51BC84E2F25
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790025634; cv=none; b=FpK/YogkC0O8ABOVd5q1MKk0kAV3ySVgOCtRO4R8I62VxjljO2UtR7lYAc9I6GTwOlooU+o2elbXwe7YPgKl+sxULZg+GK3jQ9n4hhjcMEZhpzUD+Plv9vpA31NiIDO6+xPJjubKc5350Mo1YK9gwKnk6Lhvpa+TElajW+e4IiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790025634; c=relaxed/simple;
	bh=cuPCyKAYJCzmzgXPmHXXSbjDfr608RvD2zhbkA+AVX0=;
	h=To:Subject:From:Message-Id:Date; b=oHBcWiVnm/Eag1cHrtDdwrlxSfRT2RDr0DJfw5tbS6Of4LkLHjC8Gn9Fnr1i7wdP0IdNgxiB5FLlkreQHfJD825s8GR1uALUFxOhU87Ka2LVhBCBv7vWyPiSZ3EYojJbeqH+DePWm9G8Bp2clEGm3bEA9DTSi9nS5R9/GVOSMns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j19Futgd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j19Futgd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9728C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790025633;
	bh=cuPCyKAYJCzmzgXPmHXXSbjDfr608RvD2zhbkA+AVX0=;
	h=To:Subject:From:Date:From;
	b=j19FutgdFYg8OWl8Z0WFeKPQ39dfm0uQG+Lueyoc2GgPAMjIQ0sP+na44V+dwuSZ6
	 /pUU4jZPnt2nerEbYmfH2N9KnOI/Gm84YjCgK4hvlptPYmtRSea2Yzxv8vjKDufdnk
	 1yzcmzhI091mVeGNAqxw+EbwCmkvfVQrY6ht6VDyx/2+aAxCtXHbGdI/T/WL95cge7
	 ej/XTswfuObsWju2T0O4u2iaPupC8p3NMqzQ7lREJzkQHR9dti5RQhJTy8NfZpiwWO
	 Xsncu/YwpYO3v1E8naTfbSaiehnQH88VtIVqptEXReKXT9e87mfAzjSwUK4bp3hiA5
	 LfibJsxZioAiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2BB8C982ED
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179002563371.15523.15978481396132959747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb06b4aef85f0e0f80903d83ae3a79d02137926756f48a1f2304c661805b675a
Date: Mon, 21 Sep 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790025633
