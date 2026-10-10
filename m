Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E69F3D4137
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791663634; cv=none; b=OVtFrTwmbUEj8MNP88k/Yj5Fmazvai+iJ5iqk5f4J6HXl5sknc0lRCpeLNFdqd87mOeWwXlJkt6uHuAFBA/7ucCbRKiGXyuEe0BhSXRxL2za3s+vs0/r6h0p8zEY8983qE7J74q1y6Ljb/pufn57HoEfl/URA/2UZ0zz8roWgT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791663634; c=relaxed/simple;
	bh=ynz4BpV2StpLt0H/AawWPHKrTp4xU3RNEhXBdbKJXcE=;
	h=To:Subject:From:Message-Id:Date; b=FVmjK8O0GUWvR5pkSne44AMn8av68IQJEIYyH8D0pEu7kR+rp01oM3sV9yjgk3Z1enKHqh6PjPvKsMJlLhsdh68flnErxZmsX+D6rGvvr9XFz0Fzyni6Ia8l94zzgzrK0oxw/UckXIpCGE4gZPGGywqS1UhNUgUkylj2ns/7qm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pTdGV3nI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pTdGV3nI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAB24C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791663633;
	bh=ynz4BpV2StpLt0H/AawWPHKrTp4xU3RNEhXBdbKJXcE=;
	h=To:Subject:From:Date:From;
	b=pTdGV3nIxoL3h7fAVe/b7dCBmbzZazqp1F/o6AzWmwZQIxxlg7bLdXuB8joSiasq6
	 oEYF8d21O5GU5xBSAzbiymB98pVUcL7KCPY0DYFEtH9g2xlN5QUwFAKYR/mKjM4o+G
	 nkuG8nR+4lGUlg/XghflkoiAvL93WxyjsTtCewi3pp4jOlImjbK6fa+Yt4qulurjp1
	 i5HEqCU54S7JmYJWicn/bGfYnulqcVx5WCjKFcSjsmmhtfX9zFS9DA6rvp8gw/pA+J
	 bIBxfCVB2p2X39wclVH1xmcKQnBVu62zwVthwRqgVCvtORWZuKw2B1njkqhHf0Oa1h
	 /fouMceRyglXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A965FCA9EC1
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179166363368.1191.14308360959683826378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a9b97e1b72478c827cc6fa2bf445bb275416c222618e328659f6034177416a5
Date: Sat, 10 Oct 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791663633
