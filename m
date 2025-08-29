Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E35931DD92
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756489194; cv=none; b=PZvZNaF3P3EWgDeXytQIbExeWI1zQJr1CNer2p6zneLPUfYptL//VchuRlVbWWONQdzfoWCvgJwFI+bUI3TPZ2PY3HFvdi7Y88NXH95f5HU0AblDsBbBW8R6i5v7tlk2x7lgD78jsWvQtfNZAnQCjeelBLa1cnt7V2iN7rsoiBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756489194; c=relaxed/simple;
	bh=OKQcHmoICrgWmBr6RlRjumMeWkoEhxDvmMjdB2W+v8w=;
	h=To:Subject:From:Message-Id:Date; b=YwxbS5UgqVQPms0evx4Pix+4vGDcs/SKen/3avj79lnQ/p9hPjfELB/flj0Uw7MuDIlpO6q7Bw9BNiyyKxJxEmy33xfj2OV1+QK3YRxzbsZDhlbP23+KiNwucaMm7LgIQkxfGieJHveqIJBlVrZlCporGiko2z6eE3o+WRfL0V4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s4YaLi3a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s4YaLi3a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB064C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756489193;
	bh=OKQcHmoICrgWmBr6RlRjumMeWkoEhxDvmMjdB2W+v8w=;
	h=To:Subject:From:Date:From;
	b=s4YaLi3aU2CscdmM2KeDHAX2Bysdi3kVRHzQxGUSnpRuHD6Qf29JAh1+cD78UZvZ+
	 ce29gCSVDutCEGwg2fZo6/klgQS4k+obgrxYIkyx6a5YRM5sVyy2tg3zB7RJ4y4xnj
	 S8KN9lEuMgHmERpHlZ0kbQDFSdvltjJ9LysgAeD2iqR1+lH/qdv6cf4WUY4lY3Md4G
	 3110p02gxHNkhfwAUaPY8BS2ayJOPsvC0rQncDVm9t6Z6+yUSedOdnWFayQkJNSeD+
	 s+8w/bp9tEXh6Oc5NdPVjKYgfBQKsTxW/L3l7LU/hLMcuOPNlrNWPSI3x4yLmWedtU
	 z7NLcSOiql3dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947CDCA0FF9
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175648919359.8317.15640482580752952348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa852985027c3c17dce5dc0f960632facc76804de18063f2e7c190ec3342fe47
Date: Fri, 29 Aug 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756489193
