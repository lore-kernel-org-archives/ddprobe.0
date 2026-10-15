Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF2AB53C3C9
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792087234; cv=none; b=tfvhidovBWcxXtBEInT33j3yax8khXs6pPS42aOhUirDWqDD/AkXCqY1AjfrESzHgSbfA+oNUtibWzMmK3LwP9C9KVrQUddZKeIs3VxtaFecApzwibFxQTBm4oW7BN0VuhogiEeyO3LQB/lXf7+wB0uoiB3kaqu6hEA6m0aN76w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792087234; c=relaxed/simple;
	bh=P/4SHqD6ESIs0AyllUY+bI28oEP3Sh7ZQBYjng/jhp4=;
	h=To:Subject:From:Message-Id:Date; b=MlmM+0xOjBV0WLRHY0rEUKq+GhdMNfgLV6VhS29UmjKq3Ub6imtCKJ+FvGVAiloFpxEEBlK8imoJII1M2YlOuqeh6v1BUNKWCFDmgILbAKGsqruMPUxgiQBjPB71gxMDYXwqtbPaxdC691wtz78/degiPM7K6EIHT/K8DHgklB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B+he9JdK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B+he9JdK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF794C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792087233;
	bh=P/4SHqD6ESIs0AyllUY+bI28oEP3Sh7ZQBYjng/jhp4=;
	h=To:Subject:From:Date:From;
	b=B+he9JdKL6AyOl5bZOyxjlAHpKQ4GapRsLxW4PGzV5OpIhT543rl1zycN6he/DSYo
	 55gwj02e57EuqbuKJpo5A5uUHU9E1CAOapjGDX94WVcAQdWI1VveH1zQ/suL+BoL3Q
	 yrmK9d4fjNS31Mm7+fXqnkwVMHGyRG40IwfWQGp7tRReeDRZdroICO+c2G1HGvfon7
	 nEIE9DltQ5zwfxAYyp+UmKk0K/QlCfL5d6UiggkD25NrpgifEwdLTHMqvqrIydiHSc
	 /7KmhGt8L6MLXsgK6ALetjtaeVBPEro5zzL57yRG+zI2TYXk0OkZhKrkwbL7U1dM5G
	 N8edsiK/Xzzvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB35BC2D0A6
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179208723369.10941.18129864646413967623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f309a98de2a97949a05c0218b0d0ea63710324029202746ad833b2843efff1c0
Date: Thu, 15 Oct 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792087233
