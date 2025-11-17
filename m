Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DA303093C8
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 17:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763401914; cv=none; b=iNCUUmsZylUAlyTlvlL8onXou5k66Nq+HE4APH6laH1Y/m0/egbFalegnmoqc2Smioblh4MQXvJDsTe70JcgIUWSVy8PnH3tLcFvimWcQw+PM01KbeZMVHbQbQo1HlMBI1ebKqT9oYPiN5KSafCtrw2nkAzHWoP7Y/kiRn+22os=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763401914; c=relaxed/simple;
	bh=9Aako3Jo+20gJSkZq9QtHcIoV0mTgJV16I27BUalEBc=;
	h=To:Subject:From:Message-Id:Date; b=CJaxmup+xoGxzmmHn4dBX30O+tMTv1T8Xw3ehbSgnjpmAZnLfoDke0UV9iXiMTqIyT8SDSFdjd3Ad5khO8/2eO8kL0jx9JOyBDgHWXBqPG/6FlkIBUDwGDCJnZEOkQbu7Dg8c9GakfZxxgcQaQAMG0LnjoH0wP9lzByvZIxRp0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TWFHTeF1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TWFHTeF1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB24AC2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 17:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763401913;
	bh=9Aako3Jo+20gJSkZq9QtHcIoV0mTgJV16I27BUalEBc=;
	h=To:Subject:From:Date:From;
	b=TWFHTeF1Hj3UFy3vKCiygCI0L4Jj1/g/jGfjEn9kA/f14F+80Xb9IZqvkwqkon1YI
	 PUb0pd51pxR4vpgdsC8hjJYyyv+sBNpsFxyZP9SJOm4Moy8ucrAsCsV8qTswa/QifT
	 cKUsCpZZQIVjkVh92LbeljTl+TLVq58m3jxSkmJjy0iN5kyHYREzYzgehbBq9adNpU
	 hSVF52/Oljfwo9gJ+GHqxFPfb8u4ZESTZwi9JksLju62JtNstUM6GjF+/1SLisA6u8
	 GbCh1uw0TjD+shBwH1hoIm5YmVQIeHOQng8/XTjzCqICmZwW0gRnyDU2SvHze286Yl
	 VEZ3LYGRwJyvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A8ECE8D6B
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 17:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176340191358.1109.8139421690326430355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d49ff107892281dffd92dfd43a8ec282f6f96ad98b2998a7b35d27c2546b5da4
Date: Mon, 17 Nov 2025 17:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763401913
