Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C8832C3245
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 12:52:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780059154; cv=none; b=nmkCiLHlNRV90eMYRAuqEDhqgIzJVZMeMKGCCDMjb82TpAu+U3Z+JfqFgNDT0WKhh2V9bjtqLiMHK6/dzbzk9ZTfk19joVYdQ8Cuj0J5149ev4RTdQp2iUT5tw1lCrpE7BTq+exOxzktIoi8L4wDYXOLUenjdhv0fx8TOrF+3mE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780059154; c=relaxed/simple;
	bh=xIutKRbu3/N611aAWUfB5t5i4Q08JTtzD2hLyezsuU4=;
	h=To:Subject:From:Message-Id:Date; b=FluNjb21GeyxXhzfKU8GEo5RottgwTANNaFTXz4GNHcIveg6Nz7hmkkF7RsIltZKT2U2FtGCtkN6O4SVWr4i6tTkPHf5zP5nnr3DfqYJR3Xb5RsSuTW64Rv4747P2IJ3Nju6Rgw97cLti5XBK0wv4ifwcu546/nqgrdgsaVAPnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y07ap0ZW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y07ap0ZW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFFFAC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 12:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780059153;
	bh=xIutKRbu3/N611aAWUfB5t5i4Q08JTtzD2hLyezsuU4=;
	h=To:Subject:From:Date:From;
	b=Y07ap0ZWUodMQkCFW5hZCyIcjDSEVcRFDl4ICIoUy1Smwg2lw55boQPn4BKWwo1kI
	 dl06ebFsuKMwXALktXmcA0Yx/u65GmhHRDSrs8GYDxp/zeIxMZjJsfzVZADnyUO6B5
	 POoDPoiL/i559hpUYnuPxzdJsch/9U0e7cldFhs+IvayWUPqWDgBCMPSEazJkR9XU1
	 fPmEJwNLIkDHf2qnsPuWvbsAM8bhQzRg0uSwB+RJkyqs3nxw+CKR/U9wKi5ICoKJ3H
	 QP1uXhetQxGr9Ajb3GXNPWmiYMk3uyGUkl0EvUkwg6fxQLR29NMJZkiwffbvqdfTW2
	 coIpTBeOzKd3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B0DCD6E4A
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 12:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178005915368.984.3108828642370243287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3749768973ee2bb1fd1a263fcf3d64c22c84462eaf01fd9b38bc7b6547d786e5
Date: Fri, 29 May 2026 12:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780059153
