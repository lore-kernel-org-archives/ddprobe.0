Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC0732F761
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 10:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769423034; cv=none; b=e1IDrwdmj799hdnzWT3Z0Cgr06tUN5RhDkgyq5rFWIo4pDGabcIkRdaNkAVY16lWx8fPUC0+RCUslLIr5Zr7TCdW6L7f/VINj9nwnKZa4W0dKeCzIgWiMjdfQja1hifwGnzgrCvAFzM5oId2d2gRJ1O9eQOf3bKwxWXHUGBIK8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769423034; c=relaxed/simple;
	bh=lKXWzQ7WV4F7ZwKS7+TV/kzg29uVtQTvOcC218oUXBc=;
	h=To:Subject:From:Message-Id:Date; b=VOqaNUl0xB0lhjSvARDB2uysEUGGijxJH7tM7agL4MOe6onc9gzkaECANqna0AocQdjbnjCf7feJxYMBowvsonWGzLy9b5SDzKjv9QtAU6eN2X447K6M8FZSRemLozw0LKZTB5O6A+mH3DTd4lZocpPZsvY6Iij1nz0+Or1Bn8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P0XFud92; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P0XFud92"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A0AC116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 10:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769423033;
	bh=lKXWzQ7WV4F7ZwKS7+TV/kzg29uVtQTvOcC218oUXBc=;
	h=To:Subject:From:Date:From;
	b=P0XFud92nVSnCvxOCSMvNVlUQWgp1/5INXyc5mLmFZVPBVpbhb8i9Oa9iUJQbzp4Q
	 Lh7aM/UUGJoV19jdsOq1qHx2jvlmBk00pWIWJZSRGMnkMT87+44mad1iz0cH8Bin3B
	 cIxGHByopiHUO+FBZugWlAphr/BQbLZvmIKFkMCGsueMhtVGwPojsML1LozuVq7ErQ
	 Os+AaKp6kV47SA4pmLLMJym2JPgE3BAjc5eXy1ot2AEJN1IrD61+du2zKvzKHWmwMK
	 wrTHIfaPgkE7lkiRORPWxmFlBj6na2pNeHQTCw3ZyEhzCupKGIfGcTEfH9J/3zi9b2
	 4/83ZZnEH0l5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900ADCF65D3
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 10:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176942303358.952.10587751823326042438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 860826e0ba4994a383155eebb023d5ad718e26405222a270595fdd39f13806f6
Date: Mon, 26 Jan 2026 10:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769423033
