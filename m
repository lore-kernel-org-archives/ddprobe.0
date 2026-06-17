Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B1DB284B37
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 01:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781659594; cv=none; b=XZ0839kl/WqhRqs/G735Mye9pFH6tpRD64DfQEbu1UkfZlRKl7R+W2Eom/CQv4OYhB0FPErw2rBze1CFliNxQAWjqXuDhk/9P/MaoRLwynfEGKNqsMZ/POrVcaiUCIZOHPKAiZsrBEiV9Zo1MsAW+uy4HjIGONE5Y4OxfCGrit4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781659594; c=relaxed/simple;
	bh=htZBS3B+kFa3P21+jUgd1uLUmq1uUzSyv7ov4RK6+1o=;
	h=To:Subject:From:Message-Id:Date; b=cO6piqA45E2lFVXZWgbwx8OE1P23dv2rbDEjyQgrfdPa1HmX0MT5kwl4BclfB+MHbdQGcg/JFE6V63A9TR2tR0zSAbK2ZczEjKRwTx028p2hLEuhRwUjRfgX23JqVPkhY/guTu2bPofoxmwUNRFsiUtCtIw8uhELNHRE26PWIow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B3hGtpjD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B3hGtpjD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDBFBC2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 01:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781659593;
	bh=htZBS3B+kFa3P21+jUgd1uLUmq1uUzSyv7ov4RK6+1o=;
	h=To:Subject:From:Date:From;
	b=B3hGtpjDul+fZGx0vmbJxFv/JYZdcKdkMbsVYOm8rXNqdaYiCXaETSVzLcEP6SIeb
	 r9KKjWdNkVIkjqgVYPvE0UbcJjVWB8wSUUAk+oUzFbdrq4lXIaDgspRjo/tbkFrvIk
	 B/ovnXwkHksfUOh6FYqNYIpVzBaEXPhvCQzIzNSsgD74SZyZxmgGWmu3p6PJKW1VjM
	 wbzcZ01kS/M3QwrNyEUVUJcorCrl9ssfiT78qt1UqwqI6CkVYbCkF+H71GYbWe6VHc
	 jU0RPP3nHw3AyUrqkBeM8nmkSjsV0VLQC8YOx1xEklEu6TmxIlKnCIHGjx4ZuAmAYN
	 wPUjJaCA+xtcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE915CD98EC
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 01:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178165959376.32609.18066869975175106784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfca51dd44b57bcea03d08cc991fd0e41e9d2df1c78817af1992f3c2a23b69e7
Date: Wed, 17 Jun 2026 01:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781659593
