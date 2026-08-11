Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C7BB35DA6E
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 07:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786433434; cv=none; b=nuo2iwRD1NKV+zUPygmikUEln5QQJGp33NPCAhPk+WTSOCiI0zpGhP2kfa6TD2dIhy0fLB5kbGLWWXwype1CvN2SyzUGUSonu/MirH4/sLfqJ4odX+05HPXNNTriS/gDqCUwc3EJPDtzYKi/odzZi15u4Id7c1TOC989W6XyBE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786433434; c=relaxed/simple;
	bh=2hS675UgYq+jWulOVrNeYpwvGJTH9m8lVYgmP3k2stA=;
	h=To:Subject:From:Message-Id:Date; b=Co/YihsQ0Dywu9NGAkbtwMioAAYnEBzERXYdE99PlsJADsJzx6tKVnf/em21bz5HQJf2pCzqkuEK27aROTh7kw767rbTfQvV6SJ6kDBTmKoacNT7p+zVHMrq9LFw14cWHsHLBT8+wRpCwDg8O2x0XqEJ5hUQzBic/F50EWP/kAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WxnalMNY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WxnalMNY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9774C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786433433;
	bh=2hS675UgYq+jWulOVrNeYpwvGJTH9m8lVYgmP3k2stA=;
	h=To:Subject:From:Date:From;
	b=WxnalMNYhSHhPAQ2BXfvylBcHdEzjcggyYqJPihHegCFE1cVdZhGagZf+ppiL2inm
	 KWAoyQqCgRsRl2mgHtCN63U9G43DjsTTB2jq/zf92NmAxyS5lycIPCkoK2RjrpFkxp
	 NK7N2MiZeqdKGR1BRheGVa1474ZqK0DDCpQ8UjYESZX+/oVuCEH1lXOKf2+ZsFZpsh
	 rMVeWK+Eqh1ldK4I2VmZCCb6EFi2hLM7WOVlkGlpwL7scnfHg7SLErGR+7M7ZrrTBU
	 L7lxwgnSxf3kogKvtQCIfovSFRGxwpGDbh5N/kDHxeOymZ88gYzP/yT0PeRzxQj86N
	 Aw6S6ShQmKnsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7FDBC5B56D
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178643343368.16204.215061062491031215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7690ecb55ff199aaa58e2e5afcf0aa165462921d3046b939b1d1b35484283506
Date: Tue, 11 Aug 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786433433
