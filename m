Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 230DB25BEE8
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751286594; cv=none; b=j13oQLjHlnuKr5jvdUZfYV7zB4D0PUr3qtg2UYvfbjGMyMd6S6sDeuo9FRUNz98tHuIWnKveRdWquXfz2nvlCr4/cLIPSIFTbanmJQ5+CQjK3uBnS9ABXoqTAhF9i945P8ZlxpbWQITbEqjnF7PfUVAkFN8Hs2rgJewyoUDmENE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751286594; c=relaxed/simple;
	bh=G7gtlrhZIiSVXt/8TfT4qeDbtreICGNVtF/p7p6mB6A=;
	h=To:Subject:From:Message-Id:Date; b=Bn7zVrBpp7KMhE0oK8syHq0nQ0mExsSp9rEXUKm+nVK4KIcFCUIKgkulThyOYfxXRTp35o5OhvyGdcY79JrBWE6DiQO/igVbRazBP3qDgVyYU3+VFdEcpT283eo/I8ZLYmW5D9Sj+8CyD+CxVn4MWBvhvxB9SET4u/CZ6/oq2no=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TjPfLnoA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TjPfLnoA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21ADC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751286593;
	bh=G7gtlrhZIiSVXt/8TfT4qeDbtreICGNVtF/p7p6mB6A=;
	h=To:Subject:From:Date:From;
	b=TjPfLnoAEi5HFyoDQhNYxRLpTyJXZktT3wZ6LL6pgA+coMczEMqo/Ot4RzJ98Tc4u
	 jj5922nI4h7M/1SKFvOvrsL+T+VrcgNl0bSW1oRL3Eu3fFu9bdsZJ8X98Lu+HH9+Ng
	 NznieDRN+pQWd0270B61AaVxvBf9tidGJi+tkjCFt1FyjRT9+ttp49heCp/aEViLQf
	 uJXk648ovH5uk9ipgsQjNtcnm67HptiNZb4kDTCgIWDvQnUJhGi2+BiPX9uUl6yzdD
	 thiDy/vDh+UUU6mVkPKPtmzCNKRLbBqEgy/8RpfBL0ntrP92ZPKiAQBLdkiiseVP6g
	 87ki2JilNCbbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F08FC83030
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175128659357.5986.399250033289348810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ef77acd65c2ae0da322e3edb2aff4fb862ac5669ab3d8d19b095cf81ad34682
Date: Mon, 30 Jun 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751286593
