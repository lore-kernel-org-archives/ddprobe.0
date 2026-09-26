Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 686C034250E
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790460634; cv=none; b=DEXvqnIUPL9PfO3JuDKaaSskRQ6eRyTNRc3xEjfHXQ4IQKDFL2KHlH9yzF15u0/70fmyB1zmTem0pmuEsOrT2I/1VvBUV2PCNGYblUHvtlx0m6H/h0V609rEpC3HLMChxIl+LmY/cwu8rfTUtCz+ttal5x0i4bGnglf5hRwjXgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790460634; c=relaxed/simple;
	bh=ohAcZz7gKXYUFY2hjWWTLvqdq3/PpjwIfdRUTJ9VMmY=;
	h=To:Subject:From:Message-Id:Date; b=cYQChgowZS8O4kkDHnuTMIcweXvfy6UZB85eqwoIiPlDgzB04bc8m7CMTBB+rEqpPXGrPVKLoVZquFMsIPMQ0ufQ15GfcHAfvfwH3fC08cx1fAX9dmCSSEoMqbInk6AMiywrBzbq+LD9fV1XWWXGQ+r3tAba5FBz/Y95GmABzAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pKPxEAxf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pKPxEAxf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB8C2C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790460633;
	bh=ohAcZz7gKXYUFY2hjWWTLvqdq3/PpjwIfdRUTJ9VMmY=;
	h=To:Subject:From:Date:From;
	b=pKPxEAxfzG2YeMjXhNqZsxzo3moV36z5EnxUrpfbI7dnXjlyUz5zXr1XsD1jXvssz
	 HCss5xkhJiRNh4FLZWt/itIMWcNoKHFZquugKdWG6cRAXzKRpx4rpRVYS8eFxV2V1a
	 DyXisapuwGxXuMHHWJ1FIaf0XZHEBJ0Ex2y9j/XSVRi+zAlVykPAiKx0mOM6asKYb8
	 Xamqg0T6wXdGBtgn445AH8qWEJjxE30Uk1xyFvTSxiDusMFuWEnzg8xhUK9j66rmJ5
	 Wc8m56P2e/SH/LlZjMmhJXax8GnCbJ6xYM968VgKBuLvGJrIiy2TG030xS1+rOCJQO
	 bcEpn7iRii7AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4B66C9832A
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179046063371.28385.1050911038738037497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69a66f4e39e9e8e42ed6c5cc2bcf2a1d8eb994aa33f36ddf0a58d78b05bbb34b
Date: Sat, 26 Sep 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790460633
