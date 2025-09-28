Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07116192B90
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759048194; cv=none; b=bwdPZoLavU87TyC3rTkL5aCzscfnExSp4XxwoZBg7pzKix0VFjB4hkevjdNHKDRzc2QQIz9UQzoSjfwvsq1lbNQNRQwGOB4qxTrlcXnYEiS9nuoSkHsfe4SKApiN6czPpoTMyWpi4L3Utd5KJXLVh9hlKlWf6RXFaiQ2fe4gwq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759048194; c=relaxed/simple;
	bh=507Fh1HUrYoZhvRfEMX48FMvnpBr9ARfuoFjrRwsLk4=;
	h=To:Subject:From:Message-Id:Date; b=VOv/vHMvUjd0ljAbxaI2i4NiaCRFYYWJpRBZqae0UleL8lxffQcvviPI5O2viHj0qdzhf7fAE+Dk9BSe/YVkg2J9EP8cQBuHlfOTPxSoiZ/OAajey+JvQIiot6A6g/YzB7ncbFtKIU/rMRx0HXAjCfj2qOBw/ypSRJkZirUq21Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NbXZ8TZh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NbXZ8TZh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B25C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759048193;
	bh=507Fh1HUrYoZhvRfEMX48FMvnpBr9ARfuoFjrRwsLk4=;
	h=To:Subject:From:Date:From;
	b=NbXZ8TZhG3eCaPtkW+z7h+mMhZBeVS57RECv1KaCfwpW+l/hnPIFBx6iZnM3fC0U5
	 qCGDhlMx7A1/226mraZWM0Cdzjazeph5rT8p3sAPNGrt2Sf4go+fMgrwYyEPnJW/5A
	 xinTryuPs5Nkm9GjOUFA5neHgXz7+BT3/OTZBcLCV+BeA8GtgiLxHgTL86A6cMLcSM
	 PqzAB4tRb8Y7ojlytw56h9CXKWpmHeSf2HvdV6iQ+bRA3cm4X3Oa2sTJRSu4qJOImg
	 nfucj7rE+TDHvaibDvD/VQRbqSJVn5M4MaNe27iDmHUcEO7gHC3l70ocRDiZppl8Um
	 1HJwlNHKLaN3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9142FCAC5B5
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175904819358.25959.1029975480253596543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e47727512872d1c83951e766db7799ae5a2f6deeeee4bdf6703e315f506ad7f8
Date: Sun, 28 Sep 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759048193
