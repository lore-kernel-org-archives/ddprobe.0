Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 181F42D8DC3
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 05:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775194534; cv=none; b=FjdWGSSjcc6dWH/VVxMKailNwcL5X/1WThTEkYH0M8bXiFeHjqvVFNnhuvkg4RMMIIap+KkfGhZJqJ3tnA5lJVGStccpQLT+bxrn9OAYF3gS+SvjnhT4nSPjixNPxoYhTl9WQxtHWnQ/Nkm0RkJvlnFPRp1DCEYsvlDAQNnnsHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775194534; c=relaxed/simple;
	bh=H3raZF1YXbSTLcsTtV2jzuOwgaJ1wqcsMyJck47aTNQ=;
	h=To:Subject:From:Message-Id:Date; b=n7MzArKMFDxeQAhagPqIaWp0OHhVBxVackUJpen0QvrHcSootpcm9h2SQjV1dF6ZMuypM0p+OK8BRrsbhV964GGSBPuKsZLjbZUJm3s5qtYSe3wHLlsrWo5LvamxuJ06JllXpl0HPQ4pu47rUpMfqLdXbVG4FVM4OBp+0yqmvk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TFr2x3W4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TFr2x3W4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD9DEC19421
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 05:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775194533;
	bh=H3raZF1YXbSTLcsTtV2jzuOwgaJ1wqcsMyJck47aTNQ=;
	h=To:Subject:From:Date:From;
	b=TFr2x3W4cOOso5BvT/FmHJvRnORt2u6uZo2N+FkdsABN4e8uh73uu6CF0xnuE2kHl
	 0OPrGn+MvdMAtwC24O27U/o1jFFiKmPplo5dfBoQY5kt+GZQKQ7eZcdZrH48i/K1Zw
	 rSvklhl5DMfCYLxjEauY1xyaLwsMGVEXFPRESvp39QLVUw7oqi6lvQ8UGPdd6nakAU
	 ZDnSuIwKoldrh3ewlT1PwhqKpvlEWsImj6i5rgw9JF8S4Wvr97UM3TmaBe53oducrD
	 n8q75Q7sn0iOxDjQsuf0IIHPi3m2/OVEejYuBres2eaxpLJ/uwdKI+uMdcvBHeLG4p
	 ha1EtQmpa1uJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA070D730A2
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 05:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177519453368.9960.13121866176070844232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4560c203c81e988279dd672dd53d3d0e566a249a517058018024911ef010935
Date: Fri, 03 Apr 2026 05:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775194533
