Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 363A91F874C
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754486994; cv=none; b=ScWWI+Ry5n2qrnVAZwat0UqnOqRYmcvwAOV8xDfryyDlbRvwCZQ1GUASpxuG8M/IFrd2eF2PQBc6+rttpgJbdCfr5ES3pG7ZlAb13lJ1NTsHlygHbwMvwKcX8xLEcYh+q33tZkbIgenbP+DNesl4pUKSVbU5kKMpD041H9i3UTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754486994; c=relaxed/simple;
	bh=wGwaHpfoLN/jwFSKp9cRYyJTrvGBbjKaJouzQJ+KaKQ=;
	h=To:Subject:From:Message-Id:Date; b=h6GH117CS8R6tgaj9stb5W/6PyRNFd7e+A7v0lAOQzhVVDv2x+PTliH/TDHM/509UFk5wAvKWY5J2ZjAiEzOskk0FaRtwq1JVHnmmxdSjDV1IBmjK4/TwMi8+E5yxab+XkRuGe2OWkBujDe3POJfAwhr3i+2g+qk1UUi5YWTQMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ab7lkuLv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ab7lkuLv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7373C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754486993;
	bh=wGwaHpfoLN/jwFSKp9cRYyJTrvGBbjKaJouzQJ+KaKQ=;
	h=To:Subject:From:Date:From;
	b=Ab7lkuLvC2xGY647jHLZ77rUKCaG6wuf6qk4Ee9eZVNUeo/2vERssRqjhpQdcB4ps
	 eQ8GMG29kpFkEtqmBwKuGmTbRihZUHeckLdYEcUKCDe7Kjp8tQCpqXAw8BQdU61VzK
	 uLjvZPLRx2IDKovuZbaLVUK9ZIEKW/hA+/tOD1nKYOpU4B9UxUzXgCeuolkLO0oxMV
	 6gG0ac96tw5C2R2TrQszl7SxAu6Rb38LTdkbxF/WfYju/0GFN17RB1XsEwXobRMPOh
	 l5UVAO5QfJtcAVXEiqRQ4usFwx/SWvH3UtqWC+J1M8PGILLVD7rmg62TITpNAY2K8U
	 zOEzOwA9ATqQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C1EC87FCB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175448699361.7240.10635861329973485973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f562fb28abe9139073331bb8e0a63499e4ad4ef4d5e091f2d5b0d3124ca0460d
Date: Wed, 06 Aug 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754486993
