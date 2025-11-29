Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 290E81F872D
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 16:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764433974; cv=none; b=eIPGqSgQohcZO0IUbcVcazo/knP1bFzFcs/XKRFNJ3y4yuABQEjLErs8iBAjCgpfjMFLgtIsVZRcnoZc6Q6mzas2VLjp5wcikbiUNyHQKyhYcR1yB38t8kxsscQrZ8ARjNLDW4sChyN2CxZU5j3+4wOztRaO8OIGfw8Ma+lYbh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764433974; c=relaxed/simple;
	bh=IGw/vJR33MSfU6bpB0LXAr0fkK223imAFoo75Jdp3AI=;
	h=To:Subject:From:Message-Id:Date; b=ZHxQCcXX4xkuyNn0p3hqt5LJFCJS+4tqexnZkc6qZH5ruzNJCAl6Yxl4IhyeoBV2mudBGRS5OICZo8taBBFsnTC9QXLpuLiXWjH/JWVeWOWRQWcNlHKxKZdEZEHletnSPiV/WnMSfsKJ92lxFEALAvbuTRvdGcvdWlXFvL9+4+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fPsRxbwM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fPsRxbwM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8EC0C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 16:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764433973;
	bh=IGw/vJR33MSfU6bpB0LXAr0fkK223imAFoo75Jdp3AI=;
	h=To:Subject:From:Date:From;
	b=fPsRxbwMQJ0w4kxhVasAbpAqzjZVH+ptSFTlKqrdSAdOt381z+HhTohYE7SFlY99o
	 AlWL8xXHfwlS1MNvtl+sOCUvL4ef1e2rzUgqt67vIWE8RPSVvS5fTZ0iEjlfZtzfOE
	 IkZ5oa9exgIWRN8oGJcUJetH6awyZsi8Cs7Df5fsglsowSr0QolJ+OrrSZa1cAjfNE
	 AOy94uioLMm+6wd2rCXMmr1VVBaColta508nfYecYpHG2D7zW9i9QiL7r6s9CfYtXW
	 Dsc1nSHAaTppdSjm4yQatJgF5bgzLX+V8r6hh1f0MaEaWwxyVGVUmE0fBGKO0ecWxj
	 +WHaeeCyGTGMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B30D116EA
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 16:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176443397358.29189.9659120731408833785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b74d395c5665a11851fa67e6cf2a4ce8a28bc941647c88941305b972495d3b24
Date: Sat, 29 Nov 2025 16:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764433973
