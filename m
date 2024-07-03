Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EC1C16DEC3
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 14:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720015523; cv=none; b=HC5DUfGzJjugtjep3Es2JFmpO/WV8tjyqjQ/uBEgovl9z7NrauVSa5AuY41C0u3eOceQylhJdK6YecnmLRGDgQYyMLxUzyxLBd8NdYjNDJpfCWGZnC3kKje8kz2XmbjJ7azkDJaIVdJqEM9UmeLhrJR3lljjDjgz/3uraSoKkec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720015523; c=relaxed/simple;
	bh=27UoI/KvnbxQL3iDpnXpj9xhQtD+mfsYMr6vx6KZU68=;
	h=To:Subject:From:Message-Id:Date; b=WUKDDsGsvLI26aUOETrIj4SC4EPdrreNQSDLgWqk9s/CzdAb5MuLrKRDVMsnkG7NIZp4/ijn06EYfuaOl5s1i+EIwan9xr4fecT82rlzs9C7X0e8bb2CXByqM2Ykb9DA6enB2PQAXrYr4eBa8yZX6RNVU7QNZHrimrJl/8kE3uc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NuvJcE38; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NuvJcE38"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3CDFC2BD10
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 14:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720015522;
	bh=27UoI/KvnbxQL3iDpnXpj9xhQtD+mfsYMr6vx6KZU68=;
	h=To:Subject:From:Date:From;
	b=NuvJcE38BiEnHhy06altaAFoaMrcWTU4Sl66xjXQw2U4qLtvQHHbygaWpE/w8hso6
	 SJwuW9hJmkdivfYKfwaRpARVNdL0gwxQhYotkGlFAMzJLykeSPEa5bRn6KGw589aKC
	 Db88TVvcNrqhBKP1Myd2kCin7n50NB0SvUqTouIboUrCWxhLn2s7l/v1zi2oDBXLTv
	 NpmbcCTrKLsgpNKLhAuJcmrIzAHHSS+fvXdPrGvIZXOHtieGid+Ss2d+5N60FvUd1N
	 8MpHnasNXcCK/uNE3vbOfgUX5GquSzHVCXyLq4gnEuoHEtxFxnbPyfqvX1UxBuhLML
	 99eJ/Jcqj8QAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6CB8C2BD09
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 14:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172001552280.9087.18257293423923613768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eacc05d5767882ec3c6288d63637a6d3d6143b4b985b38bc4a4eb0e0ce6f3e44
Date: Wed, 03 Jul 2024 14:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720015522
