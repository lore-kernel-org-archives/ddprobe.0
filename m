Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D6A44C92
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 03:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770867894; cv=none; b=BE5u//0L7DKdY+9zWoBS3wBQEqStlcs2PD+PT2NbXeOg8TOPdv1vH6tebfmKFtNLISGvpqOrCPXVZwzVVZLQSAnB39HdFg1jQv4x5DQT8x7TJHPznFNkTcxlo7ZQJ3WHgdzRGrVoPj/eajDr/75MWWLMtckRtcV/2ZmsHrsaHRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770867894; c=relaxed/simple;
	bh=gJkRGd5qoXPJ/DNHeCWIbI3kSAwkDtnSFWZl/Udauos=;
	h=To:Subject:From:Message-Id:Date; b=hgWH9IswPyaB2AsRJICt+F9WY0b3H5D6patHTt+sJWrLeaJO0SYr3s3QvQC55zsHNCbonH0nf8miwRWNh1e0xbr8KvfvEoqBtKtV1TJ1h+qObV3W0GPR/ztxYELMRGXT5BXkEY+iEyMpvEPSlUpYFYzpl2yxT87bIgv7Auxa5Qo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OApSQ0xf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OApSQ0xf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB995C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 03:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770867893;
	bh=gJkRGd5qoXPJ/DNHeCWIbI3kSAwkDtnSFWZl/Udauos=;
	h=To:Subject:From:Date:From;
	b=OApSQ0xf1VkyQcJQgLVy6AlafnGx3Aq5/kiIgnVXu0sinzIttBJrcIcUNOQNet7f3
	 JGouFkAbGO3+OtzkA5wqPLiTIFpaPNXkocjCO0a/Up7G0hxzH/tTRydLO17on0T6Ez
	 eNJove8P+0Qd+eoMMbltOTextDHgkuPwxFIe1eNHfxPyi3FKZ18szpJ7uDP7S3PbEx
	 VUJ9xw6BfarOk1KPgxUGBQ8Ei+6xm3I28MHuhGG3+4csS6T8YC1rM/h4Vg4gutpwCD
	 CFbJc2cELOgPnif35ebNKyAjhOE6YDqKpR/bH3IfvtAOkVq+wH7u9rBxG3Pb3dMhDW
	 aIat6bSBU6VFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE0A9EDF021
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 03:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177086789366.9708.5572901796421008994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57d5ed76ebefab8ba5b45f6457156a47253b80e8e468ac8ca828cefd92856ef7
Date: Thu, 12 Feb 2026 03:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770867893
