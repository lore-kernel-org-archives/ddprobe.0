Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EEF91AACA
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725173154; cv=none; b=qQ/NXXC/n+Nvyea78Rw6A7cF2QVXjfAkMT4ZQU/7WnGjB1rCidqyuVy6JelDgF9HaW42eIsmcgSCgTX5mDP1ZMriLHuR20iPztyWCh6h96uhHIe3QhHmFck69jVyDnkDR+vL0lAEQjkeXrI++o6jRsX3c07Jp3nEq74SxkYESd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725173154; c=relaxed/simple;
	bh=LAByy+89ROBrq6jdALD2h/Mqh6jdm1VsMfjENZqOaJE=;
	h=To:Subject:From:Message-Id:Date; b=JU9w6IVc4YkbKBC6NopPclwlUtQ2IP/fM6/3aeXkHVddLrIwBQh4cAZCwlVSrx9OK4NDqfB98e8pqMgzCEKwpIYoK2+3LyAzpqsHifx88rJPQYcwSHQwa2YOz5NgK22p3uZ6LTJ8JaX3heHXP9K6OgDYJcoVutXvppKIfgncaVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z1WJDGh5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z1WJDGh5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F92C4CEC8
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725173153;
	bh=LAByy+89ROBrq6jdALD2h/Mqh6jdm1VsMfjENZqOaJE=;
	h=To:Subject:From:Date:From;
	b=Z1WJDGh5MAfJRsiXNJWb7u77brg0pzUrWRyznc8AejFkAT/fmwskGQQ/6BNis97tr
	 CGgNeqDTAfH+fLhWlkvfBklEeNeE8Ke4IzN1oLVeCKjJ5MW35OrrIIjKMG4jApo+6S
	 mD3PeLRDntbLWzOZdiPHfbpI0E7uJ39l5DO4VuGjT8f7dJOZyw3PX9p5iO2TPx8Ekg
	 6F7UvA3npwOMgPRTftKbcVTdszF0jzcpnCH5BMdk8bVfcXAdhL+LHmvPTD5AmCetbO
	 DthpqcZrACM1amOMv4bPwZHex0jJ9EfILztzGx43XIKwSuYK3W29W9YB2Ztf5n77kP
	 dGMt4FxTVkyQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E4FCA101E
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172517315360.27662.9680739825061120597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 922bf0fe8b4af4b7cf2d009f36d8d4adbf3bc34a5d0123cd265eea290ef74661
Date: Sun, 01 Sep 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725173153
