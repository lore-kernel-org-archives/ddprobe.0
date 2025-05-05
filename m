Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CF971A9B28
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746431994; cv=none; b=ama72TUqnxYBZQqbn77lJaXx1cdByy+Ey/+nxY5OW+g17yl2sI80D9pk9zkZJRNa7yXupHphqdJ8TlNVfX2pTd4ZMYZjNhB++9CXncKNRKDtf422WPpSvUj+d73PvnaUTpeYZ/T4YG2GgCQDouDHXnqACk/34g6MRAyGtNwBwMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746431994; c=relaxed/simple;
	bh=idvEkkFGgRqAnwGq2JUQiUdQ6Y0q2BQ/9F5WBKmnNt4=;
	h=To:Subject:From:Message-Id:Date; b=Kt+UC1P9z+hsAefY+nQfyIbprJ98dClQmcRtH0IclJAA/ZeSoe54sCXvw2/GJr0DXZ0VXpQ69Yr+x1+8yol1bVmKOUlyVuMO/BJwZJidBCyl+yWpQQcpDKOCWrs6nIAZzaRLOVGrwRzjcgwoGy4P9POiFq/u9K4LCaqnJoXGztE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pQI7TX0w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pQI7TX0w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E184C4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746431993;
	bh=idvEkkFGgRqAnwGq2JUQiUdQ6Y0q2BQ/9F5WBKmnNt4=;
	h=To:Subject:From:Date:From;
	b=pQI7TX0wwD+z8m/LTeLR/UbQnIbADM+J/C8+5StjMcBxq1nftUHYXochGQaE9dPq1
	 pDBhl7zrdP4ro7NK8ebuLqA6zsbtvwfd86GWtLzeF5RCm63IXoB9srV9q8OM0ELd4v
	 HhfBNJqhd0xNbnIHYHBeeFyqHZmNHw+1t8+/z4FH9xm/dEPIkshGEOSFm4gve8qapw
	 5HmCCnMa4AVXHmF76w8h0LNHwnPHNSqvmwveldqpIIwdjoE1kI1dmvg5vKfLSsuyZM
	 QjjkzgdUokLGwsBbjPH5rxHlxDEP1T8UBYAq9d+a7zMxsNwYyJZsCHu2GSZHB0beLy
	 a3w3GaG1s1+UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECB8C3ABB6
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174643199357.24147.11588104035788074912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 102daf8049de9161571f2466a5c8e833d971056bea053cc574149b0b9c4da1ec
Date: Mon, 05 May 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746431993
