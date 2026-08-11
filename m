Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7A0B442B0E
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786456234; cv=none; b=ToUGQgvo2t35IU5ClfA022hC5y2V7KuBd1yMQXn1ipRp/C+yhEgeSScI3HUp9VH9KvIS0CZtxYh1Jr8G5vJj639Wg71yiKYhiIk+xxPKPBbCHHmF0eLwMq5+TfdSSaQP220znN7iPd1BnnqANZSbWRuqYRsu171ND/TL68PQkho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786456234; c=relaxed/simple;
	bh=7B8wSNJ2KXW3vXZNx1VOsgjvHzpzHcTDd4YmnVJZEHA=;
	h=To:Subject:From:Message-Id:Date; b=OItJ9J6KAyJc9vDGSp+4ZeWjbCZ7TlTlWFhm80VAMmopMBiuLT9ErX0uGuCX6kJ/bVhFwmdv4LX1zDOyVCx+DVmutOAy4850+PFCsagnphROHPGeInPYDDkXGBW89EW7ETq4sFGrTdVomyIJUhJfZJ2tml6TDyJQyWZ80AFEqBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EGrYdNYd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EGrYdNYd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D32E0C2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786456233;
	bh=7B8wSNJ2KXW3vXZNx1VOsgjvHzpzHcTDd4YmnVJZEHA=;
	h=To:Subject:From:Date:From;
	b=EGrYdNYdVY/t+vodUQvU5JY20+tMxOrz6s9Us++siZ3vedmdYMMviER8fy4NxBcVS
	 6TimRmdfLb5TIqMk4Ucyp9qkIqVSZaDHPapbrvNu+4l0VUxBJF70CbKTwa5oQI7SwH
	 Ic6PDhBvQkzReT5FbYAEVaSCTRjLI0SBx88xoFNoE35Q0dMjvXlOM0+ymZyrX6PzDk
	 vVvTbVQFIajxwnA6rE0UaNOosHgXBvGJdiky00M7GN8UZLfaTScUpnve8OLFXVrHZk
	 493W9ut65YZ7LHvVOR3dv6fuhQn0W6csr4wVysxoblbDFSy27OI7OIcT71ueb4WLxg
	 aWCIMNer3cG1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B04F8C5AC67
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178645623368.7858.12772241236633473649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33ad4877b24ed49cd075f51d25a4cb64204409eda1ff615333087248a7910d5f
Date: Tue, 11 Aug 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786456233
