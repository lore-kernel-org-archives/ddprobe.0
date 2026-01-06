Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1175B22129F
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 02:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767667434; cv=none; b=up8o8kCQlCafwOFFyruDRkFSnhALU45qZhyUpQaK8cnWADzTT1hlPWIsMVFoizrMxOu/1yDUJVdYprdjCgmzXqV7HS8DUZBhK+wikpkx/UDZOJOar7gNCatYN6ZQwVku+Kesqj1Jv0ANSRKgmxKLCTir4kbxzJd/cQro1UJLFxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767667434; c=relaxed/simple;
	bh=NJOqG/m1EvbBNqr1pOlMZePb8r/P/lOZHAwYn0/DnHg=;
	h=To:Subject:From:Message-Id:Date; b=e3dWquB1DT9xIlgIzwer9UYGa+BrjuFyVUt97GWzehPQyHFFwCHXp/diYLk0uOkBV5lomhSl+mCt5r4209+yFxNoGat0YGYPrlHr9DhreKmrK8C3bu1y+s61PidDbnppfz4OczjcPQmRQhhgdT+5XTN+G042gX0KD7bCc57RYC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q4PxV/NQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q4PxV/NQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BFBBC19423
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 02:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767667433;
	bh=NJOqG/m1EvbBNqr1pOlMZePb8r/P/lOZHAwYn0/DnHg=;
	h=To:Subject:From:Date:From;
	b=Q4PxV/NQFW7MtIkMlN48trxVHYruCBGEqoFSbl2nZXz5mWqI2XQy3xynG/d6IYxPU
	 v6MY605va8Ji5+3GDJ9ExT0bHNecOPYzlRC8cre7E/p4l6TZVbreNwOXgw7zVgJFIJ
	 x4hiVAYOIpMYB9QTNh9L9J9glTC545ODz05d4Dv4YBmanOUWFcVZeLoFR/eg1NCmPS
	 dl5CtO4+cZtP82+Nm7KyUeVmFa3JV+iFd6RmmgNruqTvPGMcUMhfJZ635GX50Iz6Vs
	 OM0trlRvCRSf1LVYwCNZChAf0t6hfcwwMSiLZXRdSQ7CMyxPfkB5IlrwXY1YU8I5Pn
	 jYUTrFMp4SmCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E67ECD0430
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 02:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176766743357.9781.9798354085702109078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 875ebbc2fb180dc6a1273d4a5e0a6b5069ff55be93a00a87ef146eccec957f2b
Date: Tue, 06 Jan 2026 02:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767667433
