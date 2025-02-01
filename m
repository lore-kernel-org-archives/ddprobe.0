Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60AB3A926
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738449354; cv=none; b=O8rhAiXXwlYijONolaSa1Lj8WfH647g7xFiQfecbiL1LecledSCry7IqQ05wD41ep7ZWI4hhOoqUGxvRImBJX+Vp4Yhpqe/WdbvGjEQmNyuinbEJ375TpJ/itujO2SlIoK6n2bxl0PRqs2iKJMvl1JYTGrPAZOxsdZ50gOJOg90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738449354; c=relaxed/simple;
	bh=kR/14WM93AfpzGIaPWoW/MH9GEd9eTNiPSuDlt8S2r0=;
	h=To:Subject:From:Message-Id:Date; b=KgkEaLrHsZh6eml8svRH7PbGKGOrqgV7irutFfKNEbSczEtWw1xeSROiwmS+Wgq7WSZ+KgI6mhWq3toQhywnU7QeSrcNh53OV40hIy8Q8N1Sow7XwCX3USlktEeyIrNg5aPAqXZM1fsNC1aNgRnRaLv+LpCbBxA+qqKrfeWl1Ls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gdc+f77R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gdc+f77R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6FD0C4CED3
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738449353;
	bh=kR/14WM93AfpzGIaPWoW/MH9GEd9eTNiPSuDlt8S2r0=;
	h=To:Subject:From:Date:From;
	b=Gdc+f77RDm/Pg075cOyDAfmiSl4dC4HXZaU1e54q2yBfoaCckiQgGA0EoElY1ad3x
	 jcKrxlI1ZNOATs9aWcu0+/uXYYrcGSIgh+0DtFM/YYsn3n5yZuWziikY8wgdwcNm4p
	 vD94uLK6hrbOPlw8LEbj38uJPWDmMink4NehU3g7hFG5/4ZUnmwUBOg0KMZ8Xdpdns
	 Jc7sAc2YVqwJVFFD0enlEa2244JRS1XIXM6NHWppPwsKd5HgXj62OsiyqxwjG0hLGp
	 8BdxEZmwZB5yBzMi+4FVC5xYS4+oBEwR8/TDleKa32nAD3kq501WY+DyPK2I4PO+3N
	 CworTgphFP2QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DA68C0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173844935359.2075.10526285548522177671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e07501dde5f4401a18f9d1dc74d1e00d2613dbdee1756bb2dde332f1f7891d2c
Date: Sat, 01 Feb 2025 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738449353
