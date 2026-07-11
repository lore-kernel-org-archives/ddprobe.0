Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5016F224D6
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 19:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783797514; cv=none; b=Y5l1PfSmJ1zN9vSwEZMT6XebRsD5uwnYuGw8GOX0X0lKkAzGflwIOE0gm7ggn9oziLU1+j60Y0BJxT9yaiJyrBHYjcgY/TPYDihikoWiHjH/2dcdHzXnq/tzQgrwt9S7GW9YmeHLG2FZxo4VSPKkB9XkQlrm2kyLMAq1A4fUweg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783797514; c=relaxed/simple;
	bh=rGiWnXhFBhFUIDlt6rARR4w2yQU73nuI4fEKxDvaunw=;
	h=To:Subject:From:Message-Id:Date; b=UlTAyececiAaH6OS/QWs1mups06L0Ie1wpkdDU5fnt5WwfIipQXbFszID+SuZ1GiCzVpLxn/rwRfoapovnwftP+FRgV079oehP3w2tTqyxJfjqYnrK2vMtI2d4Ekl5DN5v/UDrrKuX6+OhHCPHCYJdeF+F3CGPrcyD9IwWsbVeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c70fTLHH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c70fTLHH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0471C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 19:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783797513;
	bh=rGiWnXhFBhFUIDlt6rARR4w2yQU73nuI4fEKxDvaunw=;
	h=To:Subject:From:Date:From;
	b=c70fTLHHdkYQExROik4akzmObqRg6uZzkLYS3LYwfbyWFzGDNLSujCScpN7sq4LqI
	 haT9mphUT0Pn29Y9GlVbxW5k43k5XJa7Bowz8dXoYwJUF6O3qoVQJg1agR9lhkgScW
	 fcdjpP5CFpoHWHOtE2vYzvGI8mvcNpImf1cuH3cXLSU2Nz1oqASo9ckKuTt3Ik7Wx0
	 Ys+bS7WMV0IJsaLCJIRyjeg38juH9jxua557HZi/Y8zgYKP2nFrJ4kUeC061XEdLY5
	 0znCNhCj9ZihU4v46CxQjjCDWW8L+uETYqCs5H51/sHiVC/sAXz/iQFjr4ZTrqeppb
	 k78vIK6P0aJhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A90AFC43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 19:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178379751368.15152.3214899864140052940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6080f3d4e74227a919388130ce73a2a3437abc0b1f25af8a52eab9018ef9422
Date: Sat, 11 Jul 2026 19:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783797513
