Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4430A7E8
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 10:45:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721299523; cv=none; b=UVWCVjiaapEBtiG54Xx2EkBdeXQa7sB0iOT54bKssCZY7WXyNn+tCfNVyIdQgvrohIOklrIDJLqNMdXtPo92wC6DSN3Hm6LLCKC6y7I8CcLi8fqNQ2EdbvbRfbbWK/LSfW9gq8d47j68MWDh3BAYyysvubcXS0wK74CMBkDQpWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721299523; c=relaxed/simple;
	bh=33OIJFojHgKj2KAYWa9Z9YFCh/gFmKXxLcOjqbwb94s=;
	h=To:Subject:From:Message-Id:Date; b=usldlIBHsmOQuEonXDBdUnQXyXakqJjQ/gLl+aWpcgcA5cSUTczAnoNSLXSpoVF/VSBJBIJHwdSEkwWy2iCe9JnH2r2Yqqziq9lj1xlrTGRkAyttPfDGe4hAiJ2xrNjp2bvye44GLc36zdBZVrM1SWbuI9gqs1QHytXWeZrrk4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HAOfoALb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HAOfoALb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4561C116B1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 10:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721299522;
	bh=33OIJFojHgKj2KAYWa9Z9YFCh/gFmKXxLcOjqbwb94s=;
	h=To:Subject:From:Date:From;
	b=HAOfoALbrsPDVWeuxWzaynRaCjg/n818U0LNnsHhgJu9LXRLn7/hHqtxaPqDqj6Ag
	 9k+Cyr2s2iKABQ8b8eanwRbIcEbY6Fd0mJ0QdqPZQb7NiWfWgJNa6jvoQVvDMgJByk
	 XkmykWkt16tbXfqAo6c4O5u/HXDw0CJ9gAOHXlgvmiyVIFEk4uGIbBsVfNht+kkgJI
	 2POrt8Gkry5OXbHrNZFWpZlj1r//38cC7pHbmLkOxLGlTnUnh9VllIIOQ6Jr+A+sFO
	 rpB4QkLxl9toEU8+Avf/BRVZ7h1hdERzO8IdtxY0SfkmCDfeAok7BW3KloMzHHjnsC
	 P1Hfjwsb2xyzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE775C3DA60
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 10:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172129952277.4127.5330045132393857989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76dd47b7264c1dc48abe224118f3d47b29c47d470d3ac4d26eac3565fa02f4b3
Date: Thu, 18 Jul 2024 10:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721299522
