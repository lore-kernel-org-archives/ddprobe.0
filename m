Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 090F91684B4
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756603794; cv=none; b=tcZtRj0Q81N0UHyRd2LqRkeKSHk4VYxw1+QU7zqKMnuEVAPO8jABnFz+zQvHrdVtmNv4U4o5NjESn3bB0n++mS+dKzE3HpAgZv5EbP4vYGLAK6E5uCFm9VYDIlyCOna+S+2mm7OIX+BZ59zyXSzD5g5B9BpiPvK/9M7PY0JsKKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756603794; c=relaxed/simple;
	bh=BW1qUG3a3jmvZflGttlKFzERtB+0X3GsQ1LoReWeK+g=;
	h=To:Subject:From:Message-Id:Date; b=N4MI+iksfOiziDOrFKZhyhAIPWr3L46WUNKF/uqtzpDoSMOigLYJI8shvy7mYZlKmx3nXDSXUcZepnzOOVv6QIPqifrrEFftnkquNDo7Fe3O/GolpmL6V3j7/+D+aWb/OkWq0Je5+AZTW1pcJx2fBeS6lnV7e4XzOlRDJLJToHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U78NZvW9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U78NZvW9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A290BC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756603793;
	bh=BW1qUG3a3jmvZflGttlKFzERtB+0X3GsQ1LoReWeK+g=;
	h=To:Subject:From:Date:From;
	b=U78NZvW9FR6O2W191uQNahG/Ik7nnqtDOteNg+ByrB8jJELRxyuZcyrf+FPxkfihG
	 uEaXUG8HNQaPxaZY23L0gdu/gq0qzyRL9rlmj3vcEQ5aFqABDAlfNVZtGu2qlYD7ch
	 UxBWiSwN58YDCOU890nXYs5QE7Jutd4LBgLdHV6I7JW7ZL1xEB6+MVLVgyiqQPiUJB
	 ALwZ0RcsopG3hmBkjgkDJVHGyIEPy9xheP4vTdb+dyzk64BibuPKcdjB3xt5+Hv9Zg
	 0RH0T8egJsnoNl4fFP4EW83ZUFOaDbtwqdUXHqZmBFnb0WSE6gAXxlkWz3fRWB8wIJ
	 UGNPG0XYkztjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901D7CA0EFF
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175660379358.2726.13468245563147404313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81dda486c66763be6d64ad930f2b5fc70e1638e2b2e659b9113c58704696abeb
Date: Sun, 31 Aug 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756603793
