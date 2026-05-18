Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E6C340584E
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 13:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779112234; cv=none; b=TKY6gYvp7JLvL4E29ALTSVuA3hi4NSbHXP0SIwdZcRUQTghLeVaHrLrv2txKspzWY09Ecwgwa4JxjFaGirLdaUesRM5OOIL4bf7LDoaU1G0dbpANHOBVJb/nDN6YoLjjvVqCn579LdUPrc5W8wcuy6MJOXsC4CxHz4TNSavI/7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779112234; c=relaxed/simple;
	bh=Loe0ZdG99CJR5KdlBvG/mBc8mESuYS+lYjRv4WgUZL0=;
	h=To:Subject:From:Message-Id:Date; b=Q/lOY2MYKwvBaVz6V1RQZtj9GTEAMGZSk94hD56HWuuw0NpK2WJAwHs/sQN9zb5wWPoXbtvvgIeefwTz4JVi0CVan2XDwoH4Zwn9YKi/0ByEAbw4GVCz6cHVq0RtBzRzNgO3+TCCVymcu5gXd0vW8RBehU8uzXkemGQNxCcUhEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G4KBnjCX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G4KBnjCX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9B8CC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779112233;
	bh=Loe0ZdG99CJR5KdlBvG/mBc8mESuYS+lYjRv4WgUZL0=;
	h=To:Subject:From:Date:From;
	b=G4KBnjCXnB0U1jDonCxLljpGPKxFfcU2oa8dtJm52k989XqpScBC1WQ0d8mAzEVfQ
	 HPtyjh3koliQi/TkV9qrhvgX85QL0chUoXXAlaKTbe03KLxDigz+oeYbuIbume3/KM
	 Ye5TGR3guCTK83tQlZOZmS9SUuecavGgxO/4TPGdbto53Yjp//i6jtu/TvoRJqnyF6
	 5bpd9RYGb5eyRQwpBd9Mtqx9f0UuyCNeRt8x8CjMBVsIL3dd4hx+F8tFU/H8k/AqJr
	 GxkpZf3g02yoZLgSWdV8I8yHWXRqzVsOUaJhK8dJa2GgO37b0ZBEBVp4ut7ws3+h+D
	 N54XmQweBPDaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEE3CD4F3C
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177911223369.27703.13575679240901857160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fb3ad057806d8da397a7c5e7a9f48c2e784557f5c85722068c743f45b2f06ef
Date: Mon, 18 May 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779112233
