Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54F88DF76
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752538794; cv=none; b=N+FJRtPkfWkC1NE/tXuM/rG1Tm3cqXwj5ua4FCnulrFUC8QwU+ZUTD502JET3I2H9YtJLiPmP4dm/8jWlAmdVeRrL+jUyQzRJ2OmfbYks0SnT5iTt0viWSxA4dtoRdTLG/BdpWXkgUnlj7GZ7RckfoPQYb52WFFe11rYGNGRux8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752538794; c=relaxed/simple;
	bh=37nNDVFZd7PfXPjyIK10UzE2fC142IEisfY/FL9Paqs=;
	h=To:Subject:From:Message-Id:Date; b=N4gFp1SfJawBliYrAmeyyX4sHzcb7VeiCE4kNwQQCjnZ4Lj+QIdZ3k6zi9h0CBBhzPFiv91M9bGwciHFS+CE7a7fW7gf0/Y7Pb4chZRqs3MSH5gaodsg1M0MLMqJkXmebEIlu4b97fs6i2DPefDZr4Z9X2Nb2T1oUfypRFo73zQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qUMB3x12; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qUMB3x12"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AECCDC4CEED
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752538793;
	bh=37nNDVFZd7PfXPjyIK10UzE2fC142IEisfY/FL9Paqs=;
	h=To:Subject:From:Date:From;
	b=qUMB3x12Yz7HmXLMqogo9m8AEv48dY8HE4W9p3BJBrWWfHXWfLQOsjl9od7JqbQFf
	 0Lz4ccib6vPNmqym/zexyQxzUmajPiqU5jLmqbcdwOIAy5f5tRSL4RwalJqP77ChMb
	 uXm4QNzmA7ZFLoHFoQsw/zV74XvsrdstkPffnoyvrpuN2jR/DWpcNjKT0axIV6L/xF
	 wGIfadPQz5WkNQQlMpkwv78H3xF3XPLkdVPlRckfthZHhOCG1whjPfUTcBhV4b4eF9
	 rggNodWSaknNYp2bfwAzLJmuZ6GG8YUxnR/MXEsBu1TemWzLVLvd+PnlMZkw2IVx+I
	 M84Xxu3/EYM1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F0CEC83F1A
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175253879362.24273.13729887066951188240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1a72a4c1a79959869d136ad540fc3d08e61101aff60158c3a7634db9ea1084b
Date: Tue, 15 Jul 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752538793
