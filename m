Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 291BD362093
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756927794; cv=none; b=JcfMl40u2J3IfCYbSRW1uuanY/UEph6MGS2UXWYqaufx+hcRLnwAHOdegmBvgid90/wb6YAzfz630BFpVJoVu56MMxmz4EPAVPbFjXIjfruSs9f3gGon860LTyXP63QGCXv+JYyOZ44P9v1YAdZUYZg17aEttyXC/U6IhxL9egU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756927794; c=relaxed/simple;
	bh=DngDJZotVUztvrkndbrPA9W7FEK2Ob+8TSIhR77ni9A=;
	h=To:Subject:From:Message-Id:Date; b=RtUjFB+hm1bWwUHXc1+ynEoM029QO9Qc90UyIHBecHt9WhV5xvFR9uAcKyv+JAXTznkK+WtW89mZV1tHlxHN2lF0M/UjjuwMN+xRnmwuJhEQI5zO77QNPCTEk6E689igv821B20zou4htF+TpsBSqHyIfuKzc71gFpEul7ROn0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mVskdCpK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mVskdCpK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60FBC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756927793;
	bh=DngDJZotVUztvrkndbrPA9W7FEK2Ob+8TSIhR77ni9A=;
	h=To:Subject:From:Date:From;
	b=mVskdCpKlM1bCzjEy8rN/02cdkuIrbCkw3bD1ABOzl14M+LII63ZeimAGz/EVVa9J
	 eMvPUSdBdlhm8Pam5iDvzgFbTl1DT2Ld1b1p0C+Nk5osGowa01b/LMgd3/xGMBRY8X
	 7Rsp+/m0x7yROjfcaXKPw2zMWyyvXhVr5sYbLnkfDmnHqKPWaE3L3OHhE+6LTci949
	 swhsJllocFdFUd3SmzzEkWUIiWqgk0h3rpRobmWA816GQCgIXS3QMjSzO6sgmbHNjy
	 DDUHXX0sXiMOYELPg5aEMFWPgNERQmZXsCnZYMTuSJ4ulpWhS9sOTEYQi61uE4Hy8K
	 pKMkOkglNoCCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9549BCA1009
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175692779358.5047.9799997089276214689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a24e510be287ae4bc36d3227f5df4a12724a467092b8141cc786e2e294b820c9
Date: Wed, 03 Sep 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756927793
