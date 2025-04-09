Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46539255247
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744217995; cv=none; b=GMmj6P86ar7rruZq4ZC6tzmLMYiWieT9qMz0xHRDCxzW6tnf+VAgX9rQFrf3FlahUnApffr/PlgzIM/MPA89izl1hYjpl9Q4lwZTovE4K6cFppo4FJ8nq0zlpf0VjxtXTzvLyCu5QtFTOFaFstIgbEGLdcZHUhnELx/09+kiqC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744217995; c=relaxed/simple;
	bh=0Fr//ZNJmikIvtujK/F8q1eMRWIIHDJB0GIsn5PdWKU=;
	h=To:Subject:From:Message-Id:Date; b=lLGXX9I6wrAg/2/EmhK5mImDSX4wLql+2kgUgNc//APm6sBo0nGGQIHnUEZjWHKjeLdhHeeJRdovlj9UDp408DL+BtvXMM8QiIR6Lj1x26H2xGVy6SdNaXKsrueUN4WUvfFxfsFQ5kfqpDZAm1tzSseeoZrUC0aI1R3RMocjOJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TJSyiD4Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TJSyiD4Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4E0AC4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744217993;
	bh=0Fr//ZNJmikIvtujK/F8q1eMRWIIHDJB0GIsn5PdWKU=;
	h=To:Subject:From:Date:From;
	b=TJSyiD4YrUpRp5GjLkCU9rjMbXCuatcgPTyuByK1l4q4BSLoGPI3i7KmvZFZTN++G
	 GqkbqjaEJeoY2bBe4OXjCH66p7Dm8i5yhrYzyX4sOJGEk/AbvpEV6RF5ivfJtuXMrc
	 dhkp7LqqNQL4IglmwhMzSt+IanfEJppK6lKA1fCPKb4wQO9+H5XttwalMsRR2PGxva
	 WdSc7UvbiDPkGpiajgfwoBPCm/m9oZiTLPKsneE6dWY01fKfzGNE0PMYF4Rvv06ZwO
	 YVyL0P+WezwRvL6UfJm9NkWwRxBm/8gBF9EN+CBjd47bNdNBdDU5erZuP2z8c6N9vG
	 fQTUM1KdRPu7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B897C36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174421799362.1474.16050985257100120789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01ca7c17cb0b808b0c31643be85b687ac966113faf41afe7ca0078b42db33d38
Date: Wed, 09 Apr 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744217993
