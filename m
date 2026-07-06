Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3AC53EB7E5
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 06:38:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783319918; cv=none; b=BV5M9zyfDfjTBBBEgFaCa50V1L+wp6QhdLs28RL76UzxSHJOI/3EFr54FdW6da/YOVlxMOZCPQ/fkcFj+Ru31yzciTmgQlaG2U2Sgq5Pwf+KywSL7dqxbed2Ls9X8bDByz/cnwcG3renf5lL4C7TJfotvbKTvXg7ozi0RB2BkFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783319918; c=relaxed/simple;
	bh=0PSg5XUkXLzZqnWdzLp2VOW+wbB1SHwHJkaNPYfTJQ0=;
	h=To:Subject:From:Message-Id:Date; b=awXS+ADgXhpDIPGoKgUJSz//gjqr2NJaeky1s3wiHYn9Sx39rvrPRb3N2MH2O46S37mD1j6Ux63YG/Vjw3dUCW9ffAmjYx/04cSBpKHhTFiLnh28OBgZGBW366JYxkpay3N/fOGOkW8t902MKk2W/gpBVbOOVWdUbmhlAQGUElQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jPU4jjKs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jPU4jjKs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7817C2BCC6
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 06:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783319913;
	bh=0PSg5XUkXLzZqnWdzLp2VOW+wbB1SHwHJkaNPYfTJQ0=;
	h=To:Subject:From:Date:From;
	b=jPU4jjKsZ88BR0Zwia/vpieF/MCcy3JbtgfVj+WSzi5nLybvWDgdBXdNDeBMM7hDm
	 TWOUqdmIH8R8ylAY4JT5HnMK5orZHaM9yp0+LCHeWQqN3g+bPgR8SEyr5whG4+tlVr
	 hnXSKkfWS4NuINvY8HHXZwEgiCW9YQk6yZ6gnzBdTPpz6ZBo1WqEIsUv0UdesY7uB9
	 fyq7kzynI63KHfdoN6tPP1MD2+uhLERFNvCIMeBu7679EB35+GacxyUK1UCLKC8qrd
	 5+GYSRJRIcJFOncdfJLDbdBCO+UnmKfe5tNjHZm5pWZtqbuavYDVe+XyNPnWqG2SMZ
	 NSha4fKryY2QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A81A1C44500
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 06:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178331991368.4112.14114945735393368442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d25732ca233427075111b2caed54ecc5b87ead03efc21a778ceffa6879ed0b4
Date: Mon, 06 Jul 2026 06:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783319913
