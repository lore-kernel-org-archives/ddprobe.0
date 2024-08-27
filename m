Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F9E19D075
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724759154; cv=none; b=j95qxOFv1WEJT5zTuFXTJioUEuTnC2jXJVlievElQ7FTGjTexTw/S/BbOXSiuinFFmW5C6zh9AjysIvXTTAC9eWnCJkyf64xJmemdCPX7Txt+yEBXfqbjE3lpV+PnzXhflnhu9Ua8WVBCiZ15BvlAq3UOconnsMxTdE4pZPFa7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724759154; c=relaxed/simple;
	bh=8dJPIbPz+6udaxw5KKB9TWkyammdIN1tfExjfAQfcOQ=;
	h=To:Subject:From:Message-Id:Date; b=KIJTYHDmMhVHBT3p8BlK17i9P1qqhy1qTABQPKD6f63tiwIwHVMKqj24wqrxr3Q0CbipUvFNOEOzytcOVpX2Ocm+eeTI1LMWim+6ry2l8iuPspqlmrteIvHfK1emeFj/1gw1VoEl6tkkFJnoEInem8g7OuNfiGBP+BaTXZHGSm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kgU5UmRc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kgU5UmRc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B36C61053
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724759153;
	bh=8dJPIbPz+6udaxw5KKB9TWkyammdIN1tfExjfAQfcOQ=;
	h=To:Subject:From:Date:From;
	b=kgU5UmRcWPxZPD5AoDxjLpOyIgpPH9yi7rQWO7TOiAIMaOI8SU1DyaLBleulYB/6w
	 4O+/ksI2dDCOk25Hbs0dBi2O7+tDE8Kz6Y9XQ1B/xKY1LcuSKd9Z04c1rxROGfdK3V
	 iGEIcQjDizHhuiYv6sc3ZkN/92lxxDYNNiiE29d0MFAoN5CbWveIwBDdRSSa6J5DwC
	 FxbNpdc5O1fSSa0b00RQ4ijpIpiWFAaR0NiUFqcd7VDot8HU50lnPooW/khvo7ovnL
	 6arXZlv9b3MD+ItkXmhFB4T/eXBHuxOeqPyQtyJwfHQGPHCmmGkpyPcl2qZG3ADmcC
	 5DhDZ6S4jFdJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956C3C54735
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172475915360.12615.6361020759878785231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0ace4b0050e26e17057dace8e45c9d532097e361e27faee56cff4bb7411484a
Date: Tue, 27 Aug 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724759153
