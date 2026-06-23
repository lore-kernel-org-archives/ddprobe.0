Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74A212C375E
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 05:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782192394; cv=none; b=da7Q1XUlTMhsGGLU1wPuwVjjV5LdEm7Ucf5IKO5ImRr3r9NyLaySkvZ1xUrGW51PJLV5QDMGTtV9JNyNZGSxS5sCz4J3MhZddRyM0ustFJZ/FKFPrjuLIOYSMRZ4LhlaKrWMmBwPIMXor8spsGYXLanM8ukx4S9RAvknzx79FCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782192394; c=relaxed/simple;
	bh=1FGzKDtuX21bWOhL7ULUTkCUY4Tr0JyX0bw0eUuBGHc=;
	h=To:Subject:From:Message-Id:Date; b=UMETP2CRL9flEuKQqP+y4ndrO+bIhxudxGSjDOM3jLaQ6z1p3h19a22k+2TnMtpEz6TXupoLsDsXcZJDda0p2AK92Zdi+iScflzFfISw8LYCMWFDgiQUS+3LnwlM8rY3jApnwgM+HSZTIaZcnl8wmY2lflYPyzi43yUF1q7lsgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hYV5S1Qo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hYV5S1Qo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC3FFC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 05:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782192393;
	bh=1FGzKDtuX21bWOhL7ULUTkCUY4Tr0JyX0bw0eUuBGHc=;
	h=To:Subject:From:Date:From;
	b=hYV5S1QoER3o4t/r7jh/+9q/nqv0F/6WhsYGaCczfEc/nKBAbI+jHVmqb14h9Ch7J
	 K6Cn1haO1TE3PjcSW/0WyPoLV4FkVo1bk2ZgF2E1frEV8Ra+v/L35dOWM65ev/ihEZ
	 0u6Roz0sQnqfPFEDpcoIUa8zo9QWx6NfUUQBpTHJ1tQE5/2Ht4tXKxjyHeGZOIxRHc
	 z/FLoOoiEtoXPU6CUxRl8Wi6HBxI9rtLir4Un9fWRC5wTeBn15sI9WNAYs0WYbdOzc
	 +zsHg5ZsTTho07jf4PpVKSS2Bcw7THmjbTlAW9ihnoO+QPoJABfJAnJnv3eV3W6zFk
	 YfMaqhk2EpcKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD5ACD98F0
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 05:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178219239369.24262.13137079737253827764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e2a93ff8415208899017652c642630a68bd7459d97c6036ea16c05808f071a6
Date: Tue, 23 Jun 2026 05:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782192393
