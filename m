Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B6841FC110
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 00:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779495754; cv=none; b=OB5BS+Ntl3Ya/3M/3AaxPugMetKQktaCgMl2btXqMTCp/THcEE48p+ZmSdr0LFrp/xA504fmb5OxIT17TIMXUwr/+ib21U/2NFfzMFFhIt6XMbWoOP5dHuIruq/4xhrWhLC5d7ZsLxziYbwgT3rVDNZPjzhQcLk9UIDpI4s54GQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779495754; c=relaxed/simple;
	bh=5yvV7ZEqQw3y/AuHu1dAJrvfOJwSwuHajhCeGhQDLhg=;
	h=To:Subject:From:Message-Id:Date; b=NQS7AdwrPp/hWeQNJtYu4gygxbVEMtM9W7/NtMCY/RyyRJiMzKAKKqM68/dFzhNkSiYIF0edp1LNJV7iPIQlCyId5LKbaX27T71U/w7O1bt0zupRTnkGPhQN0fKiyE1xcdwGfistbqXhL4mUpwYBu/o+w3F2KMh2iZasDFCZDec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Apodg5t2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Apodg5t2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C77CFC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 00:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779495753;
	bh=5yvV7ZEqQw3y/AuHu1dAJrvfOJwSwuHajhCeGhQDLhg=;
	h=To:Subject:From:Date:From;
	b=Apodg5t2/AXaSG4bOhXwF4j7yK0xbSFvgjqTDx066JTOJQflOAA1Jrw3D53f420CT
	 O0L/fg6ccZlxJG0rYOlRmM2tOAKan0UQxTsiJxqUW8F47I//yKXjA7Yt7+HH5RWvvd
	 ZfapW0aM4KCV7udxLtmG1j7TIEetC0j5VRqZyj0ixGa3cjgrHBKgnJxyhHHDMGO5Qz
	 5dSj18RF/4/AGFx1JGoI16LXU32HzdnIeyqks4FI2YmlkAoOzqlsO1ua5tUEgTsWFH
	 tdCVAZRlsJzFJMUESnMgX1xchNmp6AGZ0JzenvAPkEikL5quyk4rjzlkDTmeuJDzBH
	 wFfFH8QnUwAyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC069CD5BB8
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 00:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177949575369.15115.12775564510838646719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 337ca74be60c3144a39b11b69a565f46c43bbf174e7a1693c0f7bd200143a8d7
Date: Sat, 23 May 2026 00:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779495753
