Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E939D4EA392
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 17:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778864434; cv=none; b=OTkE1pdyRloGSHgH7Q0KE27IH1xnfrEbff7H/uHqZeLUWBiT42w8usJOLW4sDQnaskzQYGjqPaDwrwNq7E6VdIHZuvKaiJMnDV93lNusPldumoTddZ05FKHHsI6RvcOEFQFfuWFdc3okdqqoMsdpxvPR/PvnBuwt3OOFPYKrjd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778864434; c=relaxed/simple;
	bh=lX7/wGLxSpNnDGYj/9APO9KjbOpFUzjTpdClkwAbgNU=;
	h=To:Subject:From:Message-Id:Date; b=QAwqu+LAOgd/FlQzCelH26bIiLpsFDG0MkuNYrIAfC7zzjKCAQt4g67WjGi3dDvke+dBUjGU380WxqnyCWN7uT4qVCu2249VD2H/ScZG3R5LsS4dFK4ENb4kr6kCutXUS7xZMkCNm/JjVW9qOi7517pOV2TF5FyJyeeDRQyDZcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AeF9Ppaj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AeF9Ppaj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C60BBC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778864433;
	bh=lX7/wGLxSpNnDGYj/9APO9KjbOpFUzjTpdClkwAbgNU=;
	h=To:Subject:From:Date:From;
	b=AeF9PpajB+/TTiXEmjDaaHzHL8ZWV0hpHFOaYiwbrOZdZvR6qZ3R1e9MQCQYSIfCb
	 7hqvMs1Haoh6EkVO6t2kIMBB2IbKgANjHqqZZ0d0XNH63si7Gb3SxAJWzsJUzGJMZr
	 VzCZLbRt24DM7W6tvFN+oe5N0GnMWex5HWN3hZPyiaH8cR7MzPCf8qmTlSvhWJO5DY
	 p0jhsU9VahZ2IvJf+luW4yoGg11Ujxs1CqnTmjOmKAfCECATp6GgszcZKU7ZTWm/sj
	 A/Q+/beQb6LWlF2IvAnJF5a/92aP1OBlDkIDQJ/gqbINcfwsALzfWNZa87EX9qEoas
	 9XrZHP7uqUW0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1E4FCD343F
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177886443371.20660.3883250960020747806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9a78b15f96820641550833818833780b1482c512aaef9ab812849d2a0f8f6e1
Date: Fri, 15 May 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778864433
