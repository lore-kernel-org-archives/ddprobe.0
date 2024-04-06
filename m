Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 095F6210E6
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 11:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712402897; cv=none; b=Fy496vl3FXO8uP5v2d3YclGic2pZeqqtcX+M0BjYmazBbTpkbG3QztM0U4h7/nPvvd0QqBr6tTQq7Phv3HEw+Qw52AyLrF/ZG3WUu86ggVzdadcRSID4Roa5X+zvKXGzFtyVCxuxvb9BkI5fZe0EOJtt++C7A2vByhZYF60vUV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712402897; c=relaxed/simple;
	bh=LC78kqDazltb5U4gyVuXHvJPqPzVtGX5GVGsny3iTVw=;
	h=To:Subject:From:Message-Id:Date; b=mck1x5yR05wmjv2bojv59Sy+OFe0pUW2Qxnyr2RvpmP2OKeKOvLBf/m42BYKp3oQ3Imb8T85gKKUko9Gv4iLYfQP9yCvuUeG53MQhg7Hj5RETPYzaLrqDmjKNpDvbblf4GsJyHIYDhYkoBSllPqpae181glDsonnUcT0DJ+3Ln4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XER4/dps; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XER4/dps"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84CFCC433C7
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 11:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712402896;
	bh=LC78kqDazltb5U4gyVuXHvJPqPzVtGX5GVGsny3iTVw=;
	h=To:Subject:From:Date:From;
	b=XER4/dpstJHSV3z7feDXYM0qfs8e3DReCrg/aYofXLNfwmg9gqbtQzDS7Y/b3uvI4
	 Q0665rB3j3YT0fQUYX4TnjMrn/KWz01gi5WIIy4XAtTBIfeMF4YW6G+CKhXs60IOGx
	 uZohZL8/UFzbxEH4CB1XuGVfU6xH7KKlPLNaZEXFmsuDPenyJmLmQFdnypjje4+6Gf
	 vI3pDbopsdsvZDsH8ID0oRQ4+0Kjbn+TnVzS9/zhcZBkvLToUBSQGaz2YDTWI2OWkq
	 PusskLhbV4ERvt3EwHVSKyXYsNojxRNLRFgSrKNhozM5Lh1Y3r6aI+ufsER4NhO5Bm
	 M3J+qHHTULY0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E667C67861
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 11:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171240289640.18896.3685804643833348108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fa8bcc8dde2dd11b1f749ded2cde527f09601ca16ecb9ae09358acd7c75673b
Date: Sat, 06 Apr 2024 11:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712402896
