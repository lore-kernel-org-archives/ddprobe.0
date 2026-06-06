Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32F5C26738C
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 05:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780724074; cv=none; b=RwvuFR7/SslaT1k66kuhzZEzBz3uxTFFsi1WF1heTDnV8oMB+mTn6M4aPcrQjZhxNvUUG0StLgArOo+vs1x3lMkniCVDBRF9nQXEx85xfxPhvZp4BQ5wn1NQVDQdwTQOXxL/KY3BigEy3s5Yjda7/QBmgtjqOgwndgbzNtLLSRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780724074; c=relaxed/simple;
	bh=nIcD6iEF93S7M2fDoun9mPnJFDNsie25Gy6m02eUHgU=;
	h=To:Subject:From:Message-Id:Date; b=tfJvDr5VJr9tKbCO7hvD1Z9HOBRXK8ZnlStdj4yGFZojVof/EuN7V5iNc7ttr4fXdUE5IMEV2eu6pWHhWwpSYH41jHF2XTbZqBnDAl6tULUHg8J2N6DnH8oNzXasa82gVFudSM2JEIX72eDgwSw7rPLlypPBTi5lVoOsw2NyIpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oGunWjEM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oGunWjEM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBA9CC2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 05:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780724073;
	bh=nIcD6iEF93S7M2fDoun9mPnJFDNsie25Gy6m02eUHgU=;
	h=To:Subject:From:Date:From;
	b=oGunWjEM4zoL1oi6telTB9LCPhoqpwOdyilPw3idoK604xkyzPsfoUT+GFel4Scxz
	 cgqkfQ7YZjifyL7+2Oy7dDEkszN1t1GkjjUT/+rDznQ8jTYq+uE2bZh2uymqsaWcAT
	 KjkXS/SukxT5YyOeLoBl0nBHLF/aMZr4OQL7W7fqsDcZgpzxLGKRxAZXnHrG5aHJY9
	 BjGNUenznLPeMKRQAxnZboEhElOd5qiM3f4opyyrZkjcm4bwEgCpNz0KYflrebVgM5
	 +WC7Pe7+gaocC8D4Er0qKfY53g0Um8BwAAulvQ6s7DTgi1q7fyZMKa9SRl3Py1+S9X
	 TcXVJZ3G9a+Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFED8CD6E55
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 05:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178072407369.5886.15324962676468196916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4022afbdc93f7ce71a1a886c8ba0c41897daa8e69982ef566aee667b5470e285
Date: Sat, 06 Jun 2026 05:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780724073
