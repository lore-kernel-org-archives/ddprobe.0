Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 401EE145355
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744813794; cv=none; b=HDZhTRrH5xVIfHRAvJ0LRI0ZaSdrjW8baS9weGDwOhrl32o0S6sK4yxcCAthn1gY6S6jrZWJOsYgIRa0eIDz+z2aECBnFaPATnhmBKwpRi6YK0IDszEkTAjKFtDiZd++HNTBYltFqpC3QIPWWGlHdncdVn/K7ra8R6IRsXxC3rc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744813794; c=relaxed/simple;
	bh=1ps5U8kfwTXZn32yEl6lfHNfgstQprzNAjTqVMe7Vy4=;
	h=To:Subject:From:Message-Id:Date; b=iLMGzjg6vm1r2f8MFABtyg8VXPXxnmudk+qRib/IPpnBGD61vvkO6I5cHnntUnckYZLi9JqP7oMVyAyWjRjX+GGTVtlYgi1K2C/DWIOZoQg6aSF9cUc2ZAazBLm99NC1jOSH2tmXXh1cpCAGs4f+OfuxkQ8dOpEe8ErBnFEqrqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UfZt8mXm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UfZt8mXm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4D81C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744813793;
	bh=1ps5U8kfwTXZn32yEl6lfHNfgstQprzNAjTqVMe7Vy4=;
	h=To:Subject:From:Date:From;
	b=UfZt8mXmGcHmbY+QXg//DNFoIt0Tea3KVRxPRgFY6AaiDpmkhOTxbcPdZAL2a/oi7
	 FlizcoYDjEneh5i0jFXcz+CFwachE/3DQ0KskKokj0bn7AtC+6sRNbv3taOD30pK4V
	 gN7tLvEsU9M+cOn+Lx/mwpNgmQgDnd3YuvJsDF+u3PSHLewfGr8VT4vOc/6ZfRcxvH
	 VgwqWZECusO8Ad0vOeXIeHdF/a1E1E0kRpzSKq59HJIutjJ09t1zhxBNV5Qu2DiSwy
	 4+T2yuYIU3IW+5gJx63ToGiTZNDEKwhhIQBLVNg9FmhsZoNMGDiutjYvkEQvG5y8r3
	 ewRXbXwhGRjDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965FCC369BD
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174481379360.21530.10192220482068993100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8e0fa4bb9f7ac29b113f7829a6fcd0032efd03a303fe98b2bd434153132d5fb
Date: Wed, 16 Apr 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744813793
