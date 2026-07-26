Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 638CF27FD75
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785072034; cv=none; b=cnvpYRbRIP6JRwxK9tDwL8e84CZzAmiVml3C/eXTX2FF56FxKCguCPBn/QwHVf1VFGgjotBVJ0dznTbLv1mOhsk2L3ycodiCO0MjwVANSXpTbGxFH/M8j8iu73zuhPYE7SlEc7WHbJeTFneTvrr7XcjAV8L/6+pyuhTMpdUc3LY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785072034; c=relaxed/simple;
	bh=onYSkmcLed313n+/WF2IXtxhmHRlz/KuAu1IVfIOses=;
	h=To:Subject:From:Message-Id:Date; b=DR3IMMyb3bGGNnsiJsYj5jAUjOgWEXgNTeB//ppvb4byA/wqx9sbsi+68GGJ6FZEVKGcXRJoari9bXvQ+u2h+hiN9ZMRYpKtREQ2MAaVtkvaH6JWmWjDY7kp+K/tY5UNnQ82tEnZjjjnF+IFY/NsdX7qDW/dghQK/PKbaS3oKHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rK0Syo03; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rK0Syo03"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D30D1C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785072033;
	bh=onYSkmcLed313n+/WF2IXtxhmHRlz/KuAu1IVfIOses=;
	h=To:Subject:From:Date:From;
	b=rK0Syo03gqcjqkTRyMIy4sliqQAC1mYVOcilbzlNXRgSTyeNWbSnrCEbUXLt2fscE
	 fMUu5aEVZRoEbbjnkeU9zqeNzAYplu5Cah8HKv8nhAWr5PN/QGHAGxSbJXKyHggp/s
	 lr75pHhU9z8GX1KYATw9qZu+Fqo3lOvd6GasEJ1b8OJyD6B4U6ehX/0mUTFL1hc7t6
	 15aR58aSxb7r48+hf4dOr3ZLKnbrYVI1GZfT1SIm8Ph1iryBnCMvL+JyYieRqOHyLt
	 2szfXNb1rRwgVXk5hiWAn3nP8KOcC2Evq78MdlljlBuVU46H6C3aEUffkuduhB2N+z
	 zwgCtJ6uSpd5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AECE9C531C9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178507203368.25713.5141168859031818909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78c4644d320b2aa34ab9ccd90e6c0ba0559c84233cefa82eab067e49a03f5fae
Date: Sun, 26 Jul 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785072033
