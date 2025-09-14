Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A00A288AD
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757809194; cv=none; b=lGaejUtyAozhSQdB24gBdnBHQvcGCIkW9CTk/hKlkY2iT4dqUEcZWfwLhRPTBlJawMkNmcIcwNzZvghBkWCWo+aDETCd/oKAf3ZpolXwqQ35Cec8e6/EWqVV388FMZYiAVjlkkC061uye0dVTGpEcsdHAs2QzLSBu3a2JUb6S00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757809194; c=relaxed/simple;
	bh=f8VzFPRgHroc+Tpy1tSF/aDuwQKrxdbMxUt7pNyZCtg=;
	h=To:Subject:From:Message-Id:Date; b=RdWsRPoIjL7WIEBDOjdUGZ1I4DWYY8Cgj1AGptWaVAbLadHm9hSUGVGs64F6e8dfCum+FVXz4+wQda+/fV7hXRUT3viypMEqSuFrBrxXlTD0J7l8tTFTzhm90LfAkfz/y9wa5U5PCVO3B0dothPSa905kRcrgw+jLbB6/0HTpq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LciiJC/Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LciiJC/Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F11C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757809193;
	bh=f8VzFPRgHroc+Tpy1tSF/aDuwQKrxdbMxUt7pNyZCtg=;
	h=To:Subject:From:Date:From;
	b=LciiJC/ZYDwlGEdro8VcvGvTs3HcP3xUR4nis7v2bHSJ7KbgbAyJtm61lYDAdjRZd
	 f4hqS4/czOI0+vvWluwc0u/YthLlISZOpMLV8sb5tNfDzmt8nTN/4bXp3kiuw9ksf9
	 yOUoxE4tT0Iy7NB3n//clfHSJ3HDXuw4+bOja0cDVjJsouVdVPXlYuIZgGLx9D6CCc
	 H/fk0HxXdGs/QkUeR/xQ2ACXC2t3aSeZVuLYqH3d6zZNEBoRsKIkeOAbfPyQcCPx/l
	 wsMI9f6hUrYTDtSBUYTknCNNwHSfgstebWPuCemsDfmTSUwHMr8mYTODz/Hc8KofyF
	 61qahxM5942Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F5BCAC58E
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175780919357.14822.1656774879538224617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5e8adb25a409d55246b412ed428eebd3f6184daf98246c0a71c80eadf6143df
Date: Sun, 14 Sep 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757809193
