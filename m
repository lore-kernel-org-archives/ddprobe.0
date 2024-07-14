Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 552DB25774
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 17:00:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720976423; cv=none; b=ak+TIg4SAuzqfOSUXiltwIOZxh/bmrdy8AwjniBw7B8yyArb3WImz0a9PryNVrlzdoPvaw6w8/HM9N3ilhi0m29IpqW+CvI30CVlhKbUzZoLXbH+it3Rp2Iu6BOlAGi++8EmN335O40NL8lrTjAHNXXF4M41Av4+0WRRN64nzYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720976423; c=relaxed/simple;
	bh=CQqHvPp5ytVYxIi5oZCWQqxnh8UraO/QV2WFV29KGkY=;
	h=To:Subject:From:Message-Id:Date; b=qz2FuNF7doJbUIK1idw9h17xMxYGaH7dmR/v87zdN2OrP3c4okW2XZ6JDgl8ZQoSYUYntmvKvB1Nfu93yZuuQvqA1kQNviRRLufTU5ovamm//uqXOmUAA3ygo0FxXl6GJpNPQ0RcUsKYDivJP5rQ8MpJsbw2WHoY6eqWmjdxZlk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GXzxJpMW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GXzxJpMW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA9B2C4AF09
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 17:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720976422;
	bh=CQqHvPp5ytVYxIi5oZCWQqxnh8UraO/QV2WFV29KGkY=;
	h=To:Subject:From:Date:From;
	b=GXzxJpMWDcWwmGjGYWhcpiLLzKCjRK6H8A/XlfvpnV47t0uPYsVADqvvbyZHvzyXi
	 Nxd53FpvwrJECIAjiCM2/WyvAt+RuSBrNLVycwXEbP1vNvVasGsyBip6Pjd55WMsMX
	 fACMP1koLJ/MxJ8YEmvozzvvgRkFwZjDIJMxOodgbvQbaOUAnUaatqmFHCvZ0T120R
	 UmVlLN2xckwjrifjhh71M3z5TSPHe6QGDjUHwVTy5RB2CcCwRyQOdQlByc7QKkvGx/
	 rPX9rKyyR3UJ03wdGG5YPTpFIFrv6DYvz1605Grb6jLdGMKn5UCNVMeZpG6LN+rm3/
	 kAYTrZxCTLzUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC43FC3DA42
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 17:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172097642276.11896.2375383076963540012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3424090cc47f39f4234216d86ab7983091e905877a968218bb5fd708f04f407d
Date: Sun, 14 Jul 2024 17:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720976422
