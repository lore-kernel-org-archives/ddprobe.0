Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D8415D5A1
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724838354; cv=none; b=X00dlpZJyA4+GCQvwkJWyCW6BUkBYVMpYA1JeF3nHkaTcXPEzHbbJ6mbwR0sex+jRpQL+v6VUMKfSglPnMJcNE0Zk+Y9bQ3GJV68vWg92dJQP2sqUsDgNCM1NE+70MV9Vn7DA8i7SPEiRuaXbbouoFQFeXVBu90U98zbyGcsoVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724838354; c=relaxed/simple;
	bh=tWEMi6q2jb8EVdFWDP8bQFN9l0mnibUKyNEHm9KikG0=;
	h=To:Subject:From:Message-Id:Date; b=hquOWT1aN3Jeofe37OYOzXG7DV7JAzoiDef8CJ+XRTDDBeluFXoIXpHMUa1jGtIt+UuPxZcu/+PfQcuscK8oDL42h7ZDll2qAYWLedODuTbUutqzWhTMugoto4Nw9aKJz2inP+IL+S+zUEGQE3pbaVEgVezKYCrUqkt0JXqf6wI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kLPMY7eY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kLPMY7eY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A766FC8B438
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724838353;
	bh=tWEMi6q2jb8EVdFWDP8bQFN9l0mnibUKyNEHm9KikG0=;
	h=To:Subject:From:Date:From;
	b=kLPMY7eYzMRjPuXkJRvSEyXvA2a1bz0oFUjZsNjtTHXXQVpkgxPz8ABlJnxu7cjSI
	 VanEy0T3ysDl51MDbIRuByCJlK3Mx0rHRZTwBaS+xfTy62dCEfYe8TaFLNYeJQzltS
	 g+/Wi6mr4flOY7h0d26U11ka2gghNUfWe4aS7Z13C6ab9REFM4x6HzEoRWwvLs4VIm
	 /9DlrMh0H1zTRjfKizC/b/C4i+bZrMPr8dhdatwOPGmG9F59gJKdiMVz9R19j6QLiy
	 0VvBnp2Wc6kV8OKfjqufrfzO2KJ5QzdHQr3u2LHgsCGZ4G93MC89uHfnoDcsMJgfPF
	 dDsR3HNqa54PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9396DC54799
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172483835359.25976.17104286585294878436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba22f8b24cf8d3a71c8d3d4ca2014ebf22d0e46e492c01632c7ee07ce9a2cc0f
Date: Wed, 28 Aug 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724838353
