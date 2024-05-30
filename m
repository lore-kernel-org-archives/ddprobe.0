Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 552F6142E85
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 05:54:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717048463; cv=none; b=B43MBVspJT/zrZOcf5SsRRAYzGb4Wyyypb8nHmp2i4LvY+QTsVwAZeE1KOOJw5DLvnRix47U9mZF6vmF32AfEaql6OmmBw9803cfI0vjWWYyARrc61WSgiYRNbYaiA32TxCFmdmP72mg0OLlr37HR0JkS7OKseHuIvZSswZM80s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717048463; c=relaxed/simple;
	bh=2AfBMJ89zperTLsKeWfnuk0t+S2WNnUrwepdkLbUjtk=;
	h=To:Subject:From:Message-Id:Date; b=pvWcEbjdONuzxItbYGcoIZOiF65c/6NUr5v8ywqRSA7m2E7/6AChRCfd21IYFbWgyEY6NyXJ5E5sFoZc+6V2vVJLUxZpQhKfT+E0pLDwtZzSWhGBUt2AWFXIvAy/h1A/6ja/1JV29Mrix6oORr274+TQTSaBzeQPeKzTmigXwnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OJp+x//i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OJp+x//i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD972C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 05:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717048462;
	bh=2AfBMJ89zperTLsKeWfnuk0t+S2WNnUrwepdkLbUjtk=;
	h=To:Subject:From:Date:From;
	b=OJp+x//iDGsxtRKWwppX1J5tWJpv3IMkgqdaECB8M8qOrb8rHhtWVwA1EzhRt3Q+4
	 +PsaSjJXgTXNmDm/WWvcTP2MOGytL1aTgpbhr7jghv/Riwpwtt/OcoMWtZl9X90yoi
	 NpbbXWi3S67s/WbkhkYib+8VxViTiBugf/sHP9GCQG82EoSzjrVwB00TN8nEFniYen
	 Cr3gTL8DmqWDq2yGlMyWqsUiBnHtbIodjrrwPBTAxP3wj7l+Juh5vtr6JYwurTFvnD
	 furz2CWGeQmJxhdxVbEwEqySLR8KAht3lUQeZ2/z/qR85VouDa3OqDnzlL0dM0f75k
	 rR/fYhU2ZOuVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAAC5C25B74
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 05:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171704846275.4026.16481057682708477636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0e6e886029f5987f8cff4189cea3b27c37960a4076452454483e36891f1e8e7
Date: Thu, 30 May 2024 05:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717048462
