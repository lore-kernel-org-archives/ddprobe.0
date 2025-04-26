Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331551922D4
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745653794; cv=none; b=k4NoQRgGxWrXD7VMi+4odw53hArXJLGxwwUetVUeIfEzLGOtVzU6Qvc7xUhSWsYEtmtXjTQ3LD/coiCbRDBss8Bb5uSjJdktWPSa6ifjVMcbjjzqSAAMWZae6j8Vyvibad1uyzegCjNqnzUVcFchE1CG1X6DLx4+jUfy9aQV6nU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745653794; c=relaxed/simple;
	bh=+suk3q7VKucJnFJTz+rOIaYiax+mXU93UT/O6Z4ICcM=;
	h=To:Subject:From:Message-Id:Date; b=KMlrKXi5X6ltWly2LLiasXYlOYEC8lUR6M2FanBaWTK9FzAiGzu8/umAYMTqPNPMuyB8/F+hxa3S1vDYAQ/4TstbsC7bu+n+GruFQ4NdZHVKJovKr5yE+5DZK6VuTyGls/X5lnT4iG337Wn+8Xwg5LTuAWFNTgiOD4DW+vEPJIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GqoyaJLu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GqoyaJLu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0315C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745653793;
	bh=+suk3q7VKucJnFJTz+rOIaYiax+mXU93UT/O6Z4ICcM=;
	h=To:Subject:From:Date:From;
	b=GqoyaJLuDK8nCacX8DD3x1Zv/NYzBM0VpFR4xFtCpw4sXss5TrG7cgxo+T/OhQ5Yr
	 FxISigrpek1unncO5m3OXTJwloTiMrUxbAtMtQ2e3K2twtBO83ZGYiW/b2SfSrHD+M
	 kqQNS9AKhRgoMBYfQfWVItgAqF9ayVHTEdzeU0mALZ0ORioF7ZYqudG8JJ2/fQ6eKK
	 Q9UsJe/hHmWMajbn7novASVZvw7b3P5KnN+UjjeE/9UZ4DMjP0yr1ZzTLWx5f6I+hL
	 l/dlypYlF9Ptt9emvo3fPlrJk0yke+MWk5qBEdr/SEpE7gtiBewmaU09Kkw2MFCRye
	 8CLEBkK9d9giQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E457C369D3
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174565379357.23344.8308334812082849359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fa13f860d0ea01bd5b27bc62405e28ee08bdb570d4ef9d184116d67bd6db723
Date: Sat, 26 Apr 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745653793
