Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C4927FD4B
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 05:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771651494; cv=none; b=gqjTaDTyv9Xja1JulpZbfWUD5heuSjuOqP+P3HyGdotQIvVhA704eHAbzSkV1Otxq6IcU3O9l6TmL2npitMbGbLGy058qZQ1NIYTY94seRPBZDeO3gzaiRLh7KTxdi2oKOHkuuhznrbLSCIsa9eEb0H9zTyx8t/SPSQPWtQIPds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771651494; c=relaxed/simple;
	bh=6mvc0qe0EQuziXOag0gRVnPVGvgaBiMO1dSTwomDRdY=;
	h=To:Subject:From:Message-Id:Date; b=qEI7AdgPpO9dhPfWW0L5ZOjMqdKbnELYyxKBfqQHEsQ01yLdoAh0JACzo/cNY+NV7TyNQ6QlY4vcLwGGkc4Rk1uCkgfbjeM2DG9t4X20aIJafIL+EkQYiHGVzP4s24toVpY/63/iMfOAiodpqhM24c3fwgREDF4cSpGTRMlJMtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JV8Nhqqu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JV8Nhqqu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6CE3C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 05:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771651493;
	bh=6mvc0qe0EQuziXOag0gRVnPVGvgaBiMO1dSTwomDRdY=;
	h=To:Subject:From:Date:From;
	b=JV8NhqquLS1poPZ5D9DkQlL8Dg4jPtjNsCrIJDXv4EZPullhOQ+eo0r+iVztHI6gy
	 lxhxuVw4/NRG/yOxgpkIV6Q/iIzytq6dUN/buxq+TDPI0ExUvQDZLqUo6ZqOyfDwCG
	 qoYlGtGTzgGMW1aZ4VfDj3AaGD09eRY4rn1N4+BpKjBTcycq+RUZpp3FfBeG0ICAxJ
	 5tUVfJvZCPO0uZvcLw1Gg8+13sShvphy94mHw89Dbi+fvmTubIOjc5LrFp0T40EL42
	 1DRZtF056Y5J6fqFqSOXgAUqiFfutIbUkrYg/HYnA6qUfg1JUY72i1lQ9NlLumspgG
	 PNdoUYrq59gww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3A0DC61DBD
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 05:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177165149359.23943.6850956718313222297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3db7692822499466aab10c69cf9b86bcaba1912d5c11c20da3eb856a9035b950
Date: Sat, 21 Feb 2026 05:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771651493
