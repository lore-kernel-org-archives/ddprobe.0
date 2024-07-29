Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EFB284D34
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722281154; cv=none; b=nkuiwsyvgQ5NxttKZF2Mr0x/xKVj4NMvf/0cZaq1XWzoPesUB3WvKF7m+o4vk5WoYkNQd4hkFglsh9kJXOgbf3tf2XZX0FvHy7O62NEiec27lJW6GD5W+8uofsmjwNmORbFlC/iFxAiw1vga4/BEw8DC9DTbztzh1rRgK+QH6kM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722281154; c=relaxed/simple;
	bh=e+RR7mEoS9T+TZS7m302Gc/S0DbmdrQkZCy9DSz7kc4=;
	h=To:Subject:From:Message-Id:Date; b=tG7ify5b22d5g9xo4Hf7uV49E/XeGHJIGQBjQs12rob2P4ZgJ+ZtiFZEHVnCVas37yRUIW7y7n6ffqPOi8XowZ7j4opsR9qbnDASWvszUu/63Ep9K3+P6+XwfZwCPU7ukW2+xCohhTEBZU4CdbaeqSfeBc+u7T0R5trG6dYoMcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NfjolQxp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NfjolQxp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FC9C32786
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722281153;
	bh=e+RR7mEoS9T+TZS7m302Gc/S0DbmdrQkZCy9DSz7kc4=;
	h=To:Subject:From:Date:From;
	b=NfjolQxpAkmup6ZTkl1p8IGhSoCRc7oPa8wXJRoDSwGbWQyc1sdISJ7m7A00NUFAG
	 FDv+PxeeoUyV88MTPPUJ1KgqgiaHAZ5EmXRr0vKCJM5X+24JEn38869ckOS5lhudHb
	 oXyaEN665aUjdAfC6kUQzeNoedNLV3zVvi0QqQvKKj8SU+3QRcOA5YHl/nIDEv9qdc
	 p9gAyU/N5sJDanVbonH/68IdBrGQ0zVgKCtq8okmmm3uI+am4GXsPyTePGiHLyl9OP
	 xLkfdbY72acHZiZfL0WaUNnfUg/AiugBN/VgCx7SfPg3XmIbYHDVuk/K5ZhiT0qa8U
	 ApdlP5Wa4XcDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F705C3DA61
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172228115357.30699.11429204641404107783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07fcdcf645e592baa19dfd5ca4d62fd0e379d947378e68c4cbe7ae5b016fcfba
Date: Mon, 29 Jul 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722281153
