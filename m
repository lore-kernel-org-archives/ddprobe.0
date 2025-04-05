Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 486022F36
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743886194; cv=none; b=aINkFgYETPs1HdtRtzK7q1mTwCmMsYikU96tNGAgCQRgOmeNYs5AzbYRKDT7osFYHWlRodjjw7sRXGrjjcdqUWKv0JVHdW53Gg+SFamGWaZZF+wRx2YIi7qzSfazmCOHBGCAUp1oKRSxLuECAvYk4l9xhepHKbny4Mpm70xHDzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743886194; c=relaxed/simple;
	bh=PXaN3iP5vwNnKgBuwERBi3t+riThJJmY46akjkSELeE=;
	h=To:Subject:From:Message-Id:Date; b=RjBOAGsC7e3P9L4vg/d81mQK5fi+UPoP74zYgfySVM7xybZKjaWdrtaH0Q/9tuXEcnYlrwrU1gKXHoYvv1E/jV8ebCb1Q5y4vv487yEltk/y6LdaBxQ5+XqpcRt13xdQZh6b1Wcv80h3QP7i+yQ7SavFDGZaYIatGISO4n1fSRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uFIyBp7S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uFIyBp7S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF602C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743886193;
	bh=PXaN3iP5vwNnKgBuwERBi3t+riThJJmY46akjkSELeE=;
	h=To:Subject:From:Date:From;
	b=uFIyBp7Som/bU83xf4C+EyR4riDQ2m3h9K4pvt5QjrAD5gEcMuC+cXblskXMBAcWh
	 RQAEO8X/5sT+9gLyTPM0oLXTKQjw3j53F5/p8eY00MPFCxeImzyVethm6DS+EOtsfU
	 I6lVgRQ1BMsQ4/+Aq8I5ZWLCeFMQWC95uSGXgAfew6eflZ3YEI2VDOqnnIibXsfmFn
	 P9IjayV3vofxfbQ4SsLwE8O20xklim2Hto2j07ZgllAtYSdolWVCqzEga2q5T9AyPI
	 KLMdVktzAUQCWy9yM3zcSXI4OGlH38fRh9TWTdNFBhMN6oEuFrCyCWxs+Us9HBgAE0
	 CkGm2Oz2+TzEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 985C6C36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174388619360.21242.2942757223516942412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f26e2762049a29b5fca495be690e79783044b5f7c7a66b37139738cc5d316181
Date: Sat, 05 Apr 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743886193
