Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 413D72B9A4
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 12:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741522134; cv=none; b=fDd1TZj3fY1EbimruLAdDFlvob+ZkyyM1WbSb9OS7vgxN9iPqoXRdDb6MSth41gQVP61AKQphQOUtSnD0YS9+mHbUnNDieL4yDXOrTBjTRzQoOY+FBmQujp1fadUX1boO2yxg5FhMDOU7Z+Cg42C6vb2x1/lzU1EfSF7tAVzJ4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741522134; c=relaxed/simple;
	bh=uB5xURza+e8AqBoo9mnSm22Z+bTdzZj+61OdN00rAAQ=;
	h=To:Subject:From:Message-Id:Date; b=qRoYFV6B1+mZBJYqkwXrL1HfmPaMP5T8Cb8Q8kMymGJgk2SBsNrZNXopALj6Mt1K8Qad0+E6wKCdP2rZNvSR1QAq+L3dnnDRiYckHi/vzz/KEI3BUPkTvzPN7zpUeny6ZfG91OykjZSwWW147L3DrM11tH0SdeW1QgHRnNprIHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g3rVNwVV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g3rVNwVV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7774C4CEE5
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 12:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741522133;
	bh=uB5xURza+e8AqBoo9mnSm22Z+bTdzZj+61OdN00rAAQ=;
	h=To:Subject:From:Date:From;
	b=g3rVNwVV5bpYOtagitnTTQwGUjWs0iIzr73peJSghPqWN7Rl3BYXmjf48VAdaMCE8
	 9ijJVUrd3usFF2A3ukqTf8ciyQeQrhon5muSvT0c7lqd64pff/z2ikaqDBPAzLpw09
	 hDjMG4sovhvAR+WI7ZIRtpW7jif4p5C0w0Iut66v1BatGnQPjTqkYy3G8v2IoVwvIH
	 aXjWaa3TVI8Ij1IMy7YzNn/RtE+hht2jVMIQ0yUBjYkk0JiMmuGhxv0O3Mpij/Kywq
	 Fuzp2A2U8LReYYhn+odpbaJrLqC6HhIe73AIkh1eAIJIrCU5TrJm2b5CGMcdXOVsa0
	 2mcHgL3XiHA8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97205C282D1
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 12:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174152213360.15564.9946369231392414245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f3f2769a032ccc2dd8f7c956ac7e83db8848a676e0bc68a793d32e5730b0cad
Date: Sun, 09 Mar 2025 12:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741522133
