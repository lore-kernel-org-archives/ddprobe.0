Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4751284039
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 01:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782263194; cv=none; b=dRTkZTFDsz1AOYXSgBzeG0ilkd/URGBz1FliTkP43GLjvPDpGur+gzC0yxMXwTnDYuge2Fap+5w6SeSpGA7Km5E/3MFlcTG0MujjghRDRZ7rciMPVy6aw+krZ5aXqhm+2O8OAIa5V1W1s2inyvfU3f4jv3nKPqZsfQcHxEo1B80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782263194; c=relaxed/simple;
	bh=bEvawyT7pHOHJNiOl48RWES+NQZ1rXzh7je1t/Fg3iw=;
	h=To:Subject:From:Message-Id:Date; b=r8pgxui/GJjvPuPhvLK+hFiRVPgxtGzT9N4ECDX2wyMNhytGe/sjIyOnRNJSXdaxqOxrirV9+xKBCZZf/bEkrCFGsLFj/XiUix0jo2ua1wUpP+g8FSX0YGqm3TMOX8SU213lNcwtMiUuqt93Bp1JjW78mq23ojKzIaK3L7fKeH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pWoSf6Gk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pWoSf6Gk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB1DEC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 01:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782263193;
	bh=bEvawyT7pHOHJNiOl48RWES+NQZ1rXzh7je1t/Fg3iw=;
	h=To:Subject:From:Date:From;
	b=pWoSf6Gkn0dxBNurAL2eeq75PlQcVMupBHTWxz7hQzRdg6750rTD5vOdbHdcTAjXN
	 78gBpKOLZCtfMPFMBUl6fFFn5VP1WGzGmaxTdt5MjFuyM8JWKLLTJ57xjxbW8a0x3b
	 bPKNYoAEpaz0LMPnzHZVqxRx1IyHxKpfAwcLPP1X2KrJO9/ievB6muo6BGcrkrPRfQ
	 k2wsop3tI8WkBD3yN3rz3/pQAy0gB8ycTGNqe2h1H6aI92soSBECnCTpJB2KMgMDNl
	 2ba7jzwjxPXef/5/XWAwWWc+8uF4wOCu0HJHcZ0n6nMP9a1sfFnSqfuoG6Yjdjo1B5
	 K0CfmQIwiJg7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF4DECD4F26
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 01:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178226319369.15218.4088582416665716375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb9ca6abb7d15b7e38d4e22dfd1f0e71b3e846191e263f604e04dd53ce37a5f0
Date: Wed, 24 Jun 2026 01:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782263193
