Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E9A7610B
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754233194; cv=none; b=Bj/SROP27WwL9zw8mhSXHDkFaBfcdEtVsJd/rD69mWhHoarQt6vMrV0eDSvwpFWUWRGS66yS1zkjpVl/E3VI82RztPmNWQgRTv/yvbC1uDiLVbMgAPnaRZdDWBOuLeYXy4Urk8PC9kPWqGZce8kh4jtodSujAGD21bSHoQYquBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754233194; c=relaxed/simple;
	bh=ng7ggPtzzcubHl8GHfQPU52O7WbkhenIS3nJ/UsYuuc=;
	h=To:Subject:From:Message-Id:Date; b=G/SG+n2RbOFSIkaqxm3EPPXwgZAEVkn+MTljU5K+KMUTPfbGNGsmdJEgG82/yO8XiCSLllg3LJb8LBRgPDDbimI0/sH7zBPt6d3tGqDhz+CLhbo/d/NO+6Ksxy2msc4ci78FWx6CD1dVgjpoi8BjpRiNmCia7JUAiAzXeTHivAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lMWkMbuO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lMWkMbuO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B4DC4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754233193;
	bh=ng7ggPtzzcubHl8GHfQPU52O7WbkhenIS3nJ/UsYuuc=;
	h=To:Subject:From:Date:From;
	b=lMWkMbuOKoCx02jiOn4kl/6J0sYJ712NyWSEqPkQ6fRWWW2rXUUzizGNCNEC0PMX6
	 IbtmvblgWk6BHN3mVHgEz8XUfAvIEGV8YkI+fHvEiNjvEtDvYJS/A9XQdekQrk6bLK
	 qZOdbw02LFRQb7Uhn+BX9+uMt7k6T12+3U56Rm7dRQa12hxNVoNSOB8dWqzepaN0hV
	 n058v8E3rjW31/ww3MzLigxLFl5jSqT3PjTwFiAg3Ffpx4V+STR4oKzJsoatgveUuT
	 Trmblz+2Vjt2nWG9bX07iWB/7CpQ9hi13pBs6VXP4L5lnK1uSq5mRrNhhrpH7dzUd+
	 qvWwOHLRe7eiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D21C87FCA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175423319357.26327.9801815497218435840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc1c5e94d53ebb66ebbde7ba06526f97e5e2f57abeb35437470ca9cc78c36d28
Date: Sun, 03 Aug 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754233193
