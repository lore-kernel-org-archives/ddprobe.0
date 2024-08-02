Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DC4316BE02
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722615954; cv=none; b=Ij2ARcJ80IZK+l9QFWFcnhPnIe4EV+grR+4RFao9y+k6/KSnJmvBgNzWOSWm1ANOqFqgThGcwBzE5427cOXpkNrz0RNDiiXW83D+53FgxtqJoweVr5b+o6e0TdqEtcX2H/V7qkoNBYhPk0tnnkPAGWrOvLnW+B9T57yjOwR/8M4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722615954; c=relaxed/simple;
	bh=HfbOwe7fSqkP14nKRVbmBaI21Lp+LsBCrwl1bAmc1EM=;
	h=To:Subject:From:Message-Id:Date; b=l8bu7HW/oEpZ0sdsBzLGH9VRz6beRFNFdBP06+KHDkXDYjmREEDBul/nnaRxinUcZhEHS2eBYb64LWScAsVRlQJL9luvnpDKRhUNI+CEM/J9yyeezY4B2zc60QLjMxBh1Ulc/d/K8/+r0GRtMPKTSTIerfhyT0ZRT9+xzLmcKew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Drl44mjo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Drl44mjo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B700BC32782
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722615953;
	bh=HfbOwe7fSqkP14nKRVbmBaI21Lp+LsBCrwl1bAmc1EM=;
	h=To:Subject:From:Date:From;
	b=Drl44mjob4Fgehs/ao0TEiKQcv+VumGMetiGLhbHvwj8PFaR+PJ2lZOuSu0SYUxfX
	 XjSkjFFAWh2AdiwO7svzgNyMAfoCvlaYyc9VUmES22v7xA9K24WzdT77H+SJ6SGjmZ
	 f2KIcoLfS1N4xRzYRsS0QjIVyG1ipu8q83p377i5YrbP0jTP53PniizQXX1rGHiBAS
	 ruLIZLZ8o0dyx7pIY71p6P9sujB82WT8NQLjc4ShvnSADKfX8YJ5cj0UbhKS3lqfk1
	 okUEXexhwIx18TSdso5qb9rpl7Mwks3oek2uNO3GNUH86yrqUXzrquvaoQUptflnSY
	 b4LqJ7VYAcjng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2A76C3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172261595360.18617.4985140180959462001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c2a22c505e69829f622dfaea2faf4c53e2d295a8a05db6a174f3da7a6984937
Date: Fri, 02 Aug 2024 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722615953
