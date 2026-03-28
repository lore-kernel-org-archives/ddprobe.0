Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22AB12DBF75
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 09:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774689894; cv=none; b=ECwlUl86th3pOlg3EhxPymGoqlU1omxqtfxQjeRjuosiHXIUneWsdoERxjGqMOBld6lQLIiH9irljR/qCwnRXKiGDTwdxzPoCyIKZc5TmxHTa0VCs9TjhxmuuMTdLEBsoOjhSN1iTALE6jGqF9xrNLu1yZHZleWkf3MMZQ5RNEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774689894; c=relaxed/simple;
	bh=9ABuypyR3uC9qCamzh+sb8tGzmHVmTcD2w05dcqs0gc=;
	h=To:Subject:From:Message-Id:Date; b=g7w4HJExwDEeBG3WLgkGxsgS+gsSn2UrWbOkiX/5LU0ri0m9evd9tqEvzJlexfihuPFt4diHJ52W9ITvDzJzHbvTHecqbT4y31EA+PuJ8T6+JzRKIEIRnCcj8hvvJDBO1oyjnKfzOv5stz1A8Yg+7U6dGwA7bQNKlxLhe+Kl0+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A2qmph6i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A2qmph6i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCF0FC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 09:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774689893;
	bh=9ABuypyR3uC9qCamzh+sb8tGzmHVmTcD2w05dcqs0gc=;
	h=To:Subject:From:Date:From;
	b=A2qmph6iE6tMsJSxnBos626u1rxvyhuXPDtK3UWuAui817TOYR40usmyFKPtLmsWv
	 fSyscn8c4jPk5+t/du2v8rLquY7fiA+vR1IF2EdHhIxeuLxtAxqugby9R1p6mbY5yG
	 0hqz2dul3kN0g7IJ6ODuC6u4NsFC9ViaWYVs2VZMv6wEKOkt2pnfLqjDxku6VZTqEI
	 DsgiDN8hamILMVQLv1VUiRVpXeIgTm4KDvnQgZf6zCCApnS+3c0JrDwjeeTxXnmngA
	 6ZW2ZD2vuJgur+40zXoRisnPZ0bnTJ/77RlKS4jF9oBgSKDNkZzC/kgkCseg9+hgJ9
	 Dhu6IT48OvvwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1ED410BA421
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 09:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177468989363.1302.11482902767864502070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44ef48012d81f4f9973f2ef456dc72166d97c83321492054ebc436b0995276b6
Date: Sat, 28 Mar 2026 09:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774689893
