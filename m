Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37B3B1F17B
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721945154; cv=none; b=udIoJe+VgiEas21rIaVOrqfwumI9KhQ3ppZH/6VDVRFf78T5KXqZln9LFgQE1oqbl0PXe2OTHccHz+XqVM1SArae7cXidtQX2LjEhyErw70+4raOEBRVLRCSNBChmdzXjFAC0IsH0Vj1Mt6GXSX2gUKv8gmUtyfv5kCsDEYRwQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721945154; c=relaxed/simple;
	bh=mfHu4iYG1xqVZDjBsMBkqPD8Yz8FF1Pl3q5npmI+6Fs=;
	h=To:Subject:From:Message-Id:Date; b=ArBT8W+9GG5H+5eDa/AI56styDdOvFdFowl98Bqn0dZXQvwb4rjNJh0ZrMxFlzNesZHLm+GFUp3/XDaGNrGP1m+FIl1vVAxMVVqRSI3DBMbFUEhvU2rEPYiDR1uGZTq60h/BvlS4FYj+Ou2cCKWSuKyVtgROwWpsf7UVR+EVfDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f5mzNXXZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f5mzNXXZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8721C116B1
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721945153;
	bh=mfHu4iYG1xqVZDjBsMBkqPD8Yz8FF1Pl3q5npmI+6Fs=;
	h=To:Subject:From:Date:From;
	b=f5mzNXXZipO6vWVHD1o1a93bd2JYQqsCfMDCCYzgRPwFQISO2nknrqS1Y2DkHrdg4
	 xWGRBxMSzkdZQeiJDRLNmvmBkt+cZFLoHuw7s6RSjO6Ly1V0SYixoflGyla4yk73yF
	 TSLTyI6qezkrTczyFX9Ir49tPMlhegSk78b0zy4JJgggVnQrQxjrHfLXmlXkrddvc9
	 ug/2XDNj8HKKI4PZrDiBLvcKDprWA007pVVf1YaacnMJpuD1dRoKMGAicia5Lf8XYi
	 my8LKX9be8h6JvGnAMUgyRZotCBaJar3rwvLODW6JfJGb7H3U+bXb7vuFmA/aMNcxP
	 9DmqEAB7d0n0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94536C3DA49
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172194515359.11320.16567259963128555194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b70726b16574da36b5b160b21c5d03c4f8a467d398385dc3bf5f945b931b537
Date: Thu, 25 Jul 2024 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721945153
