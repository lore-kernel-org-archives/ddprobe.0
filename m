Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C0925228D
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757570394; cv=none; b=OkroNwHjmoH3t35W/AmCoLG9P8T4OjY+67x8kfQz2x9yHZP3JIeZw7ftTL7ET1pD7tSo4IXMrSFOUfdq+L+4Osn6muYijLmwHkDanTWfr3U/vOzfPQR1Jz79JqPcYNrP809tBYOK7Fy+z4/wKDB+rXQADDxNfK6POQjNYueiRTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757570394; c=relaxed/simple;
	bh=zBB2CDGM/npqinqRgmYTiiAFOzIUBc6gHMUiQZu0H+0=;
	h=To:Subject:From:Message-Id:Date; b=IpswoQ0f0gMm1xZ10K1CqPcnHyMNw1TTj269OTK7uEj01sEQJHdoqKO8qpgN5r+FDv0//ErOkMBjOAdAOo7ZX2GGu6kk6O+/TZjVnBfADEJyPTMI1W9yCvSfw2HoX7v54XL9rTJxNHxwECv1DL4gaylhRoziyLvy4P7ZmJb2Gws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FwXrPpHG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FwXrPpHG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18F4C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757570393;
	bh=zBB2CDGM/npqinqRgmYTiiAFOzIUBc6gHMUiQZu0H+0=;
	h=To:Subject:From:Date:From;
	b=FwXrPpHGjW41tDIQmS94q3cq+uUi2rDnjHsAkS2phvLJTrp+sHUTZ9217VuB4B/si
	 QSO2nLMmvLSemOUP/ybZXB5HZkQz1tfCOVHt/rixiKMqQNvsxbiOBWYHy26I1W/WuZ
	 D3RlpdT9l847WU3kO2KL0R/tf1uux7J3KvRajbE442yhCejl33N/Cl0ECcStbWuS7l
	 uDrvVrScMdg8NA7NJOIFSn+uvFVGuve1MAobowQ0jKhXiBuY25PSneRZlu5iwm74i0
	 tUYIewtOj830fCt0O+ApU+j4dckRBEn5V6JAifoKqKGnAiPpD/Je+UpKA7R7vH4OtB
	 I/UEZjoZizqeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E0DECAC583
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175757039357.18614.5605104564127572501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86981d31e0ce674395179e23a0cbf07ec2dde19ca49dcf67d48df09d28a82e13
Date: Thu, 11 Sep 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757570393
