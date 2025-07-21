Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E83CA1E489
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753076394; cv=none; b=iLGLsTWq3yHnaAABQj3PLL3d5gPNtFhA+M2hFS5Fkh3wwzxtyOzKTbp0baP5JX/XKPxyxGTyL6u/RwiY5DmJTaKmryuB0d5aQSHHXFG7eiD1mNF5XQV0fBuoXWrjSfGoZ1TAeMWpb1DSdsaJ5l6GrMUfBCIHCxQh7E92DJNvGsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753076394; c=relaxed/simple;
	bh=tyWz4oi2gStL8+ZFt3nqTCPw8qTJU3QsAK50QJIe6PQ=;
	h=To:Subject:From:Message-Id:Date; b=sI3Gobop5qZX2EzhJvY2WxulJ0gSFGxEUHl8WLE24LdQnNRw8la8/2Z4fJPg6YJl+SGIhjD/v3tihZt5a9cZyWV9P1CFCyqNxUUIjPD7Rez5zxIVGQAJO+mObp9Rsp/Ucr6xLr9xh72rUpz7KDVCmENx8vpp4vV+5qwoMQFRClk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EHTtP68O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EHTtP68O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6729C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753076393;
	bh=tyWz4oi2gStL8+ZFt3nqTCPw8qTJU3QsAK50QJIe6PQ=;
	h=To:Subject:From:Date:From;
	b=EHTtP68Orjp0voFkVZe6dII5BuAwL/S8mfpeNVT0oTKKaC+oazI2ZffUsceUhF1Ye
	 dkejj/zxHuNN5Lt0SK6ksWYU1gdPm7Y/R0dOYvb5Mgz9JUwCSDMXmN+D7Kk3sm7QA0
	 TGJ2OJ7C+6MzKlce7J3UWxhYyvMPA/P8ow5JGohzllHnA8aW8M6rDAW3s7uTbUuJZY
	 sjkb3J+U4B2nQ2cuUl25bex5is6sMqkXGAEnN5jtHgy1ZBV/GxgdLtyWN6ff99oSja
	 6k0TaIvccb4WeWqE9V+GrWsINQSYYRME43Dl90oUppPswIdMzx/36EY93TIebG6OD0
	 Foq0QKmB3yxtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DAAC83F1A
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175307639358.28784.16074629564385819002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7769c302b284ce2d05a5e49093d864caf030b70d2e3b771ff8bd7d365489f4f3
Date: Mon, 21 Jul 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753076393
