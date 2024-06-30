Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 728AF200C1
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 15:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719760463; cv=none; b=PHwDtKvU5ZnOmJdMdLN6xrAuKwAOqIrcx1bhQ920wMqELFX86Voj3s3Oslyn6k3QqE/a33AmIyKQ3cHq+Ddh0CMFScp/LjuXCXOKHhJm//DYCrlnbHkxgnm0AsQtsK9e36wuZJrZ18VO+jdcA1MVItDSxd4Wxnc7rgf/YuLPgMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719760463; c=relaxed/simple;
	bh=OCZAapaHJ8SEgnirj/TTC5Uzo43iwOI5Wo/SlDzFx/w=;
	h=To:Subject:From:Message-Id:Date; b=oNOhgrlWTtZ/j+eTLDaGs0ISgsDZi9j5lN2tzONSrQJtw2kcsneHeFfa1Su5TKAnjVr2/AsyWSH8/QxxWePafHwEYSig3ZEsqAgdvlKzuOHp+S5OXED61iSBjbsG3silO2NBb/al57oT/p2yJ6h///WnoplGLeO+tjQmd8Sy/rk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sde733B/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sde733B/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E343DC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 15:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719760462;
	bh=OCZAapaHJ8SEgnirj/TTC5Uzo43iwOI5Wo/SlDzFx/w=;
	h=To:Subject:From:Date:From;
	b=Sde733B/rOAnMlSbVNNUH/UcVxPKb7bjV9aDacY2N9bqOJ/BDY90HmQt3dt60B+EK
	 aFEOwTZTqYp6rVr06tUwH5L/IqnLFuQXYG5HQ3fKf0VUauekit7trhNfUIM2WX5D8+
	 nI/64yX38b9XPDk2sRCWqtEoZ8TLt4sX2IGfYmH4MULwUEuBBkDHFJcika8LM1DDya
	 fIBgXF4Ty4Y2ouuLhxglhEyKlmjlhB6WAk06zNu/uHGMdqndfLXG2oM0Wzm5e0oZUC
	 QVlIq1Az6z6wbxPePZZsI2kqm0iPfwS2QJ+xtuELbceHwL5oig4LeB86NDULIG4dl+
	 cWJJlh+MO6fKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D07B6C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 15:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171976046284.20457.15400192457661759739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3728e46d31c8f897ffcfbd891e9858c2f823ced6ee03b63cb3b02f4d571c09fe
Date: Sun, 30 Jun 2024 15:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719760462
