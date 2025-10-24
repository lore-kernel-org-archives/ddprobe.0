Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A5BA2F8BD1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761292794; cv=none; b=bn7Ev9hcbfbHvQvN41NLp2v4M8kXKzhoo9bK8vOJyUQ7AZ7Tz3PZqeuT2ZS5FMjBlitvo0oogik3Qr70erkVXxJ+6KbjaUp4uYr6u5Ccz/Stewor87qGSZTE2e5N72CzOGpZzfoMv+g0wTICvfCJfW4uomERVgOnNnUEgiokNpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761292794; c=relaxed/simple;
	bh=mMcZSOsBCUzYssRAitebXOLPyeDd1gkIlGj57+MeYME=;
	h=To:Subject:From:Message-Id:Date; b=BaJKAeMa6k1T3OrH6CMDcOJy1CSnD2pPXw9GEyUAJtuVeOlWfpIAR4ID0CBui+o/RTUpuDtC/eUy7l2pNb42hQFnwoxzwaWn+uvLuqntoVuO0pMcnDDTpxLmM0WYmmes4tu2mwlYV0B9XGW7OA/cP4SkCsQDamJcrr4X18d1BZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GZr9pbZu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GZr9pbZu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3436C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761292793;
	bh=mMcZSOsBCUzYssRAitebXOLPyeDd1gkIlGj57+MeYME=;
	h=To:Subject:From:Date:From;
	b=GZr9pbZuJhtLxeK9aw9Sr0f+G5a3cSWFmvjfTfCDc3bQPwybaN4qtjT6FnRTc5XT4
	 e5NoMM/RdHHKOJIGADm7xMoPbfDbc4HnywORrygumdS7Se4iaP85wtDoUIAA6pAxFK
	 2LjQetWjN5eMOMvWeYifI3ttA685Me8FC5SMsOxCzon/pi1ovQQD7NtTnDsuZbSsNL
	 bZ61KXVCfez5diKc+TVPAVYzRDw8AtHdfg/zLRYywE9mO2q+7t8B2J4UyFs6gm+5Hl
	 jtLKAsrkVNqBdkIzR7cSNbAqE5IuPLjTdKle6/vUFM2oGv++nomp7Y4/l4Y388Vbq0
	 okCtehAydvFOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F9DCCD1AB
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176129279358.22852.3709782869368542177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a30bcc94636d9529bcfa85f8307fcb32f7896b909c215398b22bee0c13017475
Date: Fri, 24 Oct 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761292793
