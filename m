Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53ED81B7F7
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 14:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719324203; cv=none; b=CHTJ+k/wKPfF8KjwiO/6xWMJJBqmFmQtN7SP0hrQ3eQm4BsbWNGxH61I5rKdZzTlCSE/jeJIhStrQwzEc83eKAqxlCxh1KqBExuEvH6hI3hnHai+U0uLopNaN8PaZhZkkTbQzUX3IUj2TyUdcy3adiIdnCp0bOTMfTwbiWelNMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719324203; c=relaxed/simple;
	bh=CHYk7IfOQhJUD6wOYZlnMrYGcQneIvsShu+M7/8wqiE=;
	h=To:Subject:From:Message-Id:Date; b=nsMCMXP1SB8pjSet7EvmUSghu/LVX1y5Dq/jOJsPHYdtlFT/q63roi9jew62t7n+N3ag8va9ALw3aW0EI/DyHcCxeaEAxmVtlU+lM8ggR5SH+7/jHPjv2XcJSzCBKYZU1iP1VsW2uIQJA3fsN1hAXm0XlC08di1K6qdQ+/z6RlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MBDMnfBx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MBDMnfBx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE5D7C32781
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 14:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719324202;
	bh=CHYk7IfOQhJUD6wOYZlnMrYGcQneIvsShu+M7/8wqiE=;
	h=To:Subject:From:Date:From;
	b=MBDMnfBxOx9S2ZyOmIl2dsAr1/xyZ5aK8Ptm6U3rPZW7Q48Lj32FbZl9sJr5M0kYs
	 wzxPHDdND9q1+Evd5aMldj47myf/mgujqbO/bZS8ZT13ztFXcS9t85//f+jEijX01i
	 O+MbY3pMUjASF5KUmbQ46TApf6YC2KItvTlX/hRisj+RaOl8SY67U5tOMVFzO3YwgO
	 Kl4OeBqIKM4cuLtrVSct3tDVY/klsgfgzPQXmuJITEMHEFCF7rY88oJXMfB5afXElK
	 LKKE9DpuDok+trGrHI4J6+2JvxanCkeQmRc3ugfJtr/8pLzh6Z2uEuP5IdGTgfi7kp
	 yDzjDoeI2vGsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C98CCC2BBCA
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 14:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171932420280.15102.15169056203124826762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0aecd1f446c08e3e3566577caa6e380dbde514f86af2f994210dcf53b6cb19d4
Date: Tue, 25 Jun 2024 14:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719324202
