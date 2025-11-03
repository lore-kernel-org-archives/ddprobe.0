Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14766645
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762139394; cv=none; b=dz8evEqsZvocSdtZk4tG/dw8HlheHcs1BTDYt2zdY0eK66tODFR+RTWJAic0B7RNUvSp5liboA1+qvvznHJBqhrijfyweYv71ulh1OAbtzpLL7/M65wr5rmevRv5rdig6VghRJg2caaUEg8qk8OYSWrSh/MgEhphX+h7j45pUhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762139394; c=relaxed/simple;
	bh=0XyrHltKEkuIXhwfCO+OGflZOw8Oue/9XYE9K4ilDo8=;
	h=To:Subject:From:Message-Id:Date; b=jkYlOw80oeOh3vJ9Mj2klho20oUIhQL49tmrD6Z/+7QbALFv4DOQEL4GZkk5sHc2bwcAPcU8hwSXei7YWJ0QKbZybdXQXrnPbE1wN0VYsWLr3HOArKGffU9wbZpCqNBVvnfNMn8dbE6gjK9jK2JPiiK75RghkFblFqipMPg3F28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jnX40WV7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jnX40WV7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27E0C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762139393;
	bh=0XyrHltKEkuIXhwfCO+OGflZOw8Oue/9XYE9K4ilDo8=;
	h=To:Subject:From:Date:From;
	b=jnX40WV7ExzMgL6ivt6cwtMYad5YGt3J2JMYMcrVD0gw/C6gPx7cVIKQopoNoP1Pi
	 uzBUSUnkphBkeq0/9pcMJL5Q5ZeDDA5XJJ0DxGkVUb/WCtjTb8Yf4wXKRnYCbnOTNb
	 1wFAOnefXWr83jPE2/ndG2k7y9E2hWxFsunFtCqPULt9rinMgH7K5Y1ATtYVzxV9q3
	 J/P2ZNTHmVtsIiyF6YW7dHKw4+02bfrY21rX2yKBi5CL0K4z5hE/AGzgX//DXASFl6
	 pTZG7ewWBJyK/qtf/nISXgSSzAQt1V4ujgmTFRCvi90vrtccOaoBxXixYiPfif6wK9
	 3PfQzkLDGc/qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA1BCCFA00
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176213939358.27296.10920011613858104174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e24d54260513a414dd5f9f2a37dde3d7e3ac22be9a46538c1e576bda49dd455a
Date: Mon, 03 Nov 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762139393
