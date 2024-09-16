Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35ECB142623
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726475154; cv=none; b=RZaeVa92v8mQU4cW6DIiFAT6WBf18KuEZkF2xV6bJsKDr3f3iaUU084qzU5n61GlTSRi69GZ/xzI5lVh4zmnAHeL/VfCjI/YEyFZgjA6MWydgvqYhjsuAXSUlqjkseln2eWf1ykdB4ANtNHuw941hlkkaz0qc4BwtS59pajt+DI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726475154; c=relaxed/simple;
	bh=XSAJx88SMXz5qPdVqgRtJ2KIdr7oa9y4MZmyBb179qw=;
	h=To:Subject:From:Message-Id:Date; b=lhsw277+DtkssQcbrvHFX2yaA+7r7LZQT45tHp9YPpsoeGUW89mqt2KipOaVkcNgvvAPJBJGeybC0PagSN6glA5UYH/uez9OL9QAbN/ldHV4dsxNz7QylcGGOHf/dgNVseDaTexGFQ5X8XbMMHAFvYXVyFJHlTkbbwRUhYj6OvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lK69/f9r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lK69/f9r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62FBC4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726475153;
	bh=XSAJx88SMXz5qPdVqgRtJ2KIdr7oa9y4MZmyBb179qw=;
	h=To:Subject:From:Date:From;
	b=lK69/f9ryyUsGhw1GRPYr3HneqL7cAsz0g7D9vKxHOOrypdd9KjnmyxkEiikNG6dX
	 UXxoNm6id6fFGL+B4SXQE6v704Msq0C9iND8dWPCDqkHuMIZOylGQF54iQE8Clf1A+
	 CwRS2ObBe3a9ZyITICceWdax95bhCDfxd4dDj7t8piTvaAK6HnRKaMJdMAEuIQLza/
	 YMz+WPVUudLCvQ7ayEuMXpjrq4ZqIxjkIkDTGBw+ux3h8GKfGW3wZ2jvfW+ixUnNCr
	 pqbcRv3vyL4QJ0DOvV8Fx/vMJCJJRA+uk/JfTSoP4ZAweaCF54Sg8t7cJ8/7QTiv/N
	 IZnD/Q00Noc0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961AEC3ABB2
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172647515360.8260.18442712641655633050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed9ce7787e759097c714dcb93dbe93e20b7da7dbbfaa31642d13d417082c1534
Date: Mon, 16 Sep 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726475153
