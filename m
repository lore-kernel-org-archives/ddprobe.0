Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 328621372
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746762595; cv=none; b=UYFxhZGWaw6Y5phqH2L4sBQxk8kJbH4gJOR5FCMNA2XNMpDaBq5Lmm4/HfsR5zdqiVuXq9e9dthgAb3liJXF5s+lgRL/o0NIF40bRjNpqmWABRML1lg32JIf2re/b77OU6BYjjoiufpguyxp2OEfKWXDjlr5Cn5+LznfeFl+AFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746762595; c=relaxed/simple;
	bh=xiA72jIR6bZLF3P9Xh4P2wSCiFa3Faudwv5oYby77V8=;
	h=To:Subject:From:Message-Id:Date; b=VCvF5HZnfre9C+AYMVNDiNqUiIdYjXvyq0BOTfhIFuQcxo7fYJu/MTqWxMyz8q9uIKc3IUnDZOhyxpy8TDDeikAd4Jmhu3OofbZgWa4gIJA0ATIGvgEbNcIClauZ07xCh/jdqRHPfXFbg2VmfLFTiKsdLjIze1pfkpdqNbk8CRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hm+Qbnsp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hm+Qbnsp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F62C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746762593;
	bh=xiA72jIR6bZLF3P9Xh4P2wSCiFa3Faudwv5oYby77V8=;
	h=To:Subject:From:Date:From;
	b=hm+QbnspIsECh+zU4FBhbnWDxljalCHKK7tTVINC7fFauNhB0Sc+yKGj/4y73Cg1n
	 AD8SHM3fa42S2klONgJA3A/KHJFC1xn2tTWRFgp59Bt7m5mnknadvM4Ihbgu5TVw/W
	 dSAvwgXVPwjPqjJXWcrNE48IufOmvwe3xxPY7/3iS1jUJ4LQGgfEwlq6nSxuJjqi7h
	 0y5RoBVos1xg3n5f9N4ArxbQlb0hGiT/Lm/ktpwHboFrveM0Q1zUbXNGJfRiMN6SN+
	 A7hnhqhDiuW6gu3Rh8Z50St1bUIkO1nd5MSzuyDlgXpmzlIacTvtxQ67/4K4VZm1TD
	 ybrnvEK9XUBSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E440C3ABC3
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174676259357.17367.16847161895608764802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec10c6fb871c51a1be3a91f7b026529920f69c826ce244b3b949f6135c61a3e6
Date: Fri, 09 May 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746762593
