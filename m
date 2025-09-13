Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BF1F2566E2
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757791194; cv=none; b=uUVRnPpuw86yGIYVsHzk9kTWpRt2ShkrnBP/B+riQlHSuo/BV2hQjsSLMam2VMBll3NcBVP7jrz61KhK2zNJQwyO1zy6MQdLnSPUroob/S55CtGs3UvFhXaENBsfawFOsf45pHWCAO1wn8eIUufjaEDvviUA4vnVHU99KXbsXng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757791194; c=relaxed/simple;
	bh=u2qnuDhDFR6HCOBEPHSDwYy+8BNIiVkoSY9W3H56fhM=;
	h=To:Subject:From:Message-Id:Date; b=NpnC6al+55iMcXdNor54r0rNeLJRy72bbnLBwIYrb8Fpm0nUSlGBP8rGJ+uUxG87/0FlhrnpM2Wn9KnCHfUHwANKiAt/ZeDXMeYgxReAsABerViPs1JdIUAA1oymLlzof70s1KyXX+ipFBpH8tu9ekXWZrYXfgyTLAJTqKJ9Nsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fXlKOUBs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fXlKOUBs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 966C7C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757791193;
	bh=u2qnuDhDFR6HCOBEPHSDwYy+8BNIiVkoSY9W3H56fhM=;
	h=To:Subject:From:Date:From;
	b=fXlKOUBsHvUr2XPs47Ob4B9yA5/iYLTQ0LHbzn+950i4qyEHp+Iw1ZpFqf+tGCFfu
	 Regylshq0Z0P5AXZDJG2CrcQqL8/7hd5dE5XjILmpmdHg4w7JA0LJy+zUdHZzw+meH
	 z6KQxoS7F3/Y3tq3Fa1YA6Aw7IOdSzK0+YQFWD2GkTdjXIm4yE4pufvC7sigA90r0k
	 UBAvpjrxEugYKOynbG5ew66zGKZvVWJNzcIKhADvH5T+0w6qMCE/3Td0XWn+7/1fjo
	 /s2oWDF/QEWt3KLKfVpLxhhVVr1uiHe52UNO9aI8yhc+S4UuZ3PEKITUhMp9APzOEG
	 EzMOwsurRfslg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD85CAC587
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175779119358.19131.12615680998573474647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfd594c36865400ce6a7289775e09008a060cda8ed112a058d6df372c7e945ec
Date: Sat, 13 Sep 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757791193
