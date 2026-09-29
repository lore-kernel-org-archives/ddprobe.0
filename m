Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42C2B51AED2
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790685034; cv=none; b=V7kfW0c2xP5d3EPYWAr0Mj5jUnX3tMkvpYd6ft2QK3sl2iMUVNXYM64uGg5xk83lGgSNWFCazk7vaY2X4Oc59JxCFElUgB/vPBLpd2uTREgwkrdlQRs5ynGnV7sFTL7ki0telVIU3EeWe51qgRRJS/8cP94UZrnQ8SLbS7RE3Ik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790685034; c=relaxed/simple;
	bh=mYcWkkSvS5Ivkoqv/TdeOrqXYZ5Ofhp5FagUAMFeomk=;
	h=To:Subject:From:Message-Id:Date; b=P5Wrcsg9bjQzcFDUSsZnDkGE9njCbWSFYb7eiBG1xqSQj2NQfSi8PefgTwgx8V81n5vykQwBJUZaiGrslIXaWBMraNqd1E/9jsE7Uq548sRR21HLBaSjI4Y4VBpWYPwyPU7sCkejGD7Hm+tS7sK5FyT9kAIf++TvBuVHgQLQCxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ER7X+V+5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ER7X+V+5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA449C4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790685033;
	bh=mYcWkkSvS5Ivkoqv/TdeOrqXYZ5Ofhp5FagUAMFeomk=;
	h=To:Subject:From:Date:From;
	b=ER7X+V+5i9Nvsqcfmsfi4+H073k1KF83WqlH3IpLMt8aghtzo52dGmjkV5iEeEh38
	 o6kNAO+F/A3Tumcz4As8RuPZdlHpxf/1eyGLlBqYWveqM05f14v7AvGQ+yiZvkUYkq
	 FEGHfaq6/tDHUeATYRuOkj0RJB5Y4NZrm8IcDcYdDrnikHDc3wAHy7XQgjuU6YuGBk
	 CkCMIV1DaJulQzMMrzxrTci9eVgMB3kMz+hH6QJOksEQggwbMjJSzhmETo818R/Gzh
	 WD7QwviqcOIeAcu4CTr02axq3aOBDc37YWhu02OM9eN1d/ZJqPVWp0Ssdz8QbpPiMP
	 8zojkjkMf9TNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC313CA5FA5
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179068503369.18056.3050593412083755788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6bfb3d93e73bb3fd0dd22ed5403bbf738f4fb12350301268ebe460e0d537819
Date: Tue, 29 Sep 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790685033
