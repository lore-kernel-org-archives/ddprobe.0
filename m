Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1654F15666D
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727728554; cv=none; b=qjwLTdnBdvYpdd67NaS836dh0DTbkWX47OKAz/7oudRtQQBev4oSyco38o5k/pAx+FBfjnVdIaFks8sotiaWAnacBlah/UBYh8xXJXqEaIujK+njD0XdyzvmXsDrbiHV+plyvX3wS1OKIcvj2FtHGMjV3WmLu0Ql6fvPbDKyazM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727728554; c=relaxed/simple;
	bh=8zmsjKMwDUUk5OQ/XHrb/2YVquuyXD4cwgB1Zo0oh1g=;
	h=To:Subject:From:Message-Id:Date; b=QZ7DYAY1QMyb0HhQRdBDHDpOJkxBN0fhfyclo5YIrs31piaN+YnS0R4uSdt+XkA0o5TmzjgHJelR+AVmzaxU9XheSktQzDApetnpnCgLXgKFKWRRJIdvmvZJMwhMAV2y09OCUO6+jLjNwQOlARTDreUc+3CWw3aOBrEZEgAJYcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lm8NlPmi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lm8NlPmi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C2DC4CED0
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727728553;
	bh=8zmsjKMwDUUk5OQ/XHrb/2YVquuyXD4cwgB1Zo0oh1g=;
	h=To:Subject:From:Date:From;
	b=lm8NlPmiUru1csBR4/EwtEnXQ+eIL/VuXkXL7HKGsnW9QmR3Hl/R2s4TvLQhf+YIe
	 iv0CaqNwYOicdJMgeFAoLbir1y3VZa+gLwuEjME6HQ0oV87gpAOT9dS4Ku6ImpFHHt
	 L6gZfENCnvpj+iaNiwjDnhTG6a3GDBloLmbQBS+nVx6PiMhj0DNmXwisvkwScllTWz
	 aBPv1kPnzVxYA1O84/2BSHxu15DV+xR7+v3dOzMXYkWumjR+xvF9zR6YcshyjWzmZ2
	 F7+hvXjzhZ69DJr8yceIxY7lUIQqmo4Z+jzz9AIL89bPnXFXApNyy1s4P6JJaB/DRz
	 tbsL49g1WeMwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FE9CDD1D5
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172772855358.27146.7530118032478776808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3c7013f9607b5f7c06a872c082718b8994d686029a0920acfdf904ea3673d25
Date: Mon, 30 Sep 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727728553
