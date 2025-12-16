Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2563B361DC6
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 13:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765890834; cv=none; b=unkImx7YNP8f28TRAR6wOWsBP8O6xqTsOlx/Uo7UuvR23ksX++rs4EajT3Kzn/8cEzpdoGUdqi8fFIEAuZgkqCUWPtM4j9wsFGlvEBoRzbbTgkCY0IXbvY7ACzP76/icRxlNV26AvWQKsUEbbgy6vHEByMmSRo2QhRPcVVP6iyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765890834; c=relaxed/simple;
	bh=39GYuIIYp92FzitBa++ARWcm07PTo15W7SZAJm6UOLo=;
	h=To:Subject:From:Message-Id:Date; b=aiymz6jd5Jf6YxjujTmDnQ9V7ISuAMHZdHn70HGIyD2SPGvCuA6pTmbIBAjLk14hQAKKusoOH9VabU4wvzbh71v8UUG9fbTUa0DW8Br5o8XHKAB1BdEFZ8FZfE+BpAzQVC89dxEQTVb2T6PFX9sIX8VCFeF110Q3g+z0dyJsj+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ABbpKbTP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ABbpKbTP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C81C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 13:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765890833;
	bh=39GYuIIYp92FzitBa++ARWcm07PTo15W7SZAJm6UOLo=;
	h=To:Subject:From:Date:From;
	b=ABbpKbTP6Ue4c2zp86lgPoB3TFdRXZ0TaJ1HyVKeUeWLmdUaJrlVcaftVHEWWvVKI
	 n+ZKCqgC5+pGF77LqM+N/RN2kBs7T45AHOfNCzJTgmsY5hCqNGPuOhaNXXQGgg88mj
	 +jDWekv7r7dKtjXIx7rQjF7m/7dHjjGcJYINSv/yO21SOGVMeHU0UHKYNCSZjSVV1Z
	 w1YrAiS2chf4R2lHtYbCXg7hoflkB+5V0RSOi/QrXMDm0EOqKfRsyvrBE1FFueKoyY
	 dc1nDKp//FB4lqvk2WnZ2rLP0ju5TI3BPJTMdUQnuQF0616bcuVoPll2LCRm4VG2eh
	 IOsFpZ2DPtoSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936BAD5E14B
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 13:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176589083359.8399.12663315639305449090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a720721b835c237ef92a23151462d1d12139ea082c53941f9147f9933434b837
Date: Tue, 16 Dec 2025 13:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765890833
