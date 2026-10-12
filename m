Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 448111B87C0
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791839434; cv=none; b=X/bYx83FwuM6ef71t58C0QlNMqxTN2pgjEZYYFS5pK7B3kud3pSWbm6raO8t5W/FRseFoLlcmEy4A8u5nDKGWhjHuUCJVcCG7kGOvXceaGklGluZBcWtJpj2Z4gDQ/Ta9uhpohqWRX2rCdapQxuq58f12usg85kychRok/s/8yk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791839434; c=relaxed/simple;
	bh=KSazUbEg9CmohQ2OmejmqRVkAmy1oV3qS1G3SyEFkPo=;
	h=To:Subject:From:Message-Id:Date; b=DbDqbUKP2C05U0kRu3Gyc4vcd2Q+aMSFJBVAmUB9JGK2f+UhSjasabtL9VG3JThfhfEXV97gjW2SQnJbVMbnwCg9Jb4AmxXplSkrKzzzWcarzOFFIzfrBMTwM/ntfN0CyIHH1OUJgokM6uCv6Eka8v+5zxUakT7t+IjY14x5QsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YiWQYJqG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YiWQYJqG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5019C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791839433;
	bh=KSazUbEg9CmohQ2OmejmqRVkAmy1oV3qS1G3SyEFkPo=;
	h=To:Subject:From:Date:From;
	b=YiWQYJqGsZvd+HUsJ0A2opph3a9+esi0ghiLd4S6aVcnYVsJlMcipgUuFqCnMYncf
	 WeEvqzjlIg1Jc9fyjRTk93JgorCG8NI0i6fJDX4ZgWPbhmofkBLy5iaCOuA4QiNPq4
	 8f7I4Xte95iwtmbmTUwSQijxWSt3rfivX9Sfp/nsDJF+Op2L8piEXjbKv9zG3GjRnv
	 EibTi88R1BfUpf6ARTN5Ra3yRRPUfO/G1BDlGKhTGDSO8rKrnKxWRqrLFnF4wJQdyv
	 0ZZ42QFA0xjgtB06Fxypxj9FHRrRMD9vx2/PD2AND/uL1U4HHProJlbKaN7EpCQ0FM
	 24Mkgd7rtVWuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9AAFCC6B03
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179183943374.6865.11679020160592822797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d55280d98fcb5c99180f1be420d95c0f7702638194d0ff2703e6be8fd53a1a90
Date: Mon, 12 Oct 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791839433
