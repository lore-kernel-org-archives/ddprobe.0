Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E8B272612
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749300595; cv=none; b=q+Wf0wMTpQbXc/s18tB28o7ZaTQp1rjyT+JXHJ/6/ZN/ROZ+SzO7aR8tKLdgtSEVjYwdZVKtjCewZjuYdXgpAqorzuyo6fsfQXMXhvP2SEE+ujwOW8So7znGklAw4VWogQl9XWLu0tbXhkQOo8+KSV5xV0yltVKs5Tog2EavKsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749300595; c=relaxed/simple;
	bh=rEYQY89LLyWqyrQU/R69UEg/OD/AiSec61JToccV+oM=;
	h=To:Subject:From:Message-Id:Date; b=mLsMtUYOgiV+SkBlUhkuQca2lz9OsQgksfdUZYzt4eS7onK5N8VSKKLsbXre0BAX2m1WEf+a6nFPToq3OI7drZamOOITe7SVa/mgCloqP7P9eHKkEPkp0w1SzzKA7CLXS4pOR8xBnZ2VnVuSj0ENyPK3wuaLO/OCNfRJPOQaFTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OU6MOFPO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OU6MOFPO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BEFDC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749300593;
	bh=rEYQY89LLyWqyrQU/R69UEg/OD/AiSec61JToccV+oM=;
	h=To:Subject:From:Date:From;
	b=OU6MOFPOPvb/6X3BWFA3M9B8uJQ+rON8FWp6Ssk9j1wwssaNTxkwhLIELX68fnate
	 cX6X1ftiTQoWVbAx1JobRBMCrmEDu+KYy7hYAa046D5YFFWA9kyUkSBJAPW9zpFOeg
	 HiaxMTkfIWXmsD/eZk4m9xt0mp4uCTq9xguWIpKcO5WK0xNpGw7DHE00H5g6Wc95Ek
	 mBFcvJP0/HDfFwi090saB4fPYYUplbXmeEhIMSHgaFX9pv7i7SxdsSpn6tdIr0LNiV
	 2CpbTTrmyD0tCNGeosvFy8zQaIpCCKOSMHsnFJvnovMFtQmFdkmBl+KQ4cFqTmaAH9
	 zyPcJ/+n8JHIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903C6C61CE7
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174930059358.31362.713712870776759572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60bf55f3f9228fb8e0b4ed9394ddde4957839056a2bc5a60ca9bf36c8615a981
Date: Sat, 07 Jun 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749300593
