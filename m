Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50DBEB665
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738521955; cv=none; b=Y1I56t79vHS9bebC9hjPRB/g8O/kAcvMEFhc+ADXcql/ZJyZ2029J4lcQp0o/jrQQO2Pi3MiMenyhekQN2jr3gH/8CF7FSgF82FmafQBpvpguR3NAoXyGXwJ+F6zKvg/zLMqSYsnKXRrjqHIJRabUS9tagKAp7YmK4VtuUSn1zA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738521955; c=relaxed/simple;
	bh=9IdNldvzPZ6bNl8418WvQbAxLVfAa0g6dU+hRaKGeGE=;
	h=To:Subject:From:Message-Id:Date; b=eDqZEWyZWltM3QcIoSQtKUNS/l6mlmKDTXEUUh4MGjDPqGHywKzWo0anY8FKwmuE7lhoqfCbwMwpXqDLtkBJSJKoOon/dU5H+1ObUjR88BxYmPD3arSLShLc/h+npDUC7P2JibmliTBj8vdzp2v1910ulCwg4hM4RkLckhi+StA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ioRdK0AA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ioRdK0AA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A9FC4CED1
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738521953;
	bh=9IdNldvzPZ6bNl8418WvQbAxLVfAa0g6dU+hRaKGeGE=;
	h=To:Subject:From:Date:From;
	b=ioRdK0AA6azfjYHIOpMnI9h5NNJNIWxsCWyQX5ylJ+oHN2D7SDXPcsGrBdWXaW6fH
	 f0UlT0dhm8ilbgWv5uyoOO/mzZiIOet/GHVJCdaUzZ47JlKs2dYsPhEGl2pQXUbzGE
	 bxVL5dAj0NlM1+AiosJSNfhO0/csbRx1+8N1A/ZhvY2rKQUdCnQhqYEbIc/GcazcQf
	 YuZEpjxzF/CvU411AttK1KEfIEbT9OgbKRCmu6b/kKCmeLiq7QE1p6H2llnYYYdzPv
	 Vvm+CiFTATWqV7qtnSb64G5kUb+3aNI2JnY8wpRe0dujbGqEmTPBZHLGrq8qSJ1bNg
	 nufBJzmQPviEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9398AC0218F
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173852195359.30334.18432028836304686554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 970640eeae1a2772dd559a0eea37f84493abd74542f5196de75d29bbcaf4b158
Date: Sun, 02 Feb 2025 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738521953
