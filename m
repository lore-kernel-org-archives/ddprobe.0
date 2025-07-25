Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 302D4246BA1
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753468794; cv=none; b=S2KpkhBya7J62MBthn7qdGxpKRJa57F2LPO1jbkxbe70KW+mPwGH/w5ZttrTn/xg+DPJ7yrIL5wbA4k+AZpaR4uq/DEeK1fzskY3w7IqosT2DWSkPHaCG5eedgqjhzV58KJCTfGEkSqIFPJaQL/oFKLNTmabBkhBLI8po/hG++A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753468794; c=relaxed/simple;
	bh=Cmj6/+HYV9oEUi3v1I2eKK7LsScpYRtH6+YV4c+nH6k=;
	h=To:Subject:From:Message-Id:Date; b=jBhTxYj+dVrTZcHgpT5dlZrTw6JR+Mk4HtJjv1iz8j5zY6F1tolnh9iGGCmnt1O7Gk0srC4RTHEvem3JMKA0Sseh2lo+3u98E0UKQwbE5Kxjc9Q6cmpadlV4k/b9aAlZCggMmdb89bYyszN2sQW4Ikun3pcCDbtj5sDxzpFJi7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qeDlxEMd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qeDlxEMd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD94C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753468793;
	bh=Cmj6/+HYV9oEUi3v1I2eKK7LsScpYRtH6+YV4c+nH6k=;
	h=To:Subject:From:Date:From;
	b=qeDlxEMd46AML04RLxlHu2jumljP0JP5/0BJiIHSwFBc1e4eKRV0iJ6zwqiLtuxI2
	 Gg29A/YoWKpEN7k7llw5VG6xninFa/elGEMLZurzcFHulwttuz1BNNzlPu5lbbpP/+
	 9CLDXWBe0zO67+EpqRUyYQFeczn/0bQtgGNL86nY6JWOc5/Anhyw/iTJtwJ67p59nG
	 3LAaYwzzpD0MD2EXv72Qm8+3NNVh/8tbHojxGp9vzAnHsYXnMZ2vicNhRlWIjs1GFX
	 S9QPXXZDWF9hL+7iZ3lCe0jnHdpadJ0aqLeHeX98OMmt90eY1Lz/sroepo4A8DEcrQ
	 F4s4akapYF2eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95493C87FCE
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175346879357.20591.11522189174426125910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a9594b2544b60f808ac7b913ed7e7badf8e17344c139d55f7c675d174d0e165
Date: Fri, 25 Jul 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753468793
