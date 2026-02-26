Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FC9A281357
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 04:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772078694; cv=none; b=uHtfUpZyBsLdbtWQfIpI2JNHfyLJJ0vIzyHCF70xh6uf630a6rkjtnsYeZEsMYE3tfAMUXMAHV4fdz3dLpbJ+v8TNXm1OEudpXeV0z5+EOppAsl8O7Idzq/9LufDSMMtyXMm+ndu7HuroCx51/ikUThJN6dARLEArPWixOgHNYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772078694; c=relaxed/simple;
	bh=NXqO3TUGhrTwSa0cNyhXQ+1LW2FElIeVBbWSFT1nL2Y=;
	h=To:Subject:From:Message-Id:Date; b=Jd/zdfYD7hcFnIpb6Sxp+1DY5ha8fPn1n6nW5z+5RAV5WSjL2NN+wjrU26dYphx2ShvDCk8M6suTe4MdY99NsfQJo9hRPi3v8XfcHQnCSqqFnNhZBRKozX3VzrIGqPLKqwyESN2AQlirf2EGsn0juygLYRMkGODlctr0O6P7z70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Twprv3UO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Twprv3UO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5C32C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 04:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772078693;
	bh=NXqO3TUGhrTwSa0cNyhXQ+1LW2FElIeVBbWSFT1nL2Y=;
	h=To:Subject:From:Date:From;
	b=Twprv3UOlrVV9E6K7nVtgK0JF5AOSRH/vh3bw1uBp6RaQq2SCVVRyTe3Lx1xkj89R
	 WlyndvEL29HAFMOIE8DhtYXjDZlTOGVq4KLNlWX+pyrIUyaIZFEHuQHftUzlILYQfj
	 AAtKYdtUgSIxN3GHSgJbqYLrm8ScGMA6gZgxvsglHVaJSawn8IPxhtbQuXwWLnvZgL
	 VC9mjI10WnsDubJA0VjGQyqWLY2vYLonuySuMPnF8/ooH4cVGN5V7Z09Ks3xBTzehe
	 BHvFhMEYBqQVHXqLx7Kc3e3HQxHjxMzy9RzCxhfhFnxwW7T/BNHjPahP2Baa8Kt0G2
	 /JgVr4wV1Wp1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D9CEFD4614
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 04:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177207869360.2396.5633030245835755447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 105bee4cbc667acbd89bd32703066b6d7b47d533ba0eb0af9a1e39c9f61993af
Date: Thu, 26 Feb 2026 04:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772078693
