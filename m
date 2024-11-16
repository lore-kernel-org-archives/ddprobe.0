Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4749B4400
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731716754; cv=none; b=CW41DF38Y9JsWeM9jvoUjQHRk0CrEU6IPnB6NFBq9xO/eeshPyb59I/bPYZywqg4SLWDkiMe9krb7eBMoJAVXhCiYPkWfb3SZtzPcuTXExUKoVqDT289nSOzZxWjFAhjAfjedqCz3bbj2EB6k3IHTPk9R+5P1jaaNJsTKGfio2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731716754; c=relaxed/simple;
	bh=xzFfcTkZ3axixmy2bacjkDHDTeXSxRAtZmTDC9dPw+0=;
	h=To:Subject:From:Message-Id:Date; b=KEZ5OAp4UMiOW6BXyJ8zYHBSobCbD6qZZ5VAt/5SlyFC22qr0Qlv4OippfFUrxboDjHGst+k7XNw/lpWC2xOLcSXNZrxmQk7PqUKrbzot4e9FNqTkUPSeHMRKCga4lnf1XeNVt0p5/owdiCRW647uOuEHUfq5W7TUOTDya5f2cw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cqpy4YHY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cqpy4YHY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C19A9C4CECF
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731716753;
	bh=xzFfcTkZ3axixmy2bacjkDHDTeXSxRAtZmTDC9dPw+0=;
	h=To:Subject:From:Date:From;
	b=cqpy4YHYO1cijMqMBHQd3nlFN7KkbMbMUsHTlaEOkcDNmUYsURucXJ3e5duHtxVQZ
	 jXc/5Cy6wAhhMKbBeemtqlYmNL49KukxyXer3DgIFY5l2orwoeE5paGvZcyG4iBtsg
	 y9Uhe/1mFR5LS6yyq7ODmmK2EZ5/qj7iFeP65hMYzZUChJYVTXR8dT853sgvZmlSAA
	 VtcSOXcEufHL51iFGroNwdYyj0apFpxp9ymiKJ66CCE6LHEJQqzr/1Qvf7EmUUvaI4
	 /h9Sn3ZuQV0mbSeYsKyRGwei6LIXwa3bH8K+CxeTkYEOH3tXFnyUiWlAePgyr2qPjn
	 uYgOonqcA2pjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1E5ED68BDD
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173171675363.10812.11267024993261160560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b10e0cace4460afb3e3a5ab634fc7a01d622cd1a0964c5c99cb40f0d45fc5339
Date: Sat, 16 Nov 2024 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731716753
