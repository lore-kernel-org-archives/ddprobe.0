Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331C764
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 01:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777166254; cv=none; b=aBZUOkMi/xpduL5id8+UEB4hXThWlyusAJM8ppaYWHI2zB7ahKx7L1+laVNGn8I9zrb+oO9oHJKOR6xfdcSk9X5DM32hOmr5pXd9Od0e5+vcSURickLERJWS4yx8EgSiHP5O8XNXe6/70FVYQr1Le+ybcDv4+cQ+74lpJrH92ic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777166254; c=relaxed/simple;
	bh=FParciBqkjlgyWCHhBC2d8am6NAKKdXlNEGF6VZmebE=;
	h=To:Subject:From:Message-Id:Date; b=cnCLbk23V6aRi9xl5EJSTzcIz+g6gUw8jNOOiwzFDIBmjDK0Eo3HcBe0t44xAb3MjY2yCcLhhbpsSHQkWB+VYYRH7IoCLrS4qhY03oHlM6TkK7N2HRExbPMuv5+hSraADGq59j1GfuhnYRNj6E83ZncJgT2kvm/HBk4KrqS5KSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jqCG464J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jqCG464J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2D6DC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 01:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777166253;
	bh=FParciBqkjlgyWCHhBC2d8am6NAKKdXlNEGF6VZmebE=;
	h=To:Subject:From:Date:From;
	b=jqCG464JXEXEF4mQjpG7oZtiFUmGesuiKCzp+ZMh1lHMAAOqAvm8VDpWV9l2ZfiQA
	 8wratcP2pbQ5K0TBBOwb/9iysUsaEdw/rLICZKsHC7Sy76OnfI07E7wRG/dHN/kRL0
	 S/kPP4Lz9205e4k39CJCU9MECFtFAstJg4y5XQmC2/huL1zfGJ8mCid/J4nJ65Jd7S
	 Gun6Imzka4fLv1mOGLQrNp0mRZkf73BqZdn78lElGKnQw3ZBjOZXtJApmA3HHoFNN/
	 aN2HRlAtW/WeYSdHJ2uS4yW8lQyItD9gfZkExkn5gGNC+gw42G8kh6XDo8fGHi0P/p
	 20VOiIojfkDSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF3DFF885A
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 01:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177716625369.6285.2856671055312363588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a258bb60b06d089dc2d5c60da3b21174f6f237b1582d827240f47d9730b1ab46
Date: Sun, 26 Apr 2026 01:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777166253
