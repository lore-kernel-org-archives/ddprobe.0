Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19CFF2F12BE
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761605994; cv=none; b=S3SOJYiDRxwiQL5aXjs4trkbpK43n04Dd390Fs45EpSqgPy4ByCj91RNytR+fByQSOJaKbGN7sS0yeteN4iLH+wvMebIUgessJJaeJqdJ4zCKudlmNOQfkMZnt3zS8QpOS8DNGO64D2y3Kz1wh2/f0Hx+a2p9QA2AyqWTqA0P90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761605994; c=relaxed/simple;
	bh=/rPHU2h14tZ+dOgYYPJO3Jf/knubbMSTGIhNk0RUSHo=;
	h=To:Subject:From:Message-Id:Date; b=HVpGAPiYcSZx4S+KyU3EEPKfH6y05W9JbCMqT/sGIJ+pXWfGbmfvzgoTKPBvd0AnNGZ1rmKKKxVUDheSuU1GPEGnqXR4pjCtQmUQlTTNqzBynpbzTQCIztc5FHthER4XjNzCQqnTMmkp497camTtX4Hr8Cx/anbWYQzb3+lXHcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nrbc7CTI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nrbc7CTI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A0BC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761605993;
	bh=/rPHU2h14tZ+dOgYYPJO3Jf/knubbMSTGIhNk0RUSHo=;
	h=To:Subject:From:Date:From;
	b=Nrbc7CTIro2HBdLK/XV3hzaCTXwLymFfqrrOlUzC//EP0lzIxMcPqEZyPFZX9IoTn
	 feuZGFOYFuwgcBWjKRO5l/0tx3QAkI0+tHHN97mfDnCEmhGsitbVcQTzuAidFypxhZ
	 mQ7e/v4raDerW1p3z7KNx1jyePHzeDk8+p3L5+rgAA7U+ktLV40IPTTait4NAvMmcb
	 8x49SJ4ShpsKui39ygWzlCs8Df+gfWmlRooOYEWDhbMx+JpSmUube91meY9Z/QuAQp
	 wAdWyvV1mEaZNa1Ie/dlerT7cxzT7UkMt+B5e6SEq0iAJzDCEhg6OwoxKagPXmIhJ/
	 cNf/cvxOwnJNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA92CCF9EA
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176160599358.4805.6696405109528246562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a32d2847c2a1028a833461330bad6f8c5a32703ed8a09284735869c92a8def60
Date: Mon, 27 Oct 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761605993
