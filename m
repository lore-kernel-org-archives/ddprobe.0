Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 409FF262FE6
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754775594; cv=none; b=Gie2iBd0vKLUQ03mFVZpFDzLKazNMKpWubycEtfjtGygUDE5YlPQf8/BgMqFETZ+OOptd8+ppJQ3yuDL681Bc8DbDKc+6L86PYHS91QXiYZ2JCZu165b7yYPLOV4v0+HidGcsWMi1ysHWdFaehEKAdMnunbEW9PkB+wxSLBKASs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754775594; c=relaxed/simple;
	bh=0EtrFnlq8wtgU2a5L+LZzhhlr+P1vaIMri+oGqJf5lY=;
	h=To:Subject:From:Message-Id:Date; b=qq3y1CvmJ7+5g7ktIMfyi8g7UbywTPjT6HWMz6K4hR6xxbfgOBwULPzza1D7p5MyjNBqzBg6l/q29IlKgdUwK/lhsP71UHa8OVls/+vGsepQPi6ok4qMu9i9jVMFgB3CfW2bl6mbKQyEtF/IiAc+07qs58GGQs9HzBVHKyRhDKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aukOQEm4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aukOQEm4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA3F5C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754775593;
	bh=0EtrFnlq8wtgU2a5L+LZzhhlr+P1vaIMri+oGqJf5lY=;
	h=To:Subject:From:Date:From;
	b=aukOQEm4g8UMYmH/yvO21GK7WPUsh/ooy4Zwgg0qU6MI58gy2jhBj9YURymImV8EC
	 38XoPZqRtpowWyMUwYN73oVBUla3KC+Nfur3oHmZlSJ+OoaO7zfTQAblY2gy+7qbuI
	 tIl/fU65Hz69pSSGTwbqxoXlVJ1IC5gEyHY0lrPDnCXYp80rOuMt8NBCclmZj+W1Mz
	 sdPbmIUB0/yDSVOed0q6WL+jSKGg8iR5l+sto8uIy458jkL3Ewl1mnXqxg5EWzxq79
	 tzctlbzQyXp0gVAGOz2X0NWKxIsBMk23TtjXVFdx0DMJYYgMyOU0Yz2HyqfegbGffm
	 sBmbwmehVEuTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BB7C87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175477559359.27377.5555113481892484222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 198bd2adf4e93e2f74aed2abde37d79cac88df90c57277864c0230e50a264771
Date: Sat, 09 Aug 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754775593
