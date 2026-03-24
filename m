Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 004183A3E60
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 18:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774377294; cv=none; b=G00r0Ft8jrBsCwtXjT75AFYLhtHT+y6GfMwryT9rCSgghC+iSIjQWyJVlYfZA9f+9TMfxHIdafriHwRQ16ERVIFda9Mz/AlRe46DbyohlUMs6QKnpE7i/4ypVhdV1CSRBHGyjPohekkFAboRGerA42PXH9moKwaNfjeRig+RThA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774377294; c=relaxed/simple;
	bh=G6TycNGlTw/mdn4kRVk1C9sBPSFgpvcFiw/zAKRhqE0=;
	h=To:Subject:From:Message-Id:Date; b=WQRPLVWmVg5aiD5Uz14duCT1M9AXu/8r2asK69vmB3Fe1ou7ixepL4G909nohRJzJFdop8wJo52CIiUCWuIjD74kOkJlIhfeS2rmX5hpb5oEWqP6ZRx/6JQRENsx7dKlKDp3aFGMQKlix2pPB00Q7QUMiR+x1vm3F3FJSfqDIvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e3J5Z5Mn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e3J5Z5Mn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D5FC19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 18:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774377293;
	bh=G6TycNGlTw/mdn4kRVk1C9sBPSFgpvcFiw/zAKRhqE0=;
	h=To:Subject:From:Date:From;
	b=e3J5Z5MnUZ7AwEJynBb6fyGBmu6f7g1lK4r3WAaoQYmBLlXKnH8fgaqZgLH4a7Dcy
	 ZWNTS5aDLhZsE1UcYr/3Nq8S973cnWgLL5nHIADLys+n25w+vOLNVg7oRmW/AaSUub
	 rJirZHvDH3dzNkiMqxO3Km4HHMBooM2kkvHKOZQBSdJBjeyoAnzwFymv5sbxoLxwt0
	 9TCcG0h7TuKEWej926rK+L5TnZ2qRR8yki4aWy9nkunU4f7aHyt+B/cyugTbevGpi+
	 SK68xD3cTy9NaWp5KOwaWTp53miFeil1yeXzNXgiywjjhuXSnCNdysszbAspewSR//
	 gx7jucOEKgvlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90520FEC0F1
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 18:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177437729358.14005.16723400389843008171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb50211a96018cf9fdab52cd8606489e49d41d10a2cda371e6326629c16d0678
Date: Tue, 24 Mar 2026 18:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774377293
