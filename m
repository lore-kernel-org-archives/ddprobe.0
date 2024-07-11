Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 315F016D321
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 19:57:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720727843; cv=none; b=VS7LTagC5CFoe7R7x/GA4fMu7Eg9HF0Zm5iXtAf/lw4JphczNXB/l5Jj56oJgS0s4VzBQ5gxB3uooO3atFa8LnirjbDMbHgnTXWsSbQFiYivyRs+ealg9Dk24ais1kOaGulvA13ulj+U22VcrFPSLE/VuvUSCkCJ+pZvc9Zk1Wc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720727843; c=relaxed/simple;
	bh=q062S9YR935vvzp9Y9Qd26Mn/AQ1gpX6O88NZr2mnvM=;
	h=To:Subject:From:Message-Id:Date; b=iVYzsF/aHgrG950a++xCU57cB4BpxYI5YClAMsoWT1mpwDR0cpG72ebRomK1wFFuVRQNItAZFNwBNRjpS9mYmvNkNlnB8LJGAnfuB21LY2C9tuA9TSxbnXJAwxzU9mr3L8HXXvVxFQ9vPD368W97s0BVB0keJNTbx3LXHcon9SA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j86PwrfD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j86PwrfD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5E49C4AF07
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 19:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720727842;
	bh=q062S9YR935vvzp9Y9Qd26Mn/AQ1gpX6O88NZr2mnvM=;
	h=To:Subject:From:Date:From;
	b=j86PwrfDISz54b0JIF68GYx48NZuzDDp3FMe7vz0PN4oqqv6JPaLQ6+x5Vkpn5Qhz
	 h/GVDR0c60p2BwZWy5rjUr5sWa2yLJE8EsJ1ehz1xnrWiYvu/zmigikE7EbudaenEF
	 Cpwk+ufskTxvPxSYTdRzlzr3g6lYVPa4u71f2kVPVW6Ur9VmLTYSo3FrjRKN5q/m3H
	 LKbJVxN1E/BNErMHehICTm9hBUTwNQXdqSKfDhqa+A28FV0kf0ebL004pxt8yhVsQ4
	 5BMKOPkA0goDULba5gp1AbLmZqQWwohXmgB1p/er2gGYRNX+1HSktHJVi8jfOKjqzH
	 saULeLqBeX5rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C39CDC3DA45
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 19:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172072784276.31588.4366330500549955737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10450970d293623ed43d2c1ae18369a5c50de9836586ff27f25210710ce56ee2
Date: Thu, 11 Jul 2024 19:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720727842
