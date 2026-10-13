Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7048953C3C0
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791918034; cv=none; b=HTrIuZUmwlFrUjDDr3Sxy9d9hGgkPBysQ0makRBxzrt44iBWGF4LzPJY8vX6yWD+qBS7T3sLAwQKJjLsoUkRP6sQ0bAtFjwvHONmlEncAaN07nQ/ypjyWlNO8dClcKkb56NXZs5Um+GwNG4ERhAwxDxPm6Ouq69aNx7TQfHvFrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791918034; c=relaxed/simple;
	bh=ls70cc6MGrTc+C+AfP1s+PG1pOUUTYpslmp7m1RgQPk=;
	h=To:Subject:From:Message-Id:Date; b=tToEy0fsbnA1c7NgpnFp/ZDxxDy0FfkdK2EgHAWiK+5BTMr48oC+KO9ZKhhdRAW9f5m6dQD13F3alOl5tDkvXxju89J+5VgA6zsQ27dM//lLhYZ2BoY+Vmv1MhpFXzGF2hfcrw1+pHXzykE9qdcJvsC8b8kcxcMfzGjN5IlT0+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=paPfqFGU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="paPfqFGU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE48DC2BCFA
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791918033;
	bh=ls70cc6MGrTc+C+AfP1s+PG1pOUUTYpslmp7m1RgQPk=;
	h=To:Subject:From:Date:From;
	b=paPfqFGUZWYRaEuyjw08jh8hNMdckjTFL2IWWnib+e/EuAtuvsS2czmOYrcASLdMp
	 M01aQrZcK4bRqbzudLUSxgqHO3vliGPSIry5eMlK6KFr0vrRVXNUvQE/gLV7goyVmt
	 uZjLmFwVsmg1EQZ9CvOmreDC2kUeGmpNRjQ99ZjN4n2WIPxDmSXeu6mho8sy06ROup
	 6yDzlHo6GOrYlgJdOsNEiDnpNkgrmOQkyfkmo+w3MTnOrp91xrzYfaQuBo8F1Qh3nS
	 jULElwqA+l3eesaZLMuX+i5Jj78+UrsCHE9xrqG81N0yi3aT6Jxo4TkfCOl+hWacQM
	 CtxEq2gWTWjgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9BEECC6B1A
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179191803374.30690.15253455648090026353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7540bd42f979686df6e80688a057c58872b970d71b965f979d3ac102bc2b17c
Date: Tue, 13 Oct 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791918033
