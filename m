Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A7213A87E
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727943354; cv=none; b=sTiIuM1oh7aNGLu2rGVoMPQU57rcnCmwJYQ1qyUPknOv8xcDPzoinxz5s7gYctCoUxgIgQgpufi/qUeL6v8ulr9rzKiKgdYSKTKQFXTferhHCj2u6ylfCwRacwRL1yxJcFPopn96qriwCREM71eBSTeaktpUcGp2j0ReQaKOHaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727943354; c=relaxed/simple;
	bh=S63VFAnD1oYn4b8lobs0In5Q4A8Wdv4xwHng92IElt0=;
	h=To:Subject:From:Message-Id:Date; b=axa6CSDgPmkoILZTGGDuCCqYwNN/5GUgFn36EYyFKLpvRk3LCRK4bzAE4Kya8ZyHDRgvGZUCeB8vbQhoYvhWcVtUPyWSFhiI7LW5qJw+vycnWb/yKMs9sCfhAd60PJVRcVb14JqtpJ56dEGAjPH43q+UY1NmV0fojuZTAwYkXKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rhBQxcw/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rhBQxcw/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D4EC4CEC7
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727943353;
	bh=S63VFAnD1oYn4b8lobs0In5Q4A8Wdv4xwHng92IElt0=;
	h=To:Subject:From:Date:From;
	b=rhBQxcw/Y0FI16n4lizF2bmHmEUNjxMrtfssf50tr8RYtPSOcnXG57KBs2Wc87vQ2
	 w2gBb7ff2iheYEhKIscUkhBH5uDBsB5dP5ykfEKEyk5Mnv7HsU5FQoYlxMhYdQOVky
	 6F9oM0WbhLrHJ/S0swTd1y1SoHic1z1uX2XoNPewTU7omIiEg7a+R1wTj8ulNUNcwJ
	 VHD1ACaSfIQMPpQ4VYscmsw8IFZIWY2ltjWv1CCHLpsgtGrFOvyHx8ay1hOSm935c8
	 C91VqSUubKvkGZO7GW9gXtvTg2KBALJv3731oybC7Uts5718/AogeCIk88Ji/Wessv
	 6SqcYtEv8cp7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9572BCF856D
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172794335360.24442.14311968467451975409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c88f4e9e3126c6f7135cfa73c8ce3f9858c6996ca9de85fcf0c74df2bf408a6
Date: Thu, 03 Oct 2024 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727943353
