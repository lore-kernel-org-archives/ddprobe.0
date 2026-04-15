Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30234242D7F
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 03:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776224254; cv=none; b=rd7XPElyaXly8kvH5e2EDnu0N9Ynem1ZsHqH5XszCybKwUCMm5AFqWt8t2l7+GiYxPX0DqmqqRTGq2FaOutAuIeLlLh1ZF69iRLtxKBaLMNzsgh9mzvMTAm6lmCI2NpwrqOMaHoF1mWmYyhrGkl26mB54rnVpcAJM0hszMhdFVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776224254; c=relaxed/simple;
	bh=y6wZzLAANLPdfYWbv+mAmOkyW11HzmuDfx5HuFN5DAY=;
	h=To:Subject:From:Message-Id:Date; b=obEUp/rP6LDvYlYI6OZg/wQrSPotwrb8gVlcpWg7bdAxhzd+DUQSmTMBp4TCLMztdmLDnOIRkJvNNwFjuFKFeFiB5HxSd/FatjBLrU4I5+9jTZA/cXZuyRdzS2zh0vvLTo6G8XknygLT6jGXL5afU2/aCp5JJ9w2HwHPeTQaruE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uKEWbGDU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uKEWbGDU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6B6CC19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 03:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776224253;
	bh=y6wZzLAANLPdfYWbv+mAmOkyW11HzmuDfx5HuFN5DAY=;
	h=To:Subject:From:Date:From;
	b=uKEWbGDUatiOkSssPhqT1DVrXw7QUyuUFFpEefJymcsJ5EM2G7W1alC65lu8N3q/H
	 3pxL6Oea9FCST3JEQhIWSzYHDUIrfKbkCY8hhBJA0JKhgE3Fs4u4MJNRzqPO69rBNz
	 L4TsaTUrHlmcuUrP0iGUMT7bxSO1Cc4pzieNRspoXR9LwR5AFGexQczU0gETD1TgBu
	 MWlBdY5IKPGe8u6YBDhwdxTvqoVO8iC6QoIpSP0DInC/dogzUP1Ko473yYlhP3Al/J
	 EodTPbUI4hLg0HTWQzIcgPgt5N9fieFkQF8lMaYyvktvkW776lQ+cYqTZV5UKcbKGg
	 jImNez3O6+uDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6DFFFA0C20
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 03:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177622425371.20626.14829768970689785170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6f6bf50baa3c293cca1d3bd78d27e8e24a7940f013d58663d1df80e285c6356
Date: Wed, 15 Apr 2026 03:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776224253
