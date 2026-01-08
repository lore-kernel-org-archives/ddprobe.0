Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D1322236FD
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 02:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767840834; cv=none; b=fUTLZcKDANSpHVF47DwDUgwAP0QdMr1LdlfIzIDAQ6r6aIuj2iytlAWwfjgnn5L0oMrz6hUST1FQYchykqJ6zzRzf1O0aweGvZCg5XE9iwprsqxJ/ePpNoBUjU45Rh5Kr7kCXKxuqnwcert6n4R/DRtu4s9YxiHJsKd01dTqRy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767840834; c=relaxed/simple;
	bh=17fqYZ7LQZzn+jUDvt+A5y4YEu5w1kwBbtNOddefUDM=;
	h=To:Subject:From:Message-Id:Date; b=k6wQO/LgIh1TxsjQWQzwzJkp4g1y94h/yDzqtkkFnP8H18kPy9hYeoGPzFyHRIbU4oG4GBQpMt9BdnGl2sq6+avxw9Jvrsj2rZsMatgmk8hFzWRT5/wix3m/vUAUfsdVZt5KMBkuY3EB6ojZY/8WC0dxa2IOUccm1mrWCVE2Y7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rkZyfXQa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rkZyfXQa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CC34C19424
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 02:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767840833;
	bh=17fqYZ7LQZzn+jUDvt+A5y4YEu5w1kwBbtNOddefUDM=;
	h=To:Subject:From:Date:From;
	b=rkZyfXQap0P4yQftki8FCcTrTUED5sK3o5glORo8Kf3F4Cw1PB+tGJNthHBTufeGr
	 wO3xyQbqIrP4c15gpf1o3BlOEiWF9ZVB2roIIM4s5L7sMYCbsdTgElsRygt1f6n4OO
	 W01zESOx2Raosaj/djyUNYTQAneYgfAEbYNGGRAkeXnshfQn/cNG3ck/7pFAfpXKiZ
	 /qzSvyYXPmGRej2H0InNTZk1jG1esRkuP1Pa16ROlvHhQbl2ZAw3LVHeqKO1HFtN9D
	 Hwn/AoX6MydIVFMNmoaLeDB3/exAedrU0hZTZD9YgyarWwx/YN3yNEqGkBzgIXsovb
	 2yff8ToNNn4dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9094AD14893
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 02:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176784083357.28472.4626710393363748551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55eabfde63e3f9fbe6c1ec50e2d61b4a2d7660fc8f0d552927d71237962c85ae
Date: Thu, 08 Jan 2026 02:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767840833
