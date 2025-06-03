Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FF9221C177
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748948394; cv=none; b=j5bQqSbOw/oF7bh7apVY1OcdSj1V1XDX5aIClvVwa1Xi6sLnyoX0YP8R6FJFV8Q7Q8a0MMm6RM+1WvbJJk4MxmutVoL3/Kxhry5Uoq68sWxNE76cgSm21+2GEg1QNW6oQr+F/cEvwB+SzMIzaXgkpG2IQlXTeB/Ne2T8GyM2jwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748948394; c=relaxed/simple;
	bh=typSgjtjNWehptUOhHrsv3JXhEMkOkSr4R2SrNx9RLw=;
	h=To:Subject:From:Message-Id:Date; b=FcljOuIj1g7EA87z2wSiz4nwq9zmNIqdtW4D6ws8bowgVKsDZA79Xf8Q6I2/UticPRBS3lPsXioBKyQ0Ipp78Yjweh6WiOPrYPs54BFlYz5LzkCWarA85B1Id2VxIruLxszR5AjZBuG49nw29NVpSMh0w3/LCCpkqsapsMsfH6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LKKtnzHe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LKKtnzHe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DEB2C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748948393;
	bh=typSgjtjNWehptUOhHrsv3JXhEMkOkSr4R2SrNx9RLw=;
	h=To:Subject:From:Date:From;
	b=LKKtnzHe2wsNk5fM4gcLWZtrdGvkwg8Q7RTbnNQPTVkmYrkAyAjjKa6nfZQKn7dqD
	 /K1riu5AGzb6+Vv7SLLrIde/THHeTuQiSajcHvjE3RMeaI4Lrit2CtozXrLF0Whw2k
	 t4i6IMcJUJr+SjQ79pYSGZAfZOi2Ko7ts2CchZF2M/f3liQn741Fu1yvHaK45JuGL5
	 aWVM9bhTsnFEVaRH1T5Vr1arzIgpzv2318xpfV7tbm9kN/xVMt7YJqqsdPFsxsZKkj
	 LMLWIHdp3qf4vrGMdop2b0pao+eYmJb0ujOh4k1XN6oLFe0b9rbGjh+eKuygxiiZRN
	 BACMKN2Ge2EAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC20C5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174894839357.4748.3766619073672691885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1134aaaf666a893e9e8cb4704c4aeb210e535bb8b86c490b8336c33f94cdcf4e
Date: Tue, 03 Jun 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748948393
