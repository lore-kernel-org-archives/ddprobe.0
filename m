Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E83D1494DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751727594; cv=none; b=CFmdkUQ7JWJGilX13RF4boh+TMWZsQQ7YfdyCE35D/PsiLctNgQdNOgWbnQonce2NhvFFDmqmXWanuQygeM+oVRJhPQsUewmHIOYi66Uj4fRzlXISHYHTr1bEGYAmSn6XFG4SfeLbGFuchbCnkR7SIOPXnI/V78578IdvOSBOS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751727594; c=relaxed/simple;
	bh=rvUFuvCQL46FNbVi4uhwrQwCaNSutWfEoKU0BNixHgI=;
	h=To:Subject:From:Message-Id:Date; b=UlXBxEsAezK++r7MM/MxgrIWge7JS9D5CXhh2DruVfeN636mtoNlxwfwVlgcGt/PD3YXt+30BICOzYt7yrWN2ycKDxIznvoYQ3STGkIfHbZDsVQvFcP7D334qkszEjKNXKez+E11V8XtvgSEswqBapELwmZ8mEmTpkVjlCNBbiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CGrq4rTk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CGrq4rTk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C66C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751727593;
	bh=rvUFuvCQL46FNbVi4uhwrQwCaNSutWfEoKU0BNixHgI=;
	h=To:Subject:From:Date:From;
	b=CGrq4rTk1ErHCZTIRvqeX/6Gru7Ku3+yIGFjNniOVpclav3ufxP3QTtFgQb7Pw9c8
	 yXt6MGwYUAsAWz1fEHvt9hGLrL73uuHrhPFgZf3egx8exuoWQfvVtR+wPJ1Wr4und6
	 /iek2R6LvUfeRXKQi+2x0x3KqyV3ktlf26wiefWJXzB4fj8Ol51rZzgFEDWLj1G9GL
	 y3epeHkhPnTKUAyR4uvsdKUSmwcqFr4J/NyLikM10o6Myb3sEsQZfWsb25MNLaqn5b
	 tOJqgoIj8R0z1HyOMCUKdKSobkJWYeA7OI0X83pFBW5wjjc48MbiYdleeoKhC9uEmq
	 ur1gBDclYeLNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94110C8303C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175172759357.17363.2424871133638981194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5c15c98909bfef27f0997715fc266983afc82e23133caf1c9855d99e3a451e6
Date: Sat, 05 Jul 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751727593
