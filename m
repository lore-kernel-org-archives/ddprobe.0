Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2592D2ECEAD
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750260594; cv=none; b=CxJ87/GHcZKH2WuybKvUkg22uTuNDYQgSV/vesMz+/s6MHin1aCzGwI65k1ZMC6PcJQL3Ri8vGJWL/J5uzWerD0E+H4f3x/lbYjwZRLHkYZtjWZXu4DyxKC4kAbLyt8GUgZuMqz5wbsX82vO17T8VxYaTLK2VvB0pFi+y1xyHgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750260594; c=relaxed/simple;
	bh=qTLWgZDpoKaZ+4zBobsqU+UOkMwayBUWmf1ARXyBCWI=;
	h=To:Subject:From:Message-Id:Date; b=I9X/Hmi4dfHS0+H4eTxIJjZPHHd7sx9wX0JEyQAxJLgGtnmFhD4RPh1cbcKxLVJdvIPV1bWf6wp5zxURz9cJXH3/XxVoL01jYakdR1JpEn0ivre2O6XaA8sDh/WUWG2I1m2UNwPUD2IKqKQTwk9CpAP6dnnEgSBQng425Iorh7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uhjSXd3d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uhjSXd3d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF48FC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750260593;
	bh=qTLWgZDpoKaZ+4zBobsqU+UOkMwayBUWmf1ARXyBCWI=;
	h=To:Subject:From:Date:From;
	b=uhjSXd3d4kWgATU27j2VR9qPaeyCVq5dTnKvzCxaStFcqTcKfK8YSCDCpyFdUDF/H
	 OSpcvAxthKufb351YZCihtR0CMQLLsNwSAe501/RDR80gRnsdlapuJV9IFH/LwmCRm
	 pSMqhAAnvnyaK7qpmfPqDKuFVateA7a9aNKq57GiY985ozZfXtqIy7VrHQd3050N6l
	 VaElnfDLu1kTfy5sdTIWuPeINmclbGYJ5qxbT9iLsxeOzW+hQbnTCRddyKVNrUBnTP
	 YJfVrRQiiDlZc6k+l4QrkPMk6zL434xX2t0uILqrdHktDYZNFWRexK+6i8SK5pQCxD
	 /Ntbg/xuwMTIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D752C7115A
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175026059363.8365.17561853957751978294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a788ee561cdefad6a348c7965c33dfde18bee0f0659e6401a9c984292068ab9
Date: Wed, 18 Jun 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750260593
