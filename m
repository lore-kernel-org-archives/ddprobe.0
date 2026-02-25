Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B03C1F5437
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 17:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772040294; cv=none; b=ibLAXBrpvKh6GUJA35kYOMsqU0tc/YDdN+Cruur1MMPpGDNrhxjtY2FBwgRIm25bAB/UYhLtKtFbKb1PtoofhxkwoMSIZfvL18+e7tcGOqbbgWMKGei/D6HNLWDvQo7ML+RE3X87Csmud90RRjyJgleZhZQIKQWM/mHCrMOEI2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772040294; c=relaxed/simple;
	bh=UHZy7RoNtffaLpw2YFNKwrHZncTmnBE2g2wJok+R66A=;
	h=To:Subject:From:Message-Id:Date; b=tajvImqqaBDtBeF6SP5rSx/Bw6le+DZA6U5WOUv//XHmZM5rGfKb6MZSEU4BIKKc2ezbr6J8HLMUnQMUgeD7wQKmYesJ9nIE47rYkOwba+OxktrOFDca69p9+pwLc+7mKgsshUoUgUcWbzyLio+bTMU01iKO54CxfH3yQx4liyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fr2D0yz0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fr2D0yz0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5B47C116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 17:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772040293;
	bh=UHZy7RoNtffaLpw2YFNKwrHZncTmnBE2g2wJok+R66A=;
	h=To:Subject:From:Date:From;
	b=Fr2D0yz0/ON+Jfq6oZXP+Omk6d5liRYmFOUiVo0OFEPPMxWJIYXNwvpLVnsRp4UGz
	 IRXrVwQ5f21c0E/hfIfuYFxaH8IN0z+VIkt5fPlcjGGwXXtgjoxq8JzVDBn0MKf4qe
	 VstL8/NRorjBGbk23zZhzZtNaDlIxVqGS7OJiMRwM9iy+U3VIkBm+aUETw6HDmJw4Y
	 Rg+1nv1dHSh+cbZcUXns/9wn2qTuC0tAMjzOlEfMsk+8IQWT6JsqoreWZ9tKz26WUx
	 I2HXMeP2PkqNLWeOhCE4ryLyd+Gu8PFJxMBMse6EYxuE1vBqq6OCnFayf0bBGq3lda
	 XftSMiINnPb1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB3AFD3777
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 17:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177204029362.11555.1528671507044464445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b57ced931adfc7d15bbb4b03ea32740a41e32eb27087b5536419bdb89de1b57b
Date: Wed, 25 Feb 2026 17:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772040293
