Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3530424A7D5
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736964954; cv=none; b=mAfURgYBkxBARCZdIbhcOTVnJCBk/tre0sG+tqs1F0z7z5Oimzw3Lf4DyIqTiqX9e5XMitI1BSXG3qwRUFbAZmYQAIkjjjMD9dA8KddHhgwYDPUr4eTSkMAfSLOPoK8QCv9leAaqtotp5UnfwwlXxkjs2NQ7AKebAeM5LgoB5ME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736964954; c=relaxed/simple;
	bh=bV5dG7K65AVmUFOEJ1nI9TMAnRN6mrMpNLNGm08f4NY=;
	h=To:Subject:From:Message-Id:Date; b=V1TVxvrQcZuZDxNJeAHWWz0jyN/pGKPUpYMAAmIrerf/zerDPAYso3gNUBtKjM9XWje0B5wlZIdRw2V2cNDq+IcjppKzw+pp1GHUDZffXINmex09tbrJtx2sZ9XmxOAo3uqS+sh1VVTpp4T3zc2SOYXDImj3ypW0BeYr6c1gQn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lgWxieUn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lgWxieUn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB1F3C4CED1
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736964953;
	bh=bV5dG7K65AVmUFOEJ1nI9TMAnRN6mrMpNLNGm08f4NY=;
	h=To:Subject:From:Date:From;
	b=lgWxieUnxKNgZiyMwJdXZg2bNZGDL9iYK3L7v5+14JJbTa92wA7rqYXZm8Q9e4nLp
	 LabMYjTZJiBGzBZ/sCYC1zvJX5+7TFXxbdKrv8tQ+DVXrB9CfHBZ9ppTFQiaU3H3Ig
	 SYbmkCwGlshWLCK7tmhUSrn7rQL34oB48RiGhTmzjORb9dNCfJk803g3k+eqpaI8r7
	 LDD6AVDANQvCb0WOY5DtWEnRW3qWPVK+ap1AAiaEwTiqjT/5hqQgDF4D/Sm1S1Ha0O
	 E3YkNFOkHRa9m3nFK7VxvLX4cSWs1upqYguo1Qni2htA0XTwjpkWINOUlrj2g7CkA7
	 u1BsfxsRsk/Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9746EC02180
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173696495361.2846.12792480977109116205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a8cd68d03fc98b42f275e599b3b1d2222f2e71cf6fee6d7327b4682684d1218
Date: Wed, 15 Jan 2025 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736964953
