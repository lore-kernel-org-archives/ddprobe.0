Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4578463D
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745152194; cv=none; b=ghljhAbIKphoIE2KKw6Sqb+eabl+BOlK6T07UXE6gS/vY3DF/X3JLawC5Ek14vfm/r/5XoGLHOw4HRe3EJd836lE2L4+BIhQBM+P8HcgKrTEnrZIwQ2lfhsz+/OHd3W9OOQ/GMUhw0fwjPNUmcTqurO5ZW13k5HUjjQ97coYJQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745152194; c=relaxed/simple;
	bh=1dazrTzhGo+yJ8xBctPLlL9fN6b+2amFijU7JehJ5p8=;
	h=To:Subject:From:Message-Id:Date; b=gfAdmG/1EALm7t9GRgPtTrguZRW3Y+iRfsg24eQqEsuUrHJXrwcsG7FPi6zfjoU2RWmtS34h2T5lXpwOnWu+pDz/3JDakFOPttUrnjajR8bXnCHqFTyIAY9MvAOav/SQTZLKvWSV/zdX/3JeyWbOg7exlQDIMabFm95VI8NM7Ug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bdMPlAAQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bdMPlAAQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2396C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745152193;
	bh=1dazrTzhGo+yJ8xBctPLlL9fN6b+2amFijU7JehJ5p8=;
	h=To:Subject:From:Date:From;
	b=bdMPlAAQRS1OM54lnbLgMrGC7t3WgtCXtpkfhEXJWQJ/+osN0NNrbYAY3uS7eUs77
	 eo3OyX5p+MHxALG/oIEIyskznF3NYQSV5RvcynM6fl6iDxYK+4XeR0mW7J87WA7HxJ
	 jXtWhkkxu0meulXEb3aQ8NgSog9/dxO7Blq5toybw6I5SQoGX24qCei8AhGC7Ekgpj
	 RTObRSJc26u3FTHsp8pZYnAMrxEclwEkPEBwgQvM3sjRyExxPWZ/VvuSymThw1BfCg
	 ago2Fffo4FXGFI4eBbPtzOmVD/iEleJFMOJaqgGOdboPF7Fb4Ru9/FFZp/036ntF4h
	 u0zwlMLKveXjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D699C369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174515219360.13820.7891118654802547535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd5bebef22df816aa67b6564a957932043987d3610d4c5580e0005d359c3a91e
Date: Sun, 20 Apr 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745152193
