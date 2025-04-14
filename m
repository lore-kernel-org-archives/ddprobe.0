Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4083225D906
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744625994; cv=none; b=ptZKFaHvru2xM97kFOu+fjP6iaeQslFmy95P9u+yqiaww4BjoXGXliAi7E9172ORJpHzpMFUCfjuxuf1kMOo2CXWjmy+WI3Le6alxxcHirg0UXisD6Bzo0jcsnQjbxqrVyV86E3HmLA2Kn40+GPsBIPewJO3/odOujaJYGEZZ2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744625994; c=relaxed/simple;
	bh=BbcyN8odJnChVffZBWSjfULOcfsd9YGp4IeruJqymG8=;
	h=To:Subject:From:Message-Id:Date; b=aJSpMeFaVlSncQ+sxOWMwMhXc+Rcz+k3ry6GUuxBEBBZepWPn/QxLOWUC7zBBhOiEvEw1+4S8wjNYcsGeYCctzxxF93vp1CuNLWaiEYVBM0Q7vok7kmU2ZspQBiFxg1maJdn3XWJZMubTG4tEr/ulIy95qPH3stPJJKytZlcvAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cgLFZWbq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cgLFZWbq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3138C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744625993;
	bh=BbcyN8odJnChVffZBWSjfULOcfsd9YGp4IeruJqymG8=;
	h=To:Subject:From:Date:From;
	b=cgLFZWbqDN8/kenejfE4r75kQfV0b1wPX/aIncqkAVtpZ80CNfQoMxdFIA7A8j762
	 y5rUlo+pJoSoFK8tl/UDqrkgtVp9+Wv2QsDqdE1kIMAZfxfyc5K++PWYI+4TvZfPG0
	 xcuSnZeKac4nG8bGoqGAyh7QZPjxextDfaAXw/lmjFscqQXhNxCRHJF7NPyrC79Jyv
	 xZa9f1cK58dOxHJnBI4S0HmQdDzpHnvjxyd7gevp4fNvLDkWtXBcqf0TKbE1uEH1pl
	 rUwP7F4alxQrhButIJ8akkiFLQj2yUTpoRmIGckcCetcx/qGiL5Pk7GHr5gMpuu0L/
	 8YDs5xQUlNyew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D57C369B2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174462599359.2568.1745813072806414449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ec45644bd2e2cc2963cafb85d101b6d2b9be911607dc905eed5a3137afd34eb
Date: Mon, 14 Apr 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744625993
