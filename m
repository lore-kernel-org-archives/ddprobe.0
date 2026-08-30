Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CBB128F5
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788065434; cv=none; b=Va57ngm3dlhrfmnTFOD0F6caqUGe12aONIRDGEy1DgKAO1/rm4rFu/k2wDBXQ7y1m1f7HS92hozy/0vFnOQA/axMm/ssMGtIZiq/ge4r9+HFPZ8S42InzwVEPqb+uOhVyQL+9qs5JUWTpEPIiDq21PpsvUi1nLdqOIpSxpKRx5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788065434; c=relaxed/simple;
	bh=wbqh2554OltNrdgKtjBAb/67Hh8NPby/spXNrgF0HDs=;
	h=To:Subject:From:Message-Id:Date; b=Ionhk8a5P7CNPmeVTS2L68rpwrPvbOOxkKOqFipKDtZlGmJu97a8DNvR7S04mbJW71eBSlTWL4U2edNHQy/zxONu86T17MUwXbsulgqnfBxpZ0s6jHGG1Nea1mjJwVI6xmnYBjpx3FTXWfkt72rFjUka0NVBdI4afJ7U5jrqDiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mM/VSDFp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mM/VSDFp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4D2EC2BCF4
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788065433;
	bh=wbqh2554OltNrdgKtjBAb/67Hh8NPby/spXNrgF0HDs=;
	h=To:Subject:From:Date:From;
	b=mM/VSDFpYfOjnOlrhM9tIaKDO1M6AwB6ztw2Q1LqxPLJ9TzrWdgTtbsT6y+/netRl
	 mJeN8Ymbhs+lCP6LGZk36jC2xdtwELesh8I8UBExDmPUvGUnTsYdUJyYZamzPXewWW
	 t1BgopCnQ23K7R3BhAezz7HmeAy4VnMgg6SRC9jD5vKZ2CIK6mwFcmhHRpe4hAJdnA
	 bGQZJQTI+9K/tYhOYFCixuhQpQprHl5aQQbezuxrGkGorVmDKvXTrNINBKag89Wwtd
	 I35d0Rs/GjVgQJ8ULFbcTV0aSMknR3zahuqAMc8AB7nWUA0qdmZR4EjcfM8AAAK4BT
	 7mBuf0nMFe3Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B061DC61DB9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178806543368.25502.17341181161556457889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 445b7c026cbc26458268db01f6321a4fd2ca6423e222de9d6f4f345a307cb745
Date: Sun, 30 Aug 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788065433
