Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35482212551
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762756794; cv=none; b=ZX+DKpSoNullmnfMbhUoz+JdE9jcA51CTlxy9m8mXSAErvPCk4Aek7w0BmABbjToalHtXjjAajMHhswngY1nPwuN5tuKO3UX6deQzxlYKkK2jo5ujTatBLp/y5i8elYU6W5PrXoYKErUiALtRns7bhtr+gC7loKz52paftIwW3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762756794; c=relaxed/simple;
	bh=F660Cj2wL0nrhrg44B0KjQo5OyS0WGS2sxLI+vdSgXI=;
	h=To:Subject:From:Message-Id:Date; b=hJLvmDCQX3NoH7Jvb/My5F1vcOekDdaBfmCyDwTmHNhVbSjPPtTe06qnjp3scTa98Fa9hysOUVIBnq3FKsAawm3qApBwwlY2hseT8HgdCqs8VhXT6WyuMpzrkH+jrKWyovFMQ1f/MuXNrHu86DRf8JY8NCAZYJAFAPhPtVFK/fU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UUiC9Ky7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UUiC9Ky7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9CCBC19422
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762756793;
	bh=F660Cj2wL0nrhrg44B0KjQo5OyS0WGS2sxLI+vdSgXI=;
	h=To:Subject:From:Date:From;
	b=UUiC9Ky7T7PvqqMavMEIt9QWOVMEgbz6ANLF4GNWxBJHBkrCtQTrb/yiUL03uZX/V
	 nKQFKFJq5ct7Hjui/g34kOxilVDOt74v24zZaxJ3JCee/LSxU73ZIxmZFGgraE7HhN
	 Un9msmqf9Nt/UOgahGa6YKciIlR0ENtaYYnlmCXhFmH8Ue17Exc6UzL7zXdm87/dU2
	 atLfa5o2laqWjHtm706TCLCQ+H6/ftAZHFj16YS8c6rXUP4oV6c6lnYCKQ20ULGGbF
	 bFQXbI/h3kQRquEy3g+lKCn/7lhd9eozlM7RdwyHnN3MPqWmdHMA9wq/R5zky4QE73
	 c1KV+mO34Wl+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A0BACCFA1A
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176275679362.28561.17275571448178998612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a23f859c1f9c8a5fde3ebb2475799959b045915a40169d0d11877d3584b8c7b
Date: Mon, 10 Nov 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762756793
