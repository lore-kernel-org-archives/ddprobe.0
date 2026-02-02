Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 317A53207
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 14:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770041034; cv=none; b=Xlo3ZkR7TiYlLQq07ydSXfmTSBML3+COtPFdpMCl1Gay7Ghg2IO8Ob/koH621HufqS8qvFygjeZ9F90DHw4V4qgwjBJPVWgfk9WezWGK+J0d3VW5RyO+ufcvIGIeVuWG9TU449irHuLb36s4R3aGy9ddpYwE/23DbUFAyD/NMmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770041034; c=relaxed/simple;
	bh=q5/egQg3hfYRG8XiBVkadc5ER0S3p45XZi1hMmdYNug=;
	h=To:Subject:From:Message-Id:Date; b=Mrt3woGAQqVM9UTEwVyE6EDdzNONc6d2L2/TejL7Y3ZfhRLK6UEmiw8buXbsRtRsGCOgLHT/wCDSuWnv1s90qYyR1dydnSBBAEEEKNogQ4pasqw+Xk21d2eRXQsKokOBPua/Z9ng1yryMeTQ+fCoQZAvDC8WYnUCVX8OPHMBQ3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X9jBf7DM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X9jBf7DM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B78B1C116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 14:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770041033;
	bh=q5/egQg3hfYRG8XiBVkadc5ER0S3p45XZi1hMmdYNug=;
	h=To:Subject:From:Date:From;
	b=X9jBf7DM7g/o6nxmR85wqRp9/rRj93CS/0dBv8ZK4DfEe9FmuRsixxHfgbGWrTJAY
	 46Oy337I0xZB7L97vTdT7CP0jkTsOhI5iQ3LHPebRLCM3inhZ6VCOcJxwH7UWpyB3J
	 vU0H34aeN44PujGhJhYcBwY0FKnpx2Xi4NNskJzor0PwuBaphTGo0z8qItBXN2D8hD
	 ep50gsFHro/REQE9RhyOuIXHBP2uZFUSZ4YXbaklDo4bq4+n9tau8AfcOX2DH20mcZ
	 WvjTDHDse9EBkFCkLvW29/58CMM62DPa7EvZxHQ7vWbDyHfk8E6IRKtFEXMTgT4Usy
	 cy+KQXz9QVBZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A081DE7DEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 14:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177004103364.2364.15487919101880929678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c663a6cb1f404e594df01d30e45e4608f91b9d4971a46b95ef119e018e4a2700
Date: Mon, 02 Feb 2026 14:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770041033
