Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1265A23D2B2
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 14:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768575234; cv=none; b=ZzYGTXMYZdmYVXk8LyPw/LlqoI6yXFDOy/phF/AWLB5IO7kerv+xMpVi7GhI9XW3mrGdAa+OnuPHwMEDyeIAvdSZbUXfU+w5mEAeHfmr3NrV6eS7bCcd3ijv367qEAf4s5VHmuZYS3iyIJnp8KQAeizX99wgrBbdDTCaWe2tjYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768575234; c=relaxed/simple;
	bh=fy+3mkFjInwPApUrEjGxF+OZhVQ0tq4UZ+/QLTU2jgk=;
	h=To:Subject:From:Message-Id:Date; b=Mr2PmdZAANMIkREFLshaDTaC0uh1c7WrFOKOGXbAgsckScmhgsrXobCEBzMjM7ijWp+byF6Ap/DtTiOyLYLVqpZn3QkQPGf0oWEKEXGFuGFZKsY/5cC3jBLe6vD17gcjJdILCEJLKiB7G7vbcvssYajm+yj93/zlMxa50pGg0Js=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AnO7ZHlR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AnO7ZHlR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE5AC19421
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 14:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768575233;
	bh=fy+3mkFjInwPApUrEjGxF+OZhVQ0tq4UZ+/QLTU2jgk=;
	h=To:Subject:From:Date:From;
	b=AnO7ZHlRrrzXds7g2ghALtZi3z9plw0MsLWxSSoJSZ2lbv7y1VKCQqEKcOgJVhO3x
	 djEcrrwKZRFc0hEf/qH8tywx9qwKj1fHsIqbihEviyY5C3pB9tOR1XEXNp/DebQU5N
	 O69FYknhlgNzTx0Yez1RuPXMK7I/mYMI7aSwtyp0bD0l/I1buXY1zcmhptM0qy7bzY
	 lDOErVTaR2kgJeEL16ORLMrDB6AIr7ImYsj6klTRVRLNcLmfBUl4pNU9X58KEPtA2j
	 H+AmBqlJToDWWBsYI4zlQHeqMhU6WxEVFZwM9+u87xNUTl6bUr9y4CjyDdO+pmgmJu
	 /Ze3LYGr/nkBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B89C982C7
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 14:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176857523358.18781.17939998684657132167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90845da6119a23d6662202239cb2f531b1f265b494f3784dd39d0fcb4570aea7
Date: Fri, 16 Jan 2026 14:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768575233
