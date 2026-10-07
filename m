Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4840622D792
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791334834; cv=none; b=cRtQjpH7u2eMrHbsXsmJovRB6i0Gaf3UHkKpSjR7+Ygu6qTBpq7BHGN1DWFoWDzCkynANPNjTJtuhj3KrSVxi4jIs75kh2Tj6a+pDZI+18ray8mF0wnhBcR+dDPEEMQIxXc8Xf8+lFU8lUEIHtN6k30uVRcsuCjoGD6/sA7Jhwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791334834; c=relaxed/simple;
	bh=LwrmeekmIUDuj9bDRnoOwNXH563lOWSs6uwLz0OwD6Q=;
	h=To:Subject:From:Message-Id:Date; b=IEYxOAD10wWymTM6JotAFaDe4KQTeky5spnstiOb3hLVKcqFvQPWj7l/iCv2U7PyzyyZkLNt5yTdl8zEP2QcVavysNDpte93Ap8f2iHiTF/Z/+0eWeYLj+SjFzW9NNkAK/tysojrJFX7tooZ5yb06KN+08plxDV+3C8bM9qibn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nk6QA+tF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nk6QA+tF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5855C4AF60
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791334833;
	bh=LwrmeekmIUDuj9bDRnoOwNXH563lOWSs6uwLz0OwD6Q=;
	h=To:Subject:From:Date:From;
	b=Nk6QA+tFgPygKeIXe4sTvzli7nOZBdBv/IXEu4WMbrO0OS0ymJuvBVV6j9OcOJHj+
	 tZFAKj7fQsz7YkwMfBvCecCS8XAtZTUJ4RqVexCxsIE5IegLvBSSuwasL/2H8A+hJ4
	 DpLiG1CYz0FjBEYCgx6kFg68uK5K0Qi0XMpvezrep/AYau8qXsfuaWJ78sfl2spATO
	 r0T6TfLjRPb6hwUPHFkJF5/p12IDdL839mc3F8ftFWTmoNnV0LcY9eXX1S/HlIVKYn
	 E5Z1xE+yPBrORUiQFWu8EvpyFiskNQO05J0v5RC4yqf1zXLDgCbq3QNkox/GbOIWN1
	 XQWdKtL7BzCmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE66CCA5FED
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179133483369.29765.17625011915321557386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06e535e2ac9ea080b5faf953eb570210823b02009572b58625c6b40ee67f7ed7
Date: Wed, 07 Oct 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791334833
