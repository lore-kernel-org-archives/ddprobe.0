Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A1573B8958
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 15:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780672474; cv=none; b=nq4oCcds0TNOsWGiVfe1DtlwzYbtKQGqUvvxuvRXo7eW1h8SHMVmoyE8lRn1Rf/EQmVuLSGeabKh0Mn2/riw4KPPXDu5Yqmd83fDJQvwDRTv4WKCuLpxUI5DOImPC+BNygzK/ErIdDtpChzRguq6PFr9yJeA2QC7307J4ZE7zIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780672474; c=relaxed/simple;
	bh=rvd4QyruQIdBn6vowO+G5eq08A+CgW494+oBEeXaFC4=;
	h=To:Subject:From:Message-Id:Date; b=C0fjsVBss+IZMEEOEtrBZkObQ0pXvyhZma2bZXjdHv/5HX6QHk898TBoeC3YBReEs9rWCYtE3EGXMTREgtj7+38OgpLJwa0oK+BHs59JKCnMO2MwtUPD+NyNjZeS5t/TkzRAvuSqIX/gGUKIMQuEYiyX28A0y0n2Hxa4l0fVFr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ff+EqiIm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ff+EqiIm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8F48C2BCC4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 15:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780672473;
	bh=rvd4QyruQIdBn6vowO+G5eq08A+CgW494+oBEeXaFC4=;
	h=To:Subject:From:Date:From;
	b=Ff+EqiIm6ADj83wIg5rLRRDZpc8yN2vYqVLghKOKLgQbGdBGLed3eeyBWH/m4m7gv
	 zZ96SdAXaKV42KoKvAiTm99ESws7TG3wQ5n+6hqTzOZhvFgEX4vLk6Y1byyJ+utZHZ
	 Ko2K3nIejjfjiBALHml4CfjSNmY1lNp6QHyqjjd2zjyCdjKwUZcxa+ElFlj05cGXSt
	 Eisp5qQ7ocRiX0AlTGXjyJcRHm+BL89gGtvzFBBZVXc0JxFdv+9vpkUqPYN5x1O3XS
	 TbelzHG7O16JTVbkQZskUm5kHP5yXKtpLULkfB6Gy/muAwW2ysuknJkl0NyWCYX9yJ
	 aYen98uqFizXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6906CD6E7D
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 15:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178067247373.11381.10278461979576875015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39874f4b35c1b1b937125ff429d5f7680334a35cea93fa53a34b5e41d79e5dc3
Date: Fri, 05 Jun 2026 15:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780672473
