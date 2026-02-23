Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08286314B6A
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 21:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771881294; cv=none; b=QT/P3WeIhkHOeapwuYP/msFJLRK5UZsehwh4dGqaRFvNublH3E17n58fIjs2NUkAgf3u448vXl5HQp/aoQQ+e6/a5+SBqbmYYxOm9dvcpTWHG/FTY8bzlEbzDfY74YG+FbbMFiqIdmfpZXMJOR8utLB5+vewqin1cCxO4Gqiq/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771881294; c=relaxed/simple;
	bh=bPmnX/bTUNRKo6MV9NZG0rnibYNmv8Jw6fTyetS0BOc=;
	h=To:Subject:From:Message-Id:Date; b=f+BN8tYk5HbM4jUuz7dqARylTt0mVym1ayM091atcuJAQitL4a6c86NIlQqY8gOoY/jmmTN6wfo6divp6hGyzfWbwGFiOqY4mFwgU64WWVhrd7zo68gSCCiJ9cRzE1Uj6/Uo3N48i4yymvo/9F3zbGjp03WfPv87tTquNYuawMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZdRQrlhO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZdRQrlhO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F8CCC116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 21:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771881293;
	bh=bPmnX/bTUNRKo6MV9NZG0rnibYNmv8Jw6fTyetS0BOc=;
	h=To:Subject:From:Date:From;
	b=ZdRQrlhOanyqKraqqE+PAtA+sLW15ydhVH8NHzWwv84Oev15vQEVzhmnYlne0vOI3
	 qGNLoXD3GdoEj743kwYj9/jdUCe72OR23W5cgYr+gd/IfrVfMieoQE7y+umT99oxS1
	 7bUVku1iL65vctc9qACdbU2o1j2GLFzNsR41qWabfwD13WTONwaf07BAvwufQ39xvZ
	 sEniSJB+D6R5x2X6urTHcsrJ4bOFNPHg6wC52g8R79JPD+CuOwV+BhzsnENumRBnb+
	 xYd2dEhs6BNS70us+wXS2iQHp20YJGbJIq5+MBzhsiJrSFkLP0UlF9cQSImgCgtMKX
	 UjyNCJpXzAICA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EC5EEC282
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 21:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177188129358.16559.10519947994323186925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da1e07bde903d9190df4723fc46854d6c92106664d2b852ad4f38fefe6e9933f
Date: Mon, 23 Feb 2026 21:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771881293
