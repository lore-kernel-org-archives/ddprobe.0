Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02B061DFF0
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 19:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773775494; cv=none; b=X7tJXG1AxZBry8fd+f1sCjLgZe2yoxm0tebtoDXeTmRCTjNLDp+g1ckrhL6uetxPilt+taSJtWn+6QLeT+1f03hAY/FbklIbe1C7uzyLCDGmSnyEAfY1tlxkNSIIYnRbPFSmyWRds2NwAy5BEaX1ZV0+Ii7oT5e7QO+WKj+cxCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773775494; c=relaxed/simple;
	bh=sZD0Ekkw4zgDZSpWaym6VwwIzrspCswywiflN4k22f4=;
	h=To:Subject:From:Message-Id:Date; b=YGpicm2iPLyrMd74umncwooR7Ls8g6jQSrQrY7q7bud4ZSZH71rxO5NiwRaLwTEMkWf0L7ODu6nbaCLksd2V7GHYUmhjK/8AOjY9YMIBUWTByPiNGFseNlTfItU4saYbbadguDiGuCRGnu4ALFzWaIIWdhnygf0Y4UhRl4k/otY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pZEoDvBt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pZEoDvBt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29E6C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 19:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773775493;
	bh=sZD0Ekkw4zgDZSpWaym6VwwIzrspCswywiflN4k22f4=;
	h=To:Subject:From:Date:From;
	b=pZEoDvBt1c796+bKD1X+trCrYAKLznF4WzDVBg6JGz8ZfDoJ9IdDnA1P9j0q/+xfa
	 La2fIZ2rDXc3BKUzf0Fmo4Y2c4iOFg02TDpZRSQ/X4LH2BUPfi6d+fXbyp1JIcPqMd
	 zihdJ++zw8KWdrRrIUYlQrd6ZRKF2WrfvhdPM+oM9iwiuBVNFdIjBphE6ASyRTk7eo
	 9YIjyAGOhGFXAmRVSm+RTiZDbkL+KV4rPBe9OwFBWSOCTDlYjMvPPi7OSg0AKD/8OJ
	 vGOQn8twJhw4tqjIMxtqBkthNws4DCylfO5oSV5U+0RttK+iaUp5u/+NVIXbEcyGGX
	 qu62hoFo8FMlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DA5FEDA10
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 19:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177377549357.1738.11890703454155007652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d870f6f21f475613211611a42944eac93d3097a4266e62e2008c63998e9a37e6
Date: Tue, 17 Mar 2026 19:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773775493
