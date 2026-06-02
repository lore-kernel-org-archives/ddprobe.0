Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 315263815D1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 21:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780434274; cv=none; b=Hako9tEaMJbKuQCOFEJi6tzy6xFSvcQubX3jVj0QyNtAl7I63/FvizG2fjr/6NAgEzKxvWWV8279ForYcWRJewBHrpsh1uJII1HQtYRCd0C4IEBaK/cgVTv/UB0SCSv0/NrWesj2zdFkUblE5qM+IaJwLTF1cyJquHfc4+F4j9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780434274; c=relaxed/simple;
	bh=VmyzF4gTJXpNlpUeNCAlDHJFf0sr5m+Wz7+e89aU09g=;
	h=To:Subject:From:Message-Id:Date; b=lN9rdtMt7giv7dB78SjaBJ14GRWEs5glV+YpOAkW4Ub3QMXSKp0eXSLIlUanbP+U9N5UbAcDoBMcAl64YdriYTrOi+k7x6rqpRjvutHYvhEq1+f8VD4WamtEsHCIXRpNp/AMiZAh40kcqKYf8xDhtGL2pkFkvj/C47SmwbGIAe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HPEY2qkm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HPEY2qkm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C73E3C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 21:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780434273;
	bh=VmyzF4gTJXpNlpUeNCAlDHJFf0sr5m+Wz7+e89aU09g=;
	h=To:Subject:From:Date:From;
	b=HPEY2qkm6QwiXDjB2he6WV4jOLwcA45nNYKKtkqJcKQh99V9qBkcvjTE8PLmJVaNf
	 jGuey7M1Dex4UQU1UV4r78/eoagsuhZvS/qaHBwPvtaooOsodueC583c1wv/zA/8uB
	 zXBJULAr+FiPAdGyFMU4GHqOQUZm8Ja9uJTo14SU6UJrdZlXTeTsogb3a9OfwoI+j8
	 d976nXJEFcBpvZbqnC2TAB935yT0AMjIAHY6tviXsSHHT2WRJb1O1Uylp4dy1UTUmS
	 lM4E97hYN9qNABG8WWtC6WbPYeeTgLVc9XIF/l3Xabf27W8ME3iD6cDsrcqwjfOCBc
	 yL9UTlvfIaERQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0F43CD6E5D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 21:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178043427371.2671.12096309137496697153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d66105c5832134a601f62b5e4355a4504c64d280a457f09d04720e6d3d499738
Date: Tue, 02 Jun 2026 21:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780434273
