Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36DE71CD1E2
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732202754; cv=none; b=RvIdozmLexS4+DWkQBiJQpJyedXGBQMnASDSclg1F5qUZL+oDWc5byXNz/3jHq8URWZjQG87eLnWpeDIONx0VjGpbGb3Smwvi6XV3iti/N36eLPqer0v9SIL6mxOhP9mYx84TmYaM8LSLIYgFaZos9TihBpSmyiDHAEuXVMusN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732202754; c=relaxed/simple;
	bh=ovSetBnD6T7VlOzHV30lNDf+XU7HFAFTz6s5eTHEUhU=;
	h=To:Subject:From:Message-Id:Date; b=NVq+hGlnmBLs3FpIlv9BbqPZ79mXCkYqpKictVINPC/wnAkZzU+kc2Xtsj7gcRz9wXse4e5iJKyj7GAjQEUCRN71B45IQ+CpiNkJ+6RGlG+My3HUp6QLmQA+9zm1qJ0q1XULYXvh+bXAvE4qttFXkyQXgsXXzN3MDsSAegDLtpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EdtgVq4X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EdtgVq4X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B35AEC4CECC
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732202753;
	bh=ovSetBnD6T7VlOzHV30lNDf+XU7HFAFTz6s5eTHEUhU=;
	h=To:Subject:From:Date:From;
	b=EdtgVq4XSkKxWkjuSgnOZBF2TwTFL0+MUaVZ1qoIMuQQxBnfnmzoyQnTFNFfYhdIw
	 5B50FyUcSgrUScmB6krNtVpHK2PZ/v4wtw33rBpkWOl009JwDygqcOCGOYezy12DwP
	 rQv9Ibe5LCjUyYCYGKGaYK15nOIh97Y6fycaJZQJe6NpSxVdA5/zZvMGXSVjuh+fz7
	 aiUgglB/DE/oUGlua6LeOQhaTlfE6QZX3b5d2tGf6pljWeEGLm96BOLeB/jjf3FBzL
	 O531ijzcZMyWd/Mfw1MWxz7mY4P9qqicuHMDXqTUSlr6TVPKsXnEw9wEuG77VTMIDg
	 1Y63ni2DCezLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A06FD7877D
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173220275361.29395.5207493052179084026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4976b6c7f83a0e136aba8e753d116a9f5e5123719fd6316dfa820705b1c0d6f2
Date: Thu, 21 Nov 2024 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732202753
