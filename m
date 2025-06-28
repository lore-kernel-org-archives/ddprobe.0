Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4112A17ADF8
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751153994; cv=none; b=JDBgb3C8zghkr8Y6zjhDCB5wSXaA6mXeiHCPS6qXj0VfFoqeQHxXvgmHlxE8/2DKTVbBNhIB5BsWyUJiWgEoqyScaWx1IQzCuLPAmq2dNZYEe5a5fTKRFxQ7qopOsioAbUnb5+VnOdURZmB9zfNyJxLNLtIeNix5rrEZCfXjCNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751153994; c=relaxed/simple;
	bh=edV3qFwgzuU9jDcJT+XGmVhHDiLfWWl0PGMtnnR/5OU=;
	h=To:Subject:From:Message-Id:Date; b=CRwn1F2cEAQ+KHyV8k8a3s7nQ+YHJ6tBNtNYyEhgraj/QD/GpaH+pjbLUrSDhqh5AwS5pmzPIh5ESd5RNBAlyJIXi0oVloG8Fs98eO5jxp6hn9A1jK2cQDzjj9Bygq1EWfdaW0PnxWWlL7GF6uRU4zRPS7DEqwagUPOwjjBo/II=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YjGj09AA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YjGj09AA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6526C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751153993;
	bh=edV3qFwgzuU9jDcJT+XGmVhHDiLfWWl0PGMtnnR/5OU=;
	h=To:Subject:From:Date:From;
	b=YjGj09AAHRNrsQFd5S9pW6NNeFFA8Dpqv9w83gcv8O53dbWZNFnst8P0A6f59UpPk
	 2UN3Z+E9VUtqBEQ1zUcPMO8ofU5rEBMfkKjTWKyG2wKaDF/qZ4g2kXrXKH6IL+pN9u
	 dRh+Xlt14we3fqqSe6s2J7+sML0VBP3COajxDp6UwzdyNO2zm4gNpAriJXnTHOeB+S
	 vwga5sM8zRePtrZrK5dRLxMPpQX45z63iGhfjbuLqcQLgrhcPkc4fIo0MmG/gRXuga
	 pNiTYvibyCvbZsJj3FUydkJXNz9g90XpFQqh2gWrh4RRn8j+oKg68zbwaLUPSn4mO/
	 tcTNQ4bZKGkFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934A5C54ED1
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175115399358.6973.13754969158389062540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ead279183c6f3d337f05f2e65507f110ac117c16303f15413ca3bee417c8f239
Date: Sat, 28 Jun 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751153993
