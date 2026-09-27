Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D2982FD1B3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790484034; cv=none; b=NMx3N7oKdiz4VMLCCfycYnq2mGzEWRmzy8tVFidm51SBU73TXtxV1x+AT49K5xKUWZ/f1mCeeCAjMz6P5sgKzS8IcXYSnTdFmU28QgpQ3q4T3k8LFquLrn1KyySeBF/wHZFMS3ginrbrpPr9ENUkFOgPAThkM4pvFFy8Xo6vRWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790484034; c=relaxed/simple;
	bh=VrqB9PsGfWhl4YnSk89yhiOOnmTVvToacXGDJlZnZfk=;
	h=To:Subject:From:Message-Id:Date; b=QOXw8GhnFY47E6WNbnJ2tvog4Cp583tL0cyFqyMDlNR9RKDheU89GxDeRzF0pIoI/lY23I8I1fhpfPii6LkqQGbB9wUyXR31Qp8l180F/X7CDraosncZbs3AHqFYB8VBx3bVPPA/IE++EpKcBPKtb4NKK0dHm5AhKnwejHeT3eU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=myM/5aBO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="myM/5aBO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3249C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790484033;
	bh=VrqB9PsGfWhl4YnSk89yhiOOnmTVvToacXGDJlZnZfk=;
	h=To:Subject:From:Date:From;
	b=myM/5aBOAF/XBG8b0dUskAw6jwOxVcZdpy4ocGrFVaRw+RhSSt2zh/MwM4AMIzJPG
	 bFMTYYO99a/nr+tkte6OCytr/joFJC6vF6vkvx7G8MaETSMrZnRJzJyVDP5u5NlyXz
	 ML6O2jAJU+ff4UyOMG6a80jQFBiEbJnfI9p6+mCT6/AEJnvTJdQupiyfBN+cNDiXN2
	 bcykokJimnzQntFLl/Lev89vKDaNDUuz4hKDldpPU3xyI7n+Uq5KeW9Hqka/B0QXmX
	 E8cNWFVPNU+aKnbp8aXTLEwPIau/2skwF2Xm3YwTcI4bYZhTpfnVR/wMdi6s1pBuEO
	 zqayCPCYGJoag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE425C98324
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179048403369.22011.16558495973804906046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9403dc3aea3c22b5c71a5e5cc33e3a4f4048a6f9b31724ec61b9b439f8cf0a0
Date: Sun, 27 Sep 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790484033
