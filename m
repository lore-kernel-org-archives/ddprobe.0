Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4572A17F4F6
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757081994; cv=none; b=TzoqcKZFekQ5sKMJYvUAY011zQHV/hhyAW/sS+sL6iEiwri3y8Q2p4jqs/bMKeyFioNNBmHV6tjSCXR0I6k/GMtgd2XIRAHqIAHbI61DOXVBxvy8hu1GChNW15vm95IxyaoQikun+xraTnq7EQAvs1Ng69lrCfLVHcPKnr7QRHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757081994; c=relaxed/simple;
	bh=qJiHzEW7sBw/EVIjVnEoLXe3A1AyBUY4vCgkrs95/CM=;
	h=To:Subject:From:Message-Id:Date; b=EWIz2dZdhLJMQ7J9S3yyt/hyRmCU9sSwvIvf5xq5FBck9HNhPXaEydUgEuQmDAq0ezwACPhXm3MxsZAx2EtSxRNDG7GiW7yRhz8JsFS+8jKxbaL0uw9pURq2rI+pfcvSq02s/8q5NYiLGc0PaUux5oCEOxGlGYLbxBImNFxEbBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fjHSIStx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fjHSIStx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0DA6C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757081993;
	bh=qJiHzEW7sBw/EVIjVnEoLXe3A1AyBUY4vCgkrs95/CM=;
	h=To:Subject:From:Date:From;
	b=fjHSIStxs3KxXl7CuaXJAO0P/+ZTDNsLC35ws+AT4A+5XwqK7sjzrmjCEKsRF9XWX
	 dKrBcMGlOCTPMUCMtKK9fnqpm3MQ7tI3m8edy1ns/Wdx9DkpPemYiZPgvk2zqfJKHC
	 s4WAwUMMuSR6ocWWkdU8stribABHlX2wA+7ixHdTYZwy9HTaDU+4L/tD3ztKJBg19S
	 qlDziQsQap2DIRU/QpD/1ciDvOIGRIvxCVqrnDWkmYEJ1qvUDtAjke9jSKftUDyHPk
	 WkZy/gOAa2eu2g+eUlFycrRjNjn1zbo/Ljg5frB+WsQJ9W83OxBGtcexZMhMGn/XpD
	 K1tauyBroI0Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915FECA0FED
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175708199358.2955.3776999473403616135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbc72639b6391176450c3e2d45839a0653896ecdf8b25ce54a3f70ca2ff76cae
Date: Fri, 05 Sep 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757081993
