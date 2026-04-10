Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 216F92857FA
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 03:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775790454; cv=none; b=A/TToZoWO8jVHu2MIx7PF5t1AJBMPBgc2lrFXWmiRlAhcnfQjPKSP/eKXVTxF2xkXV2IOF8kevqW9gfEqVVZtge3RYkNb1oa/m+C5yoFiwFG+pK30uCvfrgmfTT6t8jvS893kWcChAk0x3ngn66mavGRylYWanMT14/IsrW+0/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775790454; c=relaxed/simple;
	bh=AF7r2rnwE2gKyNpveFJ3bWYalKq4WM+bGfwtM+7ZeMI=;
	h=To:Subject:From:Message-Id:Date; b=EZm6v+4rblXev45i4ByVLrBWpfBa7n/6my7M+Omuyk/pOboNBjomM9XDpyLX8lPw6FSDSVz5eL8uTMA2JKodrQoOPsIkhBkyyVPBSOWBTJDcGj9fMIYumBX1YGYGPtiG6dfsddQb+jEjqWkXifdiB40PLpOASZNynq5HH9N18Bw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V1oxhsUJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V1oxhsUJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8EA1C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 03:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775790453;
	bh=AF7r2rnwE2gKyNpveFJ3bWYalKq4WM+bGfwtM+7ZeMI=;
	h=To:Subject:From:Date:From;
	b=V1oxhsUJsRGKPTyOWI4/Eyhj6wjUKPnlky67ho3ddAkkmpBj6DVuXny0WaxH+FHxQ
	 1ab7yc8DN7wgwEWeUW7qn0s0FReLdbeMWczqIxj3AagbkUOj6EZ7XiwWVwmEPHBQIr
	 2yJegQYM0OO91A+A8852QPrxBdx7PIQfXnZ7e0pAp/jQdp4LY75VXCwSkRl0W01Gp4
	 UdTzrMcC7rMfA3TG8TR5Ceg0TywKeiqM/nFvajoq5OT1xBsFz5syazhb+1AK6Uj8ab
	 OVLPoCkLo8HIdAVCp9DcjhLH7o+zX8Glx5srNA8uJ1y+/wJvzckUnDvo6cO4P0sCI9
	 9/W5c4bNZsbYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9714F36BA2
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 03:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177579045368.27249.7190343376564623955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8eb73ac6b5e285151fa652297130a167f30850a03947f103dcc0e63e9d389c09
Date: Fri, 10 Apr 2026 03:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775790453
