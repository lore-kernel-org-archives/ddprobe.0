Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5821B1DDC9
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 14:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714833143; cv=none; b=O6x6qfY7Mry0bD3W2PYOEO6KGftlnPW0B+EUhSWo2+P/4XAVRVGc3bjKEB/ND8F3cf5ekyTbqHBWPH/e0TgC5ZW2wKD0emnKQvaw4dNIonX+5BhS5iONw6bYxJOWuuMlCJvxp0Ziim0CNpn+E6tW3McV/9RPi+yTyMQm6OBOrbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714833143; c=relaxed/simple;
	bh=otF8N2oDxeVTQ6zmNZCvR2uc4tvGIfjztJvgbTUC6Bo=;
	h=To:Subject:From:Message-Id:Date; b=tfeCb7z30PpqYnhOSaL5Xxx8I2LgZSO4P+RLdnxu78tz105vnQeE98fsLGF4QUZXNnNY+RH5eAKr3U2T5KdLKz9UXXn4BawtYcfl1QPoc/wqO9545RIG8/sPNm7Kmjkw3KxAOJb9lLJBuFDj7VWtgaUoVDJXNWpAMcyKohuAhPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZpxmXtfo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZpxmXtfo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E49BAC072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 14:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714833142;
	bh=otF8N2oDxeVTQ6zmNZCvR2uc4tvGIfjztJvgbTUC6Bo=;
	h=To:Subject:From:Date:From;
	b=ZpxmXtfoOM2L8ybuqX9Gq1Jo/F8Jm/lc3DF8hZlxcnBz9o82v1+sg2SAUfIRKOdQC
	 F2sykSYhg2HWGMzgzpaLWQXiARH1U3IO2lwix2lNwuKIAJI5YmeHIpu4WfqvgNxfIF
	 yC5Uael6vFbnYGNh7Qr5WARv4pzfUZbiVlg+XD7DjRJDoH7ic6YMmYBY07RaUYKrm+
	 Kl/HBCj3r6PI+bLvnXqvNYhJ0OJJIKchYnij0YYdnLHARlQK2w7K+S47X7BfLcbpVK
	 BWY6BHK3OODihlv7ldC5aXABGOES7HxeXe/0sVwJEwBYywT1vBDKOORK88kTrBReCZ
	 ItCrQaulXHpBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1EE4C4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 14:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171483314282.6194.8494094663245281732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1236d7b087d161faba4df49c6539f54bfd2396ba35aff8e1bfc0cbe38bacea43
Date: Sat, 04 May 2024 14:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714833142
