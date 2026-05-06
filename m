Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35665238C2A
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 07:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778053654; cv=none; b=jgzeQZQMeWeV2McVZEZgYE9nLqfm8P9kdNl6BtcVm0n4N7jC3FNcuY710c0xKPslsd+EEelweKn8J2k7JxfGUdk+fwAKoGVUdoQTwMtJVaUS53fmpT91xz3Eg643UeJo1sEJXLSet8xVAU8d+XtUW+hC31Gw1o+1oFJBUA9TOc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778053654; c=relaxed/simple;
	bh=I8k9Yh+zTIVTGFTSDrS7HnzomHqdMsnn/g6AYZ/gU6k=;
	h=To:Subject:From:Message-Id:Date; b=lADcytO96ViDyJ2qi4O9/NB/AIPj6rbUt7nwJp2TMf5IEzHMjRp1CDMtetaHE//cms+NW6Qr7cb9gD/LKojK4zVj0WiSDNjAVEIU+wJNlr52m+14FJB2YI8CwHsLEpSZ6dwLi5v4fKJ8gftiOjHHSj5jqa2qXzud4j7trPkojTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a1zr+wRJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a1zr+wRJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7592C2BCF7
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 07:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778053653;
	bh=I8k9Yh+zTIVTGFTSDrS7HnzomHqdMsnn/g6AYZ/gU6k=;
	h=To:Subject:From:Date:From;
	b=a1zr+wRJwLwulzmGvInQ0s19qrFWsY5UupauPpYar/SpyRon8AAq1FeV8BfpUXkZg
	 pi74PEVUlAKnrIlLaugUisux00Ndt2TEP/wnGMcBkZr0XyRVRVwAen8b+GR36NydWf
	 tWFV9lxXN8aGUibzgAqPZKn1KpdAHDjvxebpOdhRkajzfoD22Q9LFf1pdEgeyqufij
	 78rHWTyNnTpwvNZIs3Aj6oiZ6lAeyWjiR8aARUd2T5N6Scewhaz4SS4Ziq1hfzx6+i
	 6N+Po2Pij2qC2YFXtx3EUlQ+oK5M1YUnpTJ/Krtiubtt/d9yLIIUcBStTB9fqxEPWu
	 5iFICSPge+WJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7F22CD3424
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 07:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177805365374.29814.9319168692000901136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc73caaae770ea7aab867ab55f7e898783cc39190e8177ea8239d844ef3f97b7
Date: Wed, 06 May 2026 07:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778053653
