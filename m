Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16DAC1BD9C9
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 17:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765645374; cv=none; b=bgjoI+WZ0+P9tfFYyf9C4qhnw/5nCGt2j56E0Nj5uAHYxHBFYX1huUbkvOqojbKn4K9S7PVbT96p8dv5/3pRbPyh0IzyBGcc0U+9+yjtYUkEg0zx/LmluUbFG7gSDOSoba8PMjjYj7xIvf3fr/0kbgfeuEjGwRcu6d8+MHgBok0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765645374; c=relaxed/simple;
	bh=i19G32jzcY5Oim4fQXKC5fl1WzsdGWmYp6K49n1fL3U=;
	h=To:Subject:From:Message-Id:Date; b=AwVInz0EvKEOswhEVUyrX1EU7u2joVMDq7/Bz5NuHmxlkOgIyLt4/eV15u6ZynQ/6ujEK59mGgD3Yr2cFRcypYbVzqHUMU/REursng1tV2Ucqp5hMqO/IkIMtFYB1lyZiJcZIOq5v7v6eTZNx9VONgLUbN6qd1ZnaIcLZdQE514=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hmKXM/zP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hmKXM/zP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD4AAC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 17:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765645373;
	bh=i19G32jzcY5Oim4fQXKC5fl1WzsdGWmYp6K49n1fL3U=;
	h=To:Subject:From:Date:From;
	b=hmKXM/zPbwI/u/fBdRW1otTkPRpm85aPZuBe7tsDfor7aQfkvasin9kdYiMgDkH9+
	 ROo8BBeSXrNnQDyvbrhKILyGePJY+vBEA26+lL9apPU499fAREWJRWejBHugHOvxFb
	 Vdebd1As7DxOiwwhzpQiEO4VuZtufyLL4CxESe/kdeB3IBrgCOuoJlzYLIpLhUj8Ke
	 xPp37wvYfpZTC4PioW9csA887X+62GxEF88SFAHtUnn9AjoCjQsxLSVnfNiXugO+ra
	 VU6PVvoR5hdLJdM8PyjIis1iuH39sA0NkK0QxPwiL9OyBFQMoUYWDYWdvfgtMM2uEz
	 Nf4X+bYqGHKmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E14D5B15D
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 17:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176564537358.21367.5103216382185714339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fb64044252da3a992a82bad012ccde29aaf01daa235eb1042b3755b17971696
Date: Sat, 13 Dec 2025 17:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765645373
