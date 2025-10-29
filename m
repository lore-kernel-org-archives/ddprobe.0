Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25ECC3128A6
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761725394; cv=none; b=WMtzi+ogAB7JTpk2uaufhgHb85DMp1cur/czl+glkD2rYIx75z7uAiAEH0plSB3eeeBM8YUvfnsN8gJW4n9D/g5JBQtbxL4FcVRYc24gxi3IGImMTr9HXhqJ6gL8ItKZ9NaCcfjfECL7b4qiQZYLxjrJ6JYdwJGRoEARAm1OKKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761725394; c=relaxed/simple;
	bh=pDPOsfqT+ONvnzNYvE8WDR2pN9vqGCUBE2E0DmZEImE=;
	h=To:Subject:From:Message-Id:Date; b=hXt5cA3TH6AhOuACPebP8Pp7ZDIsMCEi8wr22kdv06ucKJWyRtm8dnDBRSR3WF+sRkoulZraoywWK/TQgbswWAHxjgUt3zrbwSE3g90uEMpsMZn1NReqXgsKWR0YXNuNx8sCUcChHLfbEnoNu3kDVrtM4gWxLtwjmMKg/MvhY1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LbZy34S8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LbZy34S8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A952DC2BC9E
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761725393;
	bh=pDPOsfqT+ONvnzNYvE8WDR2pN9vqGCUBE2E0DmZEImE=;
	h=To:Subject:From:Date:From;
	b=LbZy34S8A6b3SSTLFt8SdqeUWwSp8Xdel5Ehf5DXl2C0VrZsp+aJD7WEIWyXDlH/r
	 KJDyYD1KxfT2gSIt0BBA58POo7Pu0DvgVOTTUgMcemB4TXhH4OF5cHlxos9pCTxwXx
	 idA17o9+x1OuIXblSUkQZmBzLoNfDldt0WTO+ZvV7eEZZ1lrdULqbHOry3rRzMrnq1
	 /vknOMn81BYGlkC4fWIGqUCsx/GIxonzoUXlp47TwIJGyPkrIzaWXD1rpjFSEKz2Xz
	 r0p7WOF7mrb7AK608FH2siRFMzarBKZC20kGCnUXZlQrt0pwCfEj68GtPDdamIxT5b
	 yq2XEXKovgv/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E60CCF9F0
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176172539358.28656.157208924150504533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9c3bcf974dca4266759213ff72adb2a18160681ace2aa713e4833d210e606ac
Date: Wed, 29 Oct 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761725393
