Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 313242010F6
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745755794; cv=none; b=bbJn2u/RrkyU//Sh2bsBR1STgUpVAwJReu+Iq4H2unjBy0fqDbFO7Mk33FggQGsvGyMsX3MWFV+VEKHb64iHkmR1Rw0nGRsh0bWSzq4URlPYOXae38funDvY/uASrCoh0d5z9Cgl5Y9pG08AoJL0F1Z/8mMsBgBF3Hhpaq4SA2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745755794; c=relaxed/simple;
	bh=eU2zfbP5h8q1A3cfNYTVN3m0OKypd4ahP6sNjlNWyV8=;
	h=To:Subject:From:Message-Id:Date; b=PHQa8gIntR74CDfL2DVWxGf+VvZgA7LE71iUSfr46OIUaxKS0AJ7SY4kckaIxHeqdkBuw3yqg+fYCMQPgFQUBllY0+IcQkzKT3eiLGf2pvVi5UvBw0JZXUwkOIjBAKXC8g4j4sOgv7dlV90rBsHH42ur1zsEpHTQ2zaYDqkmat8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jS8I8mTp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jS8I8mTp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35FDC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745755793;
	bh=eU2zfbP5h8q1A3cfNYTVN3m0OKypd4ahP6sNjlNWyV8=;
	h=To:Subject:From:Date:From;
	b=jS8I8mTpvaSQ1C3UcpRg3g3bPhS/pzD2+W/Nc1CJUv/l65VqsA6pU/1yFfD+Q1Lka
	 MrnQzmWh/ZcLJ+iKaBk4PF2sJK3/OafukXczsDBwATDqwwvkfKBd8uY2582BfKLWvC
	 A9Y6rHoZFTYqz8BGig0XCdha2zNZkWy8HMLPu3Q9HI4WeorJsGBpvvfbK5z4UfmoZV
	 Am/7BSW00/EMXvBad2/D/vT5Ir6wUD2gFBj9bTb3EkaF+ooImBts8MhTBLSxfZ6LFO
	 njnktToKt2jNMTZklXQJHowQsPZ9u+Nvjrdl+o0m1Dp7YBY2K0AfJlI7bH04diyuOE
	 ybZsSPyrf2reg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91989C369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174575579357.26463.3404072821136773879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2380592b10a1a12a719adb331e6d6260a4653af0710f3e9330f1a4ed8225d748
Date: Sun, 27 Apr 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745755793
