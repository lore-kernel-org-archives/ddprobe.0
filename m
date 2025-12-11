Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08267221FD0
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 22:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765491174; cv=none; b=RhUS7xMQxQxrYsOURRXrjcEbBsVYMATrHvEe9cZxu1IbX9VbjHwyxL5YKx2hGRMq7bCrdYoMVxDTYa0YSS2exo53ESesPejIxv+ttV5RNpoI7dnM1lYsSpPXHzrVdPAkDexvGlC9u3lu1NzDj+DkMLOTQ9vOPA5ZZrYGlanMjHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765491174; c=relaxed/simple;
	bh=WoG89P7H2BryL3jf13c9rG+hdTmjPa55r/5NyOqjkvA=;
	h=To:Subject:From:Message-Id:Date; b=VcTJVjpPg83zHyNIuO3t2YmkKBD+y+7jgtW0tSlzsfkMnsmlhiGgUyYLZRHvLxtdTXPBuTAjgjFGm2npmeiOsHAxYJhmsbKr2iJubz8VzscqkCr06/UnmDjj77ZweT2GnGsP8V8axuvmie+pu9Nm4RcPnH7TfgSDGgypJbkJ+58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iRRDoIvV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iRRDoIvV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD36EC113D0
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 22:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765491173;
	bh=WoG89P7H2BryL3jf13c9rG+hdTmjPa55r/5NyOqjkvA=;
	h=To:Subject:From:Date:From;
	b=iRRDoIvVLknBLvTH7oTXv5Xeub1EuSeUZeNiUspoiWtuqYDw3XgZUicKQlmikUdId
	 MruXIioJg7JGnyaD25/SL5nwsmZz7PCHcDACEpXpFP/1nWtCZ3ddtZphx4iKqAqWX9
	 KQodbpNawkAsdTTz+qN4N+DMDMXsFJESuCkVCVVjN69rjB0k6J6gdPz4g3ICQdZ+SV
	 I/XRGsrYAYf06JFlxrZAHLmbumuwTN3T7TS+bUzhP4cFI7FZsgL6HVNQDNaNQKiMLN
	 EM1dFY5wP/YklMTB7FpJ1u/ygOWAaqA6EhEUChM+2arqm7bRW3CWwsWIf+xWy9hOI6
	 07UpI/MSbWP3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F53D4335B
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 22:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176549117360.17014.8188968888958052493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89d96cbb25c8da871b3017747a70327b00f2c2a14328824bc3b44d8bdcb4ff5e
Date: Thu, 11 Dec 2025 22:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765491173
