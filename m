Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FF512DA769
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 00:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767055435; cv=none; b=mqNrmtai8f84p4ie277MO5mhcZxwaS+4UFiQth2MftlfLVNNlU2RWnTDwoNy6DFn12dDEuxCSo7XYiSWsieF3sKQlCP6JD+Pdf5lJ+Z0NxLjZZSHe+Aq8BvNRQGenaOo8OmyW8E32G+UzJih9vz0eNwdJ0mKGMdWrpw0qUo+pxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767055435; c=relaxed/simple;
	bh=Ni4AHFKVp3cG1uEQgUTqo4t0XpfWvD4wuR5AOsuOfxY=;
	h=To:Subject:From:Message-Id:Date; b=N9zt89gopzpIxcAZOt20cbtkWYPuU0MkwQP2CkEqX4VjlSyNGcv/D4zoYh8CBg0xaLzcgyqxhrX44r8COLxSXx3xzaHPzIjxx5G0nfTDNZ7m3Q5jtJd2XfGEWl6ovZk5vgqOUkQP2YaVeqadql6j3xMxQ+oPQkWSs4Ko1RWgJ1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KYclbbhC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KYclbbhC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FD8C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 00:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767055434;
	bh=Ni4AHFKVp3cG1uEQgUTqo4t0XpfWvD4wuR5AOsuOfxY=;
	h=To:Subject:From:Date:From;
	b=KYclbbhCYxahsd3pTdzW2HEkSGQrrDgyw9+vjsAy5FHeI7732/4SCtfvNFmawzHjz
	 vz5lK4R+ojG/fWd/fLl0BnUb9Dgh8iOwAWEVqV6x+2dASU/bWWaOvJbZZKuFiEAQzp
	 BstaAjRHey0fyDlz9VFHohhfQchAaK5abDwF80AObEAnmJTOfVoCvS+cVm/rOXLLoz
	 rS3boJ1ZW93VKsWw6uz8Zrj2hxR5bFjjzntsN2vLTnXbYbaJZUEvif134Rlk6a6PpL
	 CJTaPbDUbBXSVb2/i3mHobHNJXyPH4ZRryCmMLDUiPnAIINnd5Jk6LFVSmznfdcsnz
	 s3C8cAUBtqDBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923C1E92FE3
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 00:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176705543357.1795.12750117152654965664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8da8cc59cba0ad92d2a5760543891ac1a8da2ab72f5bbf2a19524f409c7b503
Date: Tue, 30 Dec 2025 00:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767055433
