Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 343BB2C21D9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 05:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781070334; cv=none; b=b2Rn/dWmM6zfIojpc14PVaqH7d5gN7IcxVcU3JtWRztJWMtM26kR+qsfuN7jdtbT+m9rgNxLQgICgJKsm8/ijDdgv7/HrSGN9tKVbnsPCUC5ZET5IsMDV4W6omA/+MeOBc8vNrzKctU/38+8PnxdSzUlP5nzU8J8UKYCflTJBek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781070334; c=relaxed/simple;
	bh=cpgjCHrUZckhLwtu9+4p0E5NSvRnBQCtevNy/TXGgF0=;
	h=To:Subject:From:Message-Id:Date; b=TvFpPbiaOzkPtgpFuwJQ3gBkEJk8PJ+xqF6DbWEKm9RfTq/3m9CfHSDuSvSKuIxFfg2OfTPVwJI54LPNSbLTPsu/SJcWsVF/nlKvI5irKJaYBHnOSWFMLs5AXHxat2esX9QS7lJ8n30Yy1JNyxQXlA42wzK1uwQQKmL722s+qUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uzwO+5i+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uzwO+5i+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA77EC2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 05:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781070333;
	bh=cpgjCHrUZckhLwtu9+4p0E5NSvRnBQCtevNy/TXGgF0=;
	h=To:Subject:From:Date:From;
	b=uzwO+5i+4hnzvg3uwoz/lvpDLU/HlAYSbHWRh7UpR0hhKAZ9iaz9TZ7MFBsysBWn/
	 SIt9tEgAvxaSAziywTj2ve6JYAlqSmxnLDqnpBTZJtyyOVbgVGQdOFwjKsJ9V6hadr
	 ALq3+3mO6Muo7SWY6bJXZR54irMVl+0M+VaT7iCEyEEdOdM3WrdcTBdBGWko9Aaigz
	 95jYIv9nL38UxqAMJEcEpa91PaVawdrNXR8Wv8I9t2P9dzpjmMk2RzSEhoXAGkY8HD
	 49dIsdcaeEzJFYNxYgu2Tdpcck9dzcRPQ0cMbIMYXzs1ZYbP8PgJwGPbiRhXWCAiYk
	 qjQewUcvgfrJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3762CD8CB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 05:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178107033372.26487.15066022098399009360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf0b67063184ed5c49ad9bcb4555d9b491787f21f6da1b416cceae8e3660c092
Date: Wed, 10 Jun 2026 05:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781070333
