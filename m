Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A81C2AD03
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 08:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764403374; cv=none; b=Ib5yLKzkpfPgadktpKJQDg3bSKJ7dyAfDPSTJJgFS/t9t1fkLj2kpNPZjUblFD2jlanVFWZcqp+JcEOy2mzidQA6F5NXtQm7yByc1OOQdO8n15GPCXxlSxgFVXNXjr3u3eGQEhRY6t/mxvRd6dXO2w2J/EKUpCVrvPBdgfE2WAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764403374; c=relaxed/simple;
	bh=5vAKZ1lUy65zTmg7adwO+svc15NWW+le9G/I3nkhqRI=;
	h=To:Subject:From:Message-Id:Date; b=hbB2B6/HXGy55iqpmYFIIyvAUPcQZNgwC7udoD1hSNc+1qGOcbmbLjVxvvdCbd/6ydCieTn3cRq0k4Tzq0MUPwDdh7Or0xSVEh0jmqwCw7ZbH/6PWWKIJ2VjLCid3qRYEQ1sBgKBqRuVv/IrP20lJFgDofPctWd2KfYrE7IXZGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TFb++XEJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TFb++XEJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B54DBC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 08:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764403373;
	bh=5vAKZ1lUy65zTmg7adwO+svc15NWW+le9G/I3nkhqRI=;
	h=To:Subject:From:Date:From;
	b=TFb++XEJHeXMY4OLtgGMTisO6C4YPGlCHf/qrdvRKXLFB08PdhqfylNRjzjwqq6Xv
	 b1nQQpEYwowjZLMqW78JTIm3TUwBRXAPtbwJng7KB3ZAVKeWXRtbxMWK0TAUjTsgBu
	 Y9YoCSS+ZONGPqBTMUKNzfU/IIg5DeNTLKeSPw5qHC4JRpCql/bmtlYxqpJ0f8r4B+
	 gbryDtPJi+00SKJ8ZUPpMXlqHXAb5KRNlOKVjfu2HiMsnW6urXnKIBLIeRwR47En+f
	 pdK4pNU9RV2BTgCd+l2Kt+sy3peNTSByNGtFmAIbtwOzpghGAGQHzMAWhBeYDeCVOc
	 ICMlWvbJahjdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98FB8CFD2F6
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 08:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176440337358.16488.7606174357613360810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fc0d5f97ab13818e8672dc59a86084aa1a8bc3adc1730bf91248ddabcf2f03e
Date: Sat, 29 Nov 2025 08:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764403373
