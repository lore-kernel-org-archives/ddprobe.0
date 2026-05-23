Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E418223DCE
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 15:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779550954; cv=none; b=bB7i76FWyNx29/9DWfjC6UFJdqtBWUnZszkiItmaM8EOt1hcTbnRok0n4NpwsW+FABI2OaXfsAFkuPt9vYzaGDiPuwukMtUa7Tqdc2x2XR5TzBb9LKKnVu1OG1dcFLs7mzP4ZQnsh3oXJeN6ryYtL6CTd+sZb+VhJv+ZQW6bFfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779550954; c=relaxed/simple;
	bh=tSohcEMJweQnlfkxotnNKi3WzJU5gALUT3WW3ZX6cJA=;
	h=To:Subject:From:Message-Id:Date; b=gMyA/wfqCra1e3aTAr5o6BVnSZeEF6r67IKzDa2KVx+PkBPAKj3VtIHGicTcJLP6US6vXFupL06fYTosQzxk9e+4gUjsVgNhty5WU39o+eSy2jdlrB8e1x5AG9G5fn2FbkfvC10SaVY6mQeYis0V3jUNFMTElYci+NOoEYb1rgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d4aaXDnK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d4aaXDnK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C02C8C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 15:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779550953;
	bh=tSohcEMJweQnlfkxotnNKi3WzJU5gALUT3WW3ZX6cJA=;
	h=To:Subject:From:Date:From;
	b=d4aaXDnK1glJb2AWC2TPCBVgJ4mNgzSjAiwbcJ3mj0oicJTDhN5Z19m1b479TYAzw
	 k2ksVtSCSJItrbwQm8tAMENa0LPLJyOcjsebhMbWVwWemmenIXc+kLIl+GWiB1PLfy
	 +UvfGX4B0ljXiCo/jQgZG1uuwXsSbpjl/ML97Z/aOhJrlC+xO1g0DUL9gSNju3olNq
	 s5Pbbs/b4LJq7FTBcbvySiS36NMufULKhkDDVzyvWZRE4FtZ/vtc99VdyfW3XCkLJc
	 WlngFv8isqsthEk8QXdHgvfLS/dm6Oz1tbq4JwGHIvSIGPrBui4wxDkQH/61zJxXc/
	 2P5XVqi5BV1cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C70CD5BB8
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 15:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177955095368.20245.10268626688082184757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c880f89e72af54bbb851afb2ac037435df67a95596d6e385ba09a39fdd11e5e
Date: Sat, 23 May 2026 15:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779550953
