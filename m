Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F714361950
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788758434; cv=none; b=QGMFj9BWstSOckPnli9r+w/V8zGnDXZjSD0QRhlOcpxaLYtV3SwcXxccet5AHSDSAxorIXm7p00PKmVz/ch1g91RvZF16god6KBY05UhgO633pEq2weSDvE371LdTFkCXgEbIRfIAfY/FufYDw4uu0CL+W9cK9GERDthfpvuSrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788758434; c=relaxed/simple;
	bh=jXPI3etZNggZu8Alx3JF5/lyqCD2h1M0buN9GZOPSCQ=;
	h=To:Subject:From:Message-Id:Date; b=IVVFcfpr9DxFZcZZ8RxWQsLmnKsVQy6ZP6+cS9ZBWhA4NEJlnWtCs9koRwJXa6SiXYgPUwCPF2nAJDzkjwW8DFcbnrQwblefKeJT/GJInH77sTgeTphXJjoZKb+q0I2KRPFgSBxycm5TiDdBiquDqsP+1KZfn8XVpzFUCCs5Ga0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nWxn2Z2H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nWxn2Z2H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA8EBC2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788758433;
	bh=jXPI3etZNggZu8Alx3JF5/lyqCD2h1M0buN9GZOPSCQ=;
	h=To:Subject:From:Date:From;
	b=nWxn2Z2HNFnAbw4OdWXHnJexzj/Y8AsPPEX7UMAcRv79D3oMaqwiZuyCyfUIyBftf
	 i2C/423vP7xRUfR7pZbQjKMet5nNwPfn1MRXKzudB4fc0G50Da1hhUK4qZZTT8HRj5
	 Cx26nXGOI5sNFs9TYIbPYdzrlo9z33F8E898wyfPynMgyenQ7LRAFTB0nVSUt+2Wn0
	 iWAXNONjG31+MtzX8xdKXnFJ7gboS0oGm+ae+gLHXf74NNycIZfZWsw4toEjjp4dLu
	 87HoCWyQyQdutzICUAgXNfx16TGGhcmyZxBmXhI47KEgHWOsRZ93zwS50qC9KpSguE
	 /HuRGN7PxsBjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7527C79F89
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178875843373.11839.5834124903804919221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b096ba2b6c3f3001a3d5fc65eb38464046d72fc31307fae0843ad0a07364aa86
Date: Mon, 07 Sep 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788758433
