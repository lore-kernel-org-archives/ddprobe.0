Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AD468BF8
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753852794; cv=none; b=GDcfFszDDFr55BqROmEi+UZRD/XLKNdvxvn7Upj4DN0rORm6Yu9Gd71tl4lruS3u8gUlbE5UWxZ2d01yfXZ6MKlKMb3lPserJ5xSUuM7KA8nfR2fzURWIzpE+8ycE5yK5a+G72+cu+KEPGmFQkGl+TKscDYeah72BXf0vuA9N7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753852794; c=relaxed/simple;
	bh=EdCGtjx2MVcXrsXNNq6RODXqi+uzK8FQkoC4xEP94XE=;
	h=To:Subject:From:Message-Id:Date; b=KPL7sV/3G8yu+0rWf6RpcArsMS+U/qqv6jmjh5CLQpc7dtsZQwNQkutSW44dxGuTSdrOd8akcUiHJwp9JYs1wzmwZJcy7fJ2cjJs9h5tepS6SNLisg9/3OInORsPncwDgj68x+ww1zeRHz0h1UvDL2x2enNxk52HogS8sWVQTCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F7sTAatI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F7sTAatI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8FE3C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753852793;
	bh=EdCGtjx2MVcXrsXNNq6RODXqi+uzK8FQkoC4xEP94XE=;
	h=To:Subject:From:Date:From;
	b=F7sTAatIpjq65QVkEeg0DrJDhZQZ2NjRvTpCWmk8dNsyC460lj4ldQ17wuX28qlKo
	 QPFchGagZ1Tu4QR+BzMbTYiER7IJ/xoC1T1ukTohB3dcpF85hDn0fSc3L/m59SiVWe
	 g54e42VZc49aWqXyoFluKLLNQs2tg/bOXFly5gApfWzl3HFJxAxOwwtz9gZOVmhcDC
	 bzhGpR0TKcvyDhseqFL0S2NOGIfQH9HtrwcVPcVvKHmNlOeneYC7KAtsoUK9TCFxp5
	 Z4SyVzFgdDuQkqncl2yV3ZJUNVVk0ejyvJNzFXRqYOFUbLrcXwp6+lxOz3XkrFeBAL
	 kNqIBseN0pt4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E1FC87FCB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175385279357.4679.6699459022694983553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b192c457661518d5d2a2c1afb03688c74d5a8455998c9ab1a4b306e1beb71d57
Date: Wed, 30 Jul 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753852793
