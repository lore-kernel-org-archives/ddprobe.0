Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1198520ED
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 15:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768662234; cv=none; b=bP9khG8//uRZUcg0TXBEhGAWiGlXBEIZdlZz+99xe8rl8MzWvc4PmH0oYmo62Fo1XUlYGVsvelYD5g+zc+1n8RNIGe3hl/hZ9i773A4j9ytHnIDcFy7VTgk6tEqNljxeH6QuAvW0tG0XuKdQ4qSEAL3v3rO7mzdsBDZRLD5+1xE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768662234; c=relaxed/simple;
	bh=IJ53CBZfFmbgdr4nyC4YYZgMpQy8rt26yhT52fLuiac=;
	h=To:Subject:From:Message-Id:Date; b=AvbMG86TtpFwnySuH3Pzqbpkl+tcl0kivBHQwgN0pxES/NfpWV3BSOKfXV25R+UGbdWYvPpGZ4WSvDKgZBIYrOfkLNOosHzGgZrpkZyfGJne7em1udDDAuePmGqzf9HE3QRnAQ0NajRWxNcaJNc+0zROt9p4ydX/4IUfp8wLO0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GWEFNEWL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GWEFNEWL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A863EC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 15:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768662233;
	bh=IJ53CBZfFmbgdr4nyC4YYZgMpQy8rt26yhT52fLuiac=;
	h=To:Subject:From:Date:From;
	b=GWEFNEWL6Ebcrybva+Bz+JZaH04T//GA6Nv0qC7Gty6iRYD7oOFAkqKL9mFvSBsWw
	 JjWtlYsyzd+03/VHxYi0CUZmDmqx0wZ/z0Ml//2uE4v0fyxTIq9U6l2AhwiwNnyD2e
	 Xjjx7uEsK2tKSItT8iqX0aj7aYmRW1CwexZnBA3Y34OsLAW0PQ/iqfd4HAKF3oWSli
	 xkOtV0Ve6HhLb6NPdSis0vx+0IeHtWHUWI6jDo5iZJhRSQgBSC+rpesJyYA5UvG/I5
	 C+Gnj/7a6nbzuU6w3p4bmLPJ+xA4LeFXctGqlC2N7HvGq0rCvNYLKsSkC9b2B4E/fC
	 OFU7BWqKOFqqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A8DC98315
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 15:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176866223358.23831.8170430437748388811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efffddecda33a66ebbf0e8164e21c02d40a0c3dda2a64f072c57c35bc1e48f05
Date: Sat, 17 Jan 2026 15:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768662233
