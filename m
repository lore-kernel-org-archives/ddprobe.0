Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CEF811C83
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722108354; cv=none; b=K+4GlV+q7HIU5CcdGVrtW7prps8SL34nQ0lBIls+P1CdOjKcX1nXaeMH4pMH036IvpLUwQqcTCykLfYWXyKF8qFnDCTRb2wMPBJk3i0nVzg8qAYFd/1KpfH/VDbEi7nzGi81Enzk4Li715rMGvqadSvu/DVa8mKStjQdjhrs2PU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722108354; c=relaxed/simple;
	bh=6+g54Ua8fSeaygxG/x+wrmWFBfdyvN/ujJjFUiFACPY=;
	h=To:Subject:From:Message-Id:Date; b=Q1OxRAOOlB42HPop34yPfVk31xdd5kJaFS9So7csRob/Njng200DKAWURD6L0Yjw+UyK3eQhXIQh5s6qGdNttR2/wylkI/ks1dmOb50qPlr5OINtzXhnZNAlauzUYKX8qzQjjOjn1RRKAFEEYZnZYuaRMkbEnpcX5mm8iIM3Y8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iZfAWUqy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iZfAWUqy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB7E5C32781
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722108353;
	bh=6+g54Ua8fSeaygxG/x+wrmWFBfdyvN/ujJjFUiFACPY=;
	h=To:Subject:From:Date:From;
	b=iZfAWUqy/iQ2DsmW8yYxvLEamMwImXHldX5NnrBKDqhbfrlXdzlxX6RMby+kkXtaG
	 LKlT2mTvv0AgbwvIo1k9TkoyM3qAfluiUeHwanI6/9eALqAs969U278N5NAiKiqJJH
	 IO3A4ANkvqCUqyDybMA8grg5XMxMUKP1scohVEXCK8G4eQZ71sggu9eGczieWvgWhc
	 qQzxzFG0AY/q2IYIkRLWLIb8gflgRrAt5OvIEAdOZ7oSBr8j01ouV+juLJEKVMNB6x
	 /Zi9z8amY3tSw9r5A2afDVF+gtV7Um/A+4eNr2JiZZ4iQ7T6ugdFkK+xbb6TRkTU6R
	 7bLOgeLqR0hLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B4EC3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172210835358.18438.3154949848331240656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ceaa1b9a7a7c60ceb5e1275e6b5210683ca2fa4fc2008fb0f91c3cb982ec649f
Date: Sat, 27 Jul 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722108353
