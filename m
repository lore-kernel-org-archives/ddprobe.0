Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 587C8380FF7
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786999234; cv=none; b=Dmo7Ep0viMFzcekyt1uIvRtKUhZPp6mKYEWfpvb1+5WreCn1tzUE45CjZ4guH8Njmz76Rgnf4gDexe5+yHa4IaYXgLplMU0yJDVFw80vrxgZS59Mwp8PdOBLkRPsvQFUgtajG7mHSLRREcchvD3n15iOn972arAXV9CPN2/V5OA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786999234; c=relaxed/simple;
	bh=SPIwxn/M+C+qxnoFEhuugdF3FeLX5O17wUeUdf5aJnA=;
	h=To:Subject:From:Message-Id:Date; b=GiE7XwPCzGFzcjmp3qn/ypLGb2Eq1u25EbgliiogyrVofZpOTpockN/NIxtuUGPq8gB3wU+HbzXKlTReF88YySQC399oIsjgRyW/v6ciDVFUD5hEGUDDN0hOFLVHjUNNoY/G6RxLfuDONzhg6z352c6pQpaUjAERj7Jt9Uv1Kh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XmD7nEmI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XmD7nEmI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE5EFC2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786999233;
	bh=SPIwxn/M+C+qxnoFEhuugdF3FeLX5O17wUeUdf5aJnA=;
	h=To:Subject:From:Date:From;
	b=XmD7nEmIFwQJtTS06O+D55IwUC+jdz0UnpzcTDIPBaERXOT3ThQdKW+e2qujE0b3D
	 i17g+enRoE+Z58vYyTY+ZsLVPViZKeB9RTiAibJ56td/BgKqnvHtaFzNgsudRbkbjm
	 VoraR/yqX05HJRzOmOQ5nzdVrTW+gSifbcgilrRM8GlmL0yZSc/gcDyuI1ZXgMd4zD
	 XBs669oS7R5C+sFb4rxxxNxWWMXpZIzCxrjXCSW7fv6Wpg6XKdPDumxzCyQ4LUQ4qx
	 BdScN9+Wk4dYy/FR7oGNS0yIjOBBcLchqevYSLHg4zVLuoiLZ0d39D5IEdK6+dLmR8
	 ixGgLcSS4oatQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA507C5B572
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178699923372.13379.9635884491656277466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 851b47f18c52e2a8734e6c22bd038c9853becb679e4972d9b017fa3229aa229d
Date: Mon, 17 Aug 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786999233
