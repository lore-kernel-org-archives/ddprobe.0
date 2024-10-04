Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D85A1849
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728002754; cv=none; b=eQL6+Iq1Zp19HXOXQXu+TsC1EIQ0Eu+KwK+0QLxmO8lnJZkeQbGOh26jrSwd5Vs6yGQAd0Giv8/NCihp8IuhNvflMIHE1QuGh0VD431F3jgqD8LKerWS/KlSdiafDeEDgekXYtNuDkRtXOQ320PEdZvMoZLWfN2L+FUONA4nbS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728002754; c=relaxed/simple;
	bh=G0yxCDspR0+J4T9tKB13fU9SXQyf4D79Xpp/FwLg4oY=;
	h=To:Subject:From:Message-Id:Date; b=rkeYTy9DuMbhsmUpOLa4kXeJrvsUP7jVT03oRwQYIzQID2qRQs5TRNqisvhR2QZFVg4dgHEHmosWWBwMHGFvoNOO3ZVF+82KrCOVKum+ojP/Jopno9WOl1ToWiUpMURa4Jh7Ecd3mkaoE7KDvNObg4mAaVItVQ3gVrcqmKMiIfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YoRKbMDC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YoRKbMDC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B18B1C4CEC5
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728002753;
	bh=G0yxCDspR0+J4T9tKB13fU9SXQyf4D79Xpp/FwLg4oY=;
	h=To:Subject:From:Date:From;
	b=YoRKbMDCZwbpxT8YoIhqjqHKZ7HZ5Tbr2G6o0cJ2hqfNOYazDcf5ovBKDP1r4dvM2
	 671uVkPljvHwf0Co4L8Q+DK8P6We3ERLGVNFazQ8dNmuHifHD/HM6CaOs/xphYF3ko
	 v0m6bYPuVgO3pjmNLfLN2CH/iDC+M35y9Oo8TJYbiKKAyK8LjcJDz3bQvMXWYE6Qor
	 lD3NPmglsYCKz7UpnIZEo5nKJkOhat3lXr4WE2390gp3IY2u7WCP1JzpEjpbJZbi+L
	 bVDMaJVDMG/c9R6+/isqQo9CRGlQK6geNbHZMMimVSrp57/ZHJNYuRLMH8T61sT3Vv
	 GvFpyPo18D+Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E059CF34DA
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172800275363.13619.14869937081602219325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3e89bea1babd286428370b8ff63af43b291066f895180e7a35f70d36e7a9ba1
Date: Fri, 04 Oct 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728002753
