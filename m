Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A31A270EDF
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761151194; cv=none; b=CiEpGCoXFxEy4Ogth9F8K90fgHb7TinKaB6UvQV7XFEjHb1vjPOk4gSyb5ZKe2LNoD699nljGCGLeFAUaW5gzCMmvpvfa0e/xWJH+rUaVuoUbrcJxkpbyBsrlRv0vYvQYQwLMhlK+FC3hraxls7AZpUKLgUPVrDmQxDECmUWx2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761151194; c=relaxed/simple;
	bh=a3edfWsA2H6Avc99MEauEwf7GC8wK14qY/cBnrVvB8w=;
	h=To:Subject:From:Message-Id:Date; b=q6mQQi+SiIuabV03sFo51eDMHuSNUJSjpzphhj/6HettAUyUsIwQj12xHT1HIPX54fc28T60hVFUO7I6vnKQBTIrfABACtNUuVPgofrD9Y8q8zYTVFLMPV2VBaqZI2T5/ymMsVfWGBNxZInr5wONCODmmwtVykd2xck4iLy4SS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MZBMtJsz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MZBMtJsz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9AE5C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761151193;
	bh=a3edfWsA2H6Avc99MEauEwf7GC8wK14qY/cBnrVvB8w=;
	h=To:Subject:From:Date:From;
	b=MZBMtJszKkNwsWKsbC/yaQLV5xXGjliNldm36bmYR7UhFdriOsqb1I2G3NsIPiCr4
	 AXZLHgnFoQmfs6Ey2VXxdWve0+SEe/vy/ODjfs7hGpq6g8DEFwghXxleNYxFvEV2/Q
	 mRDhIGxb0WmshgKolOMG9sXsPnPPhCefBXJTqNFz448O8VJjnK4s7PNpBH1TflgZMi
	 YX3HwJ7LtPWVC8gNALGVaugqT+kNlKLb2vc0MLnmksA9NCIwgeHso+H3P0MAX8ocEb
	 in1p6cJ9EDxl1GWPFb0VbBWWs38eCOLUpdSsopkd9RHPomBSb7nn4bivqGTnxlO/ta
	 hrnRLrh7JrmzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B812CCD1BC
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176115119362.22815.17163281927081936806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fea8f69e46093e7c0e7fdfb179a71bece6ba27eff528b48fa9138df5bd5334e
Date: Wed, 22 Oct 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761151193
