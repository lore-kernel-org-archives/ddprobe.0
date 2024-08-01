Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44775647
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 03:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722482754; cv=none; b=q18YdkhygwL/7CcyFZQ/ScGAouw8HE9m2pm5zhI4ocvk88iSVIK/uwbbZg9v+JcXIGBvYgjEAd5rDiv3iHUrGRv4pJiP/cVzrITCT+h2QSsCzYbeaAcSIbq/E84hQuo/VKEUfs6/OaB6YDx6EV0sC7bebEinr101SlpL0vvvYy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722482754; c=relaxed/simple;
	bh=eQgzINBvMXKutTwKNQle4+SIq8doDr7IPNEwFbKDpzs=;
	h=To:Subject:From:Message-Id:Date; b=uKyC9kDjg0BRXkzcGclPXG89IX2x+SHOjPG3E3ltv4p9OEvMFTgwvHHoQ2F8qN2ZFiqaffy7Woqvx9M7VlJfQcnlpHIGXJNBGrJSzUrwEeNUc/sPFIhLuyRJdfYhq9C/EaJEX6CgzJRaeMeUnl23Xn+HJGD03tXzpLztUZFjVqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nk4cq+tx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nk4cq+tx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C867FC116B1
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722482753;
	bh=eQgzINBvMXKutTwKNQle4+SIq8doDr7IPNEwFbKDpzs=;
	h=To:Subject:From:Date:From;
	b=nk4cq+txO9fthK+FAmWyViu/EIRsopI2Gmk3Nd1JlSok6P/gNt1fnmRTsUFNgVUne
	 kyMBGlZM2nJveBxv0fKRtmc9E28D0J3WjjAD/FOUpdCfZAORfGVJAgZPLwNxNPgGNP
	 D29SoAYCOENhLu7Uh+3dW1rGcL2oAQ2G8gOSuwaR+0+dy9ZUXqvhKRQl41mI5nZSQ3
	 zONddOjWlnCymWS/L2EwEm6gUHdTo5g3OTtDJuVJUKzBCDFsdPBP8CQwDBX43UThFg
	 /2huhy2SX5iW73nEP+wvzTsRtM7z+bpB6+vmSaA5Sr148uJmeXPWgRKu7+5rpr63ZH
	 zxu5eX5P7AblA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE99C3DA64
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172248275368.3012.11025165854361429036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 632ba16eae6348b2efc4277fca72f34521ebc5944365cd8b03182de3c69150eb
Date: Thu, 01 Aug 2024 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722482753
