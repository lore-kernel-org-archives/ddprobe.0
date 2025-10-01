Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B49434BA40
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759338594; cv=none; b=LidEY/BblyzZL2uIMlOeGt8zRVLtZUFkXjl4r7rxINJwHD/brsg14C2YrZB0I0f1oWHdEzgJFQ7Fp04v70L95rt0Oevi7knSJLLtaNBTNqEvC/Cb4UT9b+hwG9nwEXGPMWNl8PROsr81UwPAOaw29a/QVjoU0ayPa5d3FivHj4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759338594; c=relaxed/simple;
	bh=PjXIRS883sENsoMVZpic5HwYl4KyyOkBN0oC3peLLbc=;
	h=To:Subject:From:Message-Id:Date; b=ilaYUcPMq8kUsT5tkcURgvhIunxq2qCbkF4adqsQ3z9CZNmvKY2+oNtmrE3iBNt0IdmYG7cGuq5ATacJEMPZJJSx27WHeowG+w5+48VnTON8JLM+LMs03F38qVugghTQ2lgH6yqaXgC9n2KPyxMWN5IE8jGTa1CEcLBDkORyQd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AQbVcPNu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AQbVcPNu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E79C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759338593;
	bh=PjXIRS883sENsoMVZpic5HwYl4KyyOkBN0oC3peLLbc=;
	h=To:Subject:From:Date:From;
	b=AQbVcPNuHdM3AqW4qDMxpQtowfVi6AK2lWHIydCoHlRt7/M8cTl3wUp2LSibOQ1nk
	 uq5l8o30nu8pZqtjyy8ixrRYAuzmWnUduNCH8ISYuwjZfNb29pv91Kgr1nqFcGXD2x
	 HItmp/mPG65XU5khL1cCx31BGQTrUAIlSRcItsJgai4TVEfMkV97Z/Xlvd+35FO1rX
	 TuvqxjvGyvwxon2xZ5YSZolDcV6kvPpIS1NZO7XAM149VZq7sldbO5bU9Ayevlod2a
	 jl5ihi9h2znWAnBChEbNqfbc3p4YLnRoAnACMfoPShgxos0QPT+geMs1jdy5mocZiJ
	 +c/xhV2Shsr4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93416CCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175933859359.7148.14476636866938036663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a1f5a5a51879fc45d6bb25dc1bad2d5149c3fb3b838b7042fd6775047295ad3
Date: Wed, 01 Oct 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759338593
