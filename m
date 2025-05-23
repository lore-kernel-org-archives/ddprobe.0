Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38121625
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747968594; cv=none; b=NyBmYjPuL8lYtnchbrLd1pXjKKL7D+OK2KXBZ3zR1kh6SoN1O4w0IoH7CNaEb5DSTHEgSxVxis4H8+kafHF3WpZauJib+qjxdKgcT0l0f5n3+zxSBDHFyGbUgFC4lrndCEEwvoDhTy+RGbxOudCduJR/ZUR3J6CzhqngmCvM2eE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747968594; c=relaxed/simple;
	bh=mXs9HaKtFwv9crfrvis7dmy2f811kFs2M2abI2aPOLE=;
	h=To:Subject:From:Message-Id:Date; b=UmjipLN8PXYVdKqpkduhUAKw3dgghQBMI2QgnJ4Jcnen1dY7pv1KNopgCJSf49ErSCy0BtsIWWnv7CjQqvl9LO1yrbRNs0u1U9V+GtBChtX8NOHqYCSUgUUjrp8Yy9tG9pkfZ2cf1z3cpZ9JGychdVCy2edntdjaxYNbQCX9njI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z4UbHoan; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z4UbHoan"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1957C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747968593;
	bh=mXs9HaKtFwv9crfrvis7dmy2f811kFs2M2abI2aPOLE=;
	h=To:Subject:From:Date:From;
	b=Z4UbHoan5uPvPygOsecwgC9Sipe29+elDhlc5aJOi7J7RbI0GAgUmNZqB/1fDT26a
	 AebTthxNRY6lYFkHthy/MM4TMor8wUk1Iul3m9QfLUn11f/+aJ2St7NoOWQW+p40aT
	 2En+x25i+nKLUy5bwfBlXTDmCL+vO7BA5y0yxW3MkgYMs+/89QmtTj9t/1olPOLuwb
	 Q4iye42mtxdN9MGivv2h6Xn2P9y6OYtQm8dxWa2T77wIjY/cGQG43NuxQyIlZuUxJI
	 C8NDaGl8FE1gTIyjcgo6hhimPEvQzMKAiaSODxtOrKzLwN22Z3npe/F4JG/2dy9es7
	 Bbuh5AcyMaHEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECA3C54ED1
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174796859357.2791.14717886066925575113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e3cc1da821251e08ef16e7d5f5324e1d6444c4705996b54413145cbb5bdfd3d
Date: Fri, 23 May 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747968593
