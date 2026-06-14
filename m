Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DB371E9906
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 19:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781464594; cv=none; b=U4uQN+TQZLzJlWNoE0UwN7Zh5myu+7M2AkVQrYdSqNz1nQRK9uLxWFzb1dVNwIk5lWrIAK2RDB4iUE/DRITjsUD9swdN7uvizMI7YPXDgJ1l1qhpXA64yGI36QKZlQVZuvjoRgXjwhH1YcjfgimxL7xmOmbSxDOz4O43jl54wqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781464594; c=relaxed/simple;
	bh=dkEP2ezhee5n3I88Pp9mI2laIADJQ9mglxqT6N4vDKI=;
	h=To:Subject:From:Message-Id:Date; b=H5aNlgvVGKlSS/b7s3nnaCMFKKGy1WEzrGeMRaSI2bxGryijP8NkQ4KROJ+RBxehQq7XGHzGT6n19aXl3fcq2NZzpF37U+Y3JAe8c081xVpnQ3Ms7EPcGwtcPt7qTBQ7pJ+UIKIfzwzVKB/GRYT0ggvIz+syCv0iHmDb3weU8sg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uY2Vc0N6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uY2Vc0N6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C348DC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 19:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781464593;
	bh=dkEP2ezhee5n3I88Pp9mI2laIADJQ9mglxqT6N4vDKI=;
	h=To:Subject:From:Date:From;
	b=uY2Vc0N6qkyVk9lHOgimxFXm5RrQa5b3i00J6Pvyrqozn/EiackscThUxhxoAKDUl
	 6HL+NgDrLXm3w/G1E5Oc6D1Bhmo4wR+HgdkJ0uo+cY76MWIjQpOJHo9mEYd9Av70eo
	 FT9C7xXh7Q41BJJGNcfWHEJJwBBXEofv+fe7/cdCmihAG7TTTolUDLqBptmwRVCYcM
	 U9Ufm1Te5Ds9+Y9aAcHCWy3skMPV/cB0sAYLTNqqyz4lFxlSXRq9Ov5DyD+pU7tTge
	 jSL3/5HYRCHQS69TMBmfsrLylEe109DrqPDSIpU/kyNz/I7ZpFyX9oMpIuwxiK9CWX
	 nLLe6+QIJRtjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4DCCD8CA8
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 19:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178146459368.3035.9294842152374370315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c1b9c1657373ff6a9510b16833d3234ca96fb8f5ff2fa7783d1b89c41ca025e
Date: Sun, 14 Jun 2026 19:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781464593
