Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBED2450E2
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722413154; cv=none; b=uOfrgEqOBkaLXa+PkhXv2t2L/YZr4a+Pss98Sr+AVNyNKvVPRELNlOdKx8L4oicgcJOG1EJKOaTHY9fNbLAIUPKTY1PbJeUJ3uUxU+uvu5mwethgQKUamEdx1SpeQ1w4TT3fXuQevZTOYk7jQDxd+wU0q+Rwh/Er+m+xTIkUGYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722413154; c=relaxed/simple;
	bh=4RpawfaBrwgDAXO1IyQQGBlgEW0YQIgJNE5kxAfnLqk=;
	h=To:Subject:From:Message-Id:Date; b=ig4pVH6EJ46tYPPQgYT7ZuKxMcHPcHr9A+gT21YoWaUtpH0UWLBHrX219mGq8YlSES07ADk6Ss6Pgja1Ei8vd5cD36rMsR2NeWmLFty6ny0h3tQBe1lUUh6GIxOtVl7OOaaGZlLsqwQxFJGEI8itCPoE0xAdASZn7DdJig2eYyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ub2CxOIg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ub2CxOIg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A636DC4AF0B
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722413153;
	bh=4RpawfaBrwgDAXO1IyQQGBlgEW0YQIgJNE5kxAfnLqk=;
	h=To:Subject:From:Date:From;
	b=Ub2CxOIgDo0+WbS6I6dAYtKM+i49DMKatUivAQ2P6mwHT0qYTZXiziurkWFIW6eMg
	 z9SqEuqDJmKydOyVeeSaxuc1kxZUex/fKcYkoA0boUOt3dyh+qp76sseLAWImkMbbY
	 GGb+BoDkkpOI4T3Rw4Pi7s3BjvmgIjTLql3QdJ19KypPRS8q7UhuFR1XqB/xPynUar
	 GGjieoFXuoaBClXxRuHy9zBGYbrUSd0EL/FUTaOii6E5mLXrqZQ9+LOFL3uOwci/ov
	 +Arrgl/9y9006IvKLY4oCnrOu8wEUTh7tLXAKypU0VxdLTsocW/2ZLAd0YIjaYD6RH
	 rGFm1Z+UBnP7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 978C6C3DA7F
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172241315361.1674.2103507078278115040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f80ebc3766028f30098445a28d96efc5301e614b198972a276455e43931fdc2
Date: Wed, 31 Jul 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722413153
