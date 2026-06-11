Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380AF1C8603
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 02:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781146594; cv=none; b=Wlbl2UKRqsffcv1s4z94DTn2VDIZAjyuTnSSdfckKmRFtdnC76PQUgosOQo2b5uETFvyfCnqFtFYjqSuaki4Uc7Vyv0v6ZvjM9WA9Ee6rJuEDGuiFAZYCgWgzSDO1IfzoyaCk38/2KAoWXIeyXLsu1KNZiOQu26X4bLHTDmzIoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781146594; c=relaxed/simple;
	bh=isnI6Tlvk/kKWrGWcvAIK5Dwy3bDCTqgay3jn8hvXng=;
	h=To:Subject:From:Message-Id:Date; b=rIiSl30SiO31SHzmZGzMjijnXt9QioFYMpqeEn13KJCi63YDvc+S0xYIfS9AFGDWmiUCvbJxspDH1Q7++8UnEFiWwcrnr7zbZIPLuqLJcMnFz5anPGyOmoqDyFfBwF2PU9k06wkPircNv9ybFxZika0RSvg2zR+o3LVMlPxyp4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A+pCb7Ww; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A+pCb7Ww"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEE5DC19425
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 02:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781146593;
	bh=isnI6Tlvk/kKWrGWcvAIK5Dwy3bDCTqgay3jn8hvXng=;
	h=To:Subject:From:Date:From;
	b=A+pCb7Wwl/skNAlyWDy+HFn5WT9V5XSJW26FpTYnrBqWMdv3UOKhvIvhjhYVjaX1Z
	 VvnRFp9LAbPmEkqSxrZbYUcGLt9qZKKvlQiy8cVaC/xIKSmDJGf+z8S5iayEfNYQbt
	 G6cjZgoyrP4jXv6o/0s1lyerMFkqm6LPJqLs6TFogCDtgT5xD0LABC/2jU1L5DHbuc
	 RtG9UPY4xy/kFw1vQed/th7lEk/tGwrduBuVuqGKSKGg1Uba9XXbWbGX/Qz1luueiS
	 l9So8QgkW012PK6ivQ7fpqqIRGLB914o63VzOz1UtVxXbGGvL/j2b0KXiTeBzMMnRk
	 dYq2N+4d76hMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95B4CD98C5
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 02:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178114659368.17344.5263950651263459016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08d6e36852b97c207054828494cba4c1b486955ae6b33f46f3a2aa598034fb78
Date: Thu, 11 Jun 2026 02:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781146593
