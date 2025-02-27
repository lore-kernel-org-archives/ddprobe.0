Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 395C3276D24
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 23:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740699534; cv=none; b=m2Utqstgaadnz6bqQiqB8YeU3yqtQswjWWuoSDEF2PAm2Ldtx2Ji1jfAj+OnExMcilKYrbmbSBTRKn7Twhst5xwn/k9LsVwxyDJOkZbPenlxs99Uq8LGID/BFy+o5ZRaAjIPxZ5UnMCRZetJaWKIOymTXggGmv6JHvsSYeEkyLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740699534; c=relaxed/simple;
	bh=C+SAt0cnXAs8Xtrr76/yvFwRvefo/43dn398BCSHb5Q=;
	h=To:Subject:From:Message-Id:Date; b=UdKcGdlK+rI3izauPAojw/BX713bp6B+RW3RhDW1+Zc7eLCkX34fLzdH6KMB/nvVc0sDUzSf03Odq/QlCy6+e6uMHiYaVRpFl36dzbkS60yQJiTLDekKf5vo/a5TGu9tXYNmLpiZp1vZs1IKp/cvTxO9JoGJbls0wZeKa0DaL24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sKpiU8Jj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sKpiU8Jj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6683C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 23:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740699533;
	bh=C+SAt0cnXAs8Xtrr76/yvFwRvefo/43dn398BCSHb5Q=;
	h=To:Subject:From:Date:From;
	b=sKpiU8JjN2fTCkC3Iwsxfevl9cJu6wA9OOr+SB67azErxUJr53dcHueAqOmcLTF3g
	 VqKs0/e2tEsRuF+D3BvCTqteytkKZkCP/tbPxxEIhTYfJZiXyl6jJJMSVvSa9oFm44
	 ELIAf8xC9Aw2EmxOtmpTfc9GNmn1zvdwpQkzPUXlAecMhCmfek6ReiGgep2qVgQAKU
	 BYLd9JUrrUix0K5EJgijO9ehfjd84j6i48zCO0HClQNSNRsFAH3G8dqYysiDkusv3k
	 toHzOOOsTiQL5iRCeFYoLHlfxX1pUECQ/DzIkhIxNjxWEqzxEoIaQUiKZea2/X5Nrd
	 VVOC49VW+yY4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DF2C197BF
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 23:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174069953359.17076.4473173108192609108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00abafa8324e8daa2dbc44049704476d443aac33d538418e67905e8c9606910e
Date: Thu, 27 Feb 2025 23:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740699533
