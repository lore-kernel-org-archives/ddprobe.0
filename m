Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12029351C0B
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789425034; cv=none; b=qSgdB2MvJP5nbYvs69ENPn2OmuWDrTRGvWc1MaMC6Mb5R063fCRYmgyGNvOJ2qHQ6heA86ykiYC6n8bw6SZtIubAiQ8BumGTaNZBD3PA/Cf2K+yjakpa6Va1gfSLMc2gE45G/aT+kjJRcn1RnhAwl3blGRKj0J389iMSyb4jg0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789425034; c=relaxed/simple;
	bh=Hl/6AtcQrr2ugJAy0t1kAuqdxFVU9p8By0+PnC2SVFk=;
	h=To:Subject:From:Message-Id:Date; b=K91RwDNLeG7cFBMJGCCpnjJr6FonRzs0F28BVCNjfybjqnp2NNrcbThsdk+gDD3WAjrnh7acSXrz6aouTsbhkFb1Lx34aVOSa3ffXCUxBz7/Ek5UA40hJ1F05rLVrmFsqOyh7dq4DjE3DFkHy/9L88LhlPCpUeWLKsHfocRcchE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fIlO+5ex; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fIlO+5ex"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDEBAC2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789425033;
	bh=Hl/6AtcQrr2ugJAy0t1kAuqdxFVU9p8By0+PnC2SVFk=;
	h=To:Subject:From:Date:From;
	b=fIlO+5ex6f5qL6HI5IXbdawcc5gbFEazROdaAkGFwBYUbpjIW4VtdTktlS0T84RR2
	 7fD3MQlpgm48DWU7bWiY4RcCV55tolc84BIYhE5SXrsek3STDUTagb6V8DJCG/1yvj
	 4+3aWwSpZpp7vthJ8KiQmRHTy1BgTFpTgGkJi0tIVhJ+7Xl+DqS98i713ywRGar6uO
	 zQZzrRqWiDvCKQfDFvBxeL0PCcULjJVwLmm88hBqPUvL3gDeDANqzCkK7d3PSX3VW9
	 xA0TN6NeBFeUUX63s3bbCx4ntYYdO+QYRyYpMwH27c+3vZs92H4PqC18Niyg/lY2Oo
	 /dm00QNWpH6lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB74FC88E72
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178942503369.5582.14336079676156057175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7acbb94694ce4ff3a6851e071099d03b490b5ff3a0b10b18cff383a108c57df7
Date: Mon, 14 Sep 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789425033
