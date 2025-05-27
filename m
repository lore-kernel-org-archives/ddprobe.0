Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFF6B27CCF0
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748368194; cv=none; b=rErh0nwNZzl/5+3z9ZNfqus5z65p4i6UyR1Mv216V9kjk2fzsFjxsaG8FgqfMYt06gjngc1FaLmVT6wHZR7qgwEUJUdlpnEJ5rMeACXk68eTGVzhblk5EshLQfhzci7lokMR9g8LsUhnzXtzBJ8Vf8JRIfRnaNEAGm10EEPkk6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748368194; c=relaxed/simple;
	bh=e0ovGdcKgaX//KW6rhpMzGbVXvbf0LvaNH8ziuigRsg=;
	h=To:Subject:From:Message-Id:Date; b=R20SZ207Ga8EJSOsBliwOjrBAT/A/lyHgIJTkv1nmLyBaJ9Quc2a1I4lxL/g+sTb8rIMr8Wwr8lhu8RbbDxzlzS7IUoTF/5SGXHjm0C3/lSwPNW8mXEeSzCfA0g+UB/w/ZNIpNNjmkC7F7rfSATsPwC5wnGkWokMFjXyKMLsMyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IJFi7JvG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IJFi7JvG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1056C4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748368193;
	bh=e0ovGdcKgaX//KW6rhpMzGbVXvbf0LvaNH8ziuigRsg=;
	h=To:Subject:From:Date:From;
	b=IJFi7JvGuMQwg10Z4MA+YzzKK2klQr0o8P3h3LOxxU6+GFNfXZeRmep9qHqMFUiGa
	 7OsvP7/1AhhZJSIXXJhYi28LqflmZXmYoBE7KMylhRapQ/e5SlVwkEULx1ioc+8DXM
	 m1A0OCxY21poAAlaMqegHsgpF/BQeSWtrHEUwNn2C50nx4+zAL4GegLBayNsMg7MkM
	 Cnmi/15r5VVgtm0O2w3mk+y31EnjV76cJP9n2qwjN5t9V+docuNEwVXXUN/8HTjaeW
	 3vzAE3nYWoffuh61tTFQhZBqPj6mBt265/1+HtQaz2/3ZRxAC2+QWABsGDmnURI5hR
	 3/uXwfCeHxCIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9139FC54ED1
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174836819358.693.15291445988522811104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cbcbe54ce941a8a4e99d81e35098a71b38b381e350ae793b235d433ad2a60f7
Date: Tue, 27 May 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748368193
