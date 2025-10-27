Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 241D21F7586
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761601194; cv=none; b=DEdo8eKZ350SNSEAyL5YWSBzhzT0NWNGxWdmBKGgX43a4E0mMBAmVBV5AWLxB/XHmKX+cKjaxExoYHdK72HvfdLygeGGWNXwTIt+ew6YUXRwuNtHgWz3kBltDk2VtWZghGincmXCJHxPkxe4S6fCgdT3Bih/vzAvFB02CSt+s0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761601194; c=relaxed/simple;
	bh=TM+zT7xQaltBbrdA6Z5v3ew3rpwhIZ3hllv65KcSzrU=;
	h=To:Subject:From:Message-Id:Date; b=snWk90pBr1wxUhuQ8Rem94ncF6gGQeylFyXdqbgkuSg3McqRc2199VlHFQlEFiHWixKbsh1MNJ+vpzPlCSz9lJUWP1beEZ1xCZ1HG7DVEakt6A9vhk6VT7Vj4dRa5EHEq+JvxfWYcj0gJABJmJX4kfBYmA8m/pvM3rzsRExmBmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ELjOcruw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ELjOcruw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC24C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761601193;
	bh=TM+zT7xQaltBbrdA6Z5v3ew3rpwhIZ3hllv65KcSzrU=;
	h=To:Subject:From:Date:From;
	b=ELjOcruwX1kwVmpKFWAUbkyqWux0f000tWP29Y+Wme21BSUPbsrHARY9eNGn7vu+v
	 WVTgB5cBFySL6qcLHuvxYy/WPU4+2Y8ksLEjPbZNV/XLjCu8/VZ85twrxEU8WcIdKZ
	 NqATfrP5V8sgxKGVAAxX+3+34E1O4Aq8ltzB1874eJU4Xanh6n8j+apTrYSuHNG8m8
	 tKSsgbLObT/z15Xe1JzBeIJ8j45st6YbwGxhs2FloJObgYFN3KtneQ/kqcNJIbeLtE
	 gYC1D1Yso/4yrPcsHoPw+XgD0KVFdKOhDzg1bjIPRt0HCJxt6oUr9wTVAc/s4fRlHQ
	 /NFdYAlb5aaCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920E2CCF9EA
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176160119358.13899.2620608473363728543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89ba34b8f132e5491e3012e784a84420e5971c831f0eb5eb62142298fc407ac6
Date: Mon, 27 Oct 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761601193
