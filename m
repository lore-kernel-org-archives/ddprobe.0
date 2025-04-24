Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 457342701C3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745459994; cv=none; b=ticzoRfQBUNeYpOLpjMowlkorTcDfhXbpKw30jxIR8/TL9If6WglkWQOWYR5uEMQzzMOIitewOL9leffo6cV4k47z7YSVzKUvNi28iDOSRJugj5l+hTG3ePebXZAQ3wnuW0+DKTBjKmdf3izyYD8tsm0K+E2ACpz4fSRjJvSwK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745459994; c=relaxed/simple;
	bh=owPShdE+jTbv6w8FBCDmwuhwONn/yTVpGrQCJwUB8RY=;
	h=To:Subject:From:Message-Id:Date; b=CTY796aSCDHEIPKDZ3AuvzJxCg/ChEDzbIuv7VdBW8geBzc4DkqfKY5dlg3FlqxYJaFdmuZRcaqqR5/oAO/k5a8z/tKkz1G+BBq5tA6+KejzXPEblARxX9tIncD/7MexJyHapkigIxw3MGTX9X1pKjcK2bVPnJ1JK4Uc2fFBal8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qm0ZGB8f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qm0ZGB8f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1593C4CEE2
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745459993;
	bh=owPShdE+jTbv6w8FBCDmwuhwONn/yTVpGrQCJwUB8RY=;
	h=To:Subject:From:Date:From;
	b=Qm0ZGB8fSlKbRbYeYKV5YRhnX+hTRmVboxuhxpLJpyu93aPT78yjZn73KSFQtwJEJ
	 s3lSJawR50a8K+z9LhJ8TkTyFWVMLizoC/cB+LuEqLMH4Ec+dSh6QpdcEw9Ug1JUcL
	 UTO37X9XV3MhCzG8REkyACmfw3zpUMd5UedyLpC3cAi4OCjAwoD2mGgMjChXi8SQTi
	 ITf59ysMHx1BMSNvF7nmK0Lo7t0on5Y0I1E5k+RSbz/t+M1P6R8CbwwFiDK3vJ1xk/
	 U3kyNRRODHWhJAAY/kVrVBhWHUG0NljbaaJHHXRjtGuVFyX/RgXSaDuLs8/Q+E1XK9
	 xTVWwUfEujn0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94253C369CB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174545999357.23695.6126322886548171486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb25997bed070d921470db7a5282136e52541f7b56616533849a7ae9b6981434
Date: Thu, 24 Apr 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745459993
