Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 472AD25B091
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790146834; cv=none; b=uexq+YvndO5+JCTvV2cgGSut/h6fl6HwIu9OVdq1AVC18X7fqoWH8T0AIUXZAvos4gBZ9C3/B84zj45kxjKfVudrEru6OsTX2xkxnA7USoB8TmPqFgT3/9oYXEAb3O6qzdV/+sbz78fAco8vBoZNp8AHIfxapEql0QtfRitEDOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790146834; c=relaxed/simple;
	bh=5rsa0/vvB3B2BWDPUxRPRIfPkQE7u/dg9RJ9VdJq8Fg=;
	h=To:Subject:From:Message-Id:Date; b=FiT4nx+RAzVJvos8PUBIDz070sxqjPn/7E58D5iGWPirKMhRrUQkwMVviuEOgCjaBBZ5QXyUqSEMcMniLx4VpHuC2iJCOmHoUwTYKeabdbcwyFqkrW6eaDFyxnrmmh7SilWckrQpFOOyvTBlzQyZv9Pi9sk+nQf2/IXNF2ElkLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FgAhfbsB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FgAhfbsB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5C12C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790146833;
	bh=5rsa0/vvB3B2BWDPUxRPRIfPkQE7u/dg9RJ9VdJq8Fg=;
	h=To:Subject:From:Date:From;
	b=FgAhfbsBPhBILrxbhTDZ0Je1pp4bm1ZfkRSL4ysxDHOU+R38pmauGZRAOqZzi7i3X
	 j8jKqRKz9b8xUqjTitVenZhewdzqBisxsvEuSishPt2sgHh2t71e5Dlz28bwDNjWzQ
	 KMHd0X02kh4eH/B1Xz5kHrlnC+bqOueC2d/RAn5vYcKJwy0M/dHsYO5rHg1fuwZ3bi
	 VwsZYwvgPzCJagf0oLf/DE82R4lRqj1QlNFDWd6rpsx4E6jNauqBrsSJ7w2+wPScFY
	 74Bi174StMYm9uvln5keyapumT8u3YEYCen5Wl1bmBIDjODEicGKaehPl/Mg9NwTdL
	 /6L00q8wtF/3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3C22C982EA
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179014683372.32213.18129174896182549353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fa243b1fe47f7ba851421a7b024bdd573de4650eebd7dfc7acee89341ccd591
Date: Wed, 23 Sep 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790146833
