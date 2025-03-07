Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50E77250C1F
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 19:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741375134; cv=none; b=ptP7/EVBkw7dnC/q5NT/2kYsPg/U63tNDhjrZ6ZHdXV3jNFxjuqVJ695zlaSsa1cbjOUMrheIHgjVNhmn1vfpujNzyKb4DYsbjWS08+1hf1iR4e+BM/97YN6KweeMH+sZ11MliMHdlZNFH0u3gVeDqfbtk8RQUV85TMh8vajRys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741375134; c=relaxed/simple;
	bh=S6PSX/Q7sxJXacNX1cBjiMUQdmEY1fD2x0fafOdeOw0=;
	h=To:Subject:From:Message-Id:Date; b=Rs9ndDRu6YLdryKymvGT20sR97/gG/5w4kNXZS+NLYf3MRe9jilhBF6TAi0+/jD7WRKNUnWEDX759s2RpGZIwIZjsRWxMfUMFzB5+pihwSGttA/VxNu8tTPntKHYFLms0/hE9ciaEZACWtkRXv81aSFEA38TBAoC/xrao0ExMSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F9W2SEi3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F9W2SEi3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFAE4C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 19:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741375133;
	bh=S6PSX/Q7sxJXacNX1cBjiMUQdmEY1fD2x0fafOdeOw0=;
	h=To:Subject:From:Date:From;
	b=F9W2SEi3qp/Am69xo3/VR56iqPnPq/FTRQWjGIXtMA32x0L+B44n5R1Pff1SNEXip
	 TN6XZV1LjEPZG84ul5s/cpxlDqauDLINsACqribGvqJQwuAHDJuk539N/Ae32LLCmZ
	 ofkjx7RE+fNyndoF8zltqwKmZT2xrsAO4tzH/qmbSZzLmGdKRy96xlmpdSi6NlKMNI
	 ek4TARKciKhhSHuloxOd4+4X0Ys/XnhMoJvopL7jMckPjx1c5NMul6wsWjncV2Q7rp
	 4VxA77WAiNB9+oOkmnve3fodJrUKjVHjvbtIpHHMxlSTRnVx0XxgsxnW4Fnx+uIrv1
	 TuGUzMFfCAANw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AC27C19F32
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 19:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174137513361.21379.1078933388416258469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11fb2395b99d9bd365adf957f55f0b3302e7f29ea0c8d019e6870f4c0f0900ae
Date: Fri, 07 Mar 2025 19:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741375133
