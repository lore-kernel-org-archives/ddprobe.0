Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2295229CEB
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 00:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774140294; cv=none; b=VfBO8Npe5ovvD4xNme64sLP7E7uVLnXUjcIQFYqIb4mBWDwI6m5IVC7YLI6A4cjE0hbOZXz/zwmEWnYF1wVNPuHN8yHs2zoPhYXF8M79UMlK5KRUgaXGa4qh7wN0Yt9PukYxO11OcU9n9FA4F+/TCg6cfCvkeFDxK9dbSiZG/nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774140294; c=relaxed/simple;
	bh=jZnTk1MtWf9eaXWeqRrFaOcQGDuAEDORPQXsFReMeNo=;
	h=To:Subject:From:Message-Id:Date; b=Mcatlo31O0NfRb6LwRn7bNPRp3kk6nNnwpbskYf6WBh9dBP/fDebDm+TONWwFT5opQexSgs99i/TMYDX+JjerAM+br+HZmvmO0z6trC6APub8+4cM/UVjw7V6zp3hVNAsMc+jXlMlOeBjIrumRQ6XI6l3FgvJ1n7gU5Cw6xxHe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oRebZr6e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oRebZr6e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A428FC19421
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 00:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774140293;
	bh=jZnTk1MtWf9eaXWeqRrFaOcQGDuAEDORPQXsFReMeNo=;
	h=To:Subject:From:Date:From;
	b=oRebZr6ekU7xKY26n47sFJZcjnMP3r+PC1PIboZ+cAeEym/a79/NyFUUzAAI8Lljm
	 /7HdtIIC/Bv9Z25jHulGlvdL/eZgl/wSXqKZExR4J9Am32XvJWr6LhwUYBp0xYOHzC
	 K/Y2I14zDYKmRvo4/RI+Rg9NA4VbmvcnvaXnhF30nbOhI0LQ8JrWmvq7/nxTMKiBm4
	 zSGSFZIVJ19d8XZf/vA/elnHtVADgi0BPlDVub8sCByE3NHW7jnJrYbMFfUIhfU/YC
	 /viC2QkBe74to1owZfVImcIPD1yHSm7HOBLpIUNa6HK0gPru3UFvu7HDM9rmB3Hnlz
	 lwNM4pczckalw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B58109448C
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 00:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177414029357.21784.1832106240047376577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71d6ff3024548e47d2cfad73f9c37d37c92c1de4a784e1281050574035a9b679
Date: Sun, 22 Mar 2026 00:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774140293
