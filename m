Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16E98274B28
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762946394; cv=none; b=g6aiux4XW8+PXHZI4LdFALYQvcQwDJIPksCzjYd68BPq2rl8zFOkH8ic5MNSKebH90hNJrEORS852l1pxL7cUAEkBmS/HGoeOD3GLgk6s7TECQV6be3d9umRizuc3sI/MVGoWbCPi2nWnJqN2cfFI1YcAHC2xHE9BfwFuaCbKBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762946394; c=relaxed/simple;
	bh=I4UlbI+/MMjj0MC2+tV4nZ+axcNq4Jz2Z7b6GwcdML8=;
	h=To:Subject:From:Message-Id:Date; b=hmKs0VFE+UUvSwp4YSnsGlw3p1k+i+NseU5alNeJxIGwPYrYjSLy6CYjIsUlV/nU9xZ9XFpXOMj2dsapFZJ3ym8/9oV1GyJ4V/fqrESLYszozUTHePVSusZ7hAmi8wVqfcdX5syN3x3JNCPYVyTSKbU/F5NCeEL//GQrdijRvc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J3qfi8x0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J3qfi8x0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C4DFC16AAE
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762946393;
	bh=I4UlbI+/MMjj0MC2+tV4nZ+axcNq4Jz2Z7b6GwcdML8=;
	h=To:Subject:From:Date:From;
	b=J3qfi8x0bw7mxgnFvHfDNDKyA321lvrwM5mEtwRc26WCHN6Fn3E4J6A3aciORMsCh
	 V76Plih5Zgep7G0Fu6VC7Hhb/2TAkiKwqU3VMljLOswDw40MPtrS0yIjPVPA9R54qi
	 VY81PXDMP6fc3UN4GYGSd/Wspxg8Km1rWeEXpYkLz5wjzcwH3wNd9czJkAdTEYwBkb
	 tpEYm/Yb6/xLySmcN8XYQ4d+sQ4U7IzLSkGXsUPpQ1WTymU/5yyba/PuNRTvoWJiWo
	 +4Bypl46ftWYru3CJwbdUkylOoLXVez1t4pId1PM+Qbiowwg3gd+7GJTsCrRUMbRAy
	 4Z6KOqc6KWujw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F669CCF9F8
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176294639357.13958.3988384562232822061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05e7ca71da8f3a57840029fc021d5a0716d9ab857b709e88d51bb104da3df2c1
Date: Wed, 12 Nov 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762946393
