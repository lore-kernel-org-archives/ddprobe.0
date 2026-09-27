Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E7A72F6188
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790535034; cv=none; b=dZsHlIer7khqVIUmWG3iQPnOXR5CNcgvGUkKxd7+DkO0nq7mswVaDmkI+GgqN2jPRigJHyRI28v+AKvBlvLxzVqbzUm8kXXbdV9iVNgwtKhLNhNKySRsgm9+VQs5zu+NRvEeuBmXdadeV3Mgs/HBRyPwugL5SAiKXs0VJAw17wM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790535034; c=relaxed/simple;
	bh=e6kSXJOSwh/RujahpGUsGNxt7pTsyUCTEF92uggtePk=;
	h=To:Subject:From:Message-Id:Date; b=KCpg4z+3qOncZbLm8RgWf2VGR9RyNd1nVYuTuWvmBGMNEw8oYLJH+csz1khsU7cifYT2b22qjBRPIKo8KatHFWZQwXHWE57DwvSusgcMGn/iie3YZ3EzH+H/tGTZ4qf9mbT6CA5RAa3dH8wc6o7GfhQNPATgSrXzbJT65wHgmCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gHBdJNWN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gHBdJNWN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 05792C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 18:50:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790535034;
	bh=e6kSXJOSwh/RujahpGUsGNxt7pTsyUCTEF92uggtePk=;
	h=To:Subject:From:Date:From;
	b=gHBdJNWNufKAWatm1IvKhu5qbgi13ZOtBtiW0sSbxCKypaZnQSSyEVsYfPDnj1hqb
	 q44BhD5ikbqZLREPHwAwRTzW3t1i5K2Ry24ifVFXsj5eiQkn4BPGz1CF0dITVw5I4G
	 uhTFhFLXenwkCpHypl8cZ2nUpmsHkpC29Q9zalYsoPOM10ON1EIEnFcjpiP4IAXnUI
	 3cZkrBBoTNotEVP9egihaDbxDVeV8tdIT/dO79eMO5EGge0UX53xwp270DWMaMAJuf
	 IowIaN0iyob9KbSLYyeodWDBcaYCRxOit7JHwSy31DkjcAk5zWYapn8oQ1WFml94dH
	 2us7P7WW4s8EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C31EAC98338
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179053503377.13665.12527480096830768893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05b9901dcdbe78667eae58d61209959b9077c534524f38aa571fe9d34556ade3
Date: Sun, 27 Sep 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790535033
