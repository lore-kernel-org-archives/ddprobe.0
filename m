Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A72A3AC0CD
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789976434; cv=none; b=KxjyDPJs0uXbE1ApGSm6FjHiyitw3dEyWaQKRIS+v9WfYFu/Yk7TOwteqDVzqZvi6qKk7si/MDRjx58knkDJeQ5XgZ/RYM9a7gHFxOL1mGjsIHwK+jxQalCN8+y/tUGm0sna7Ky+xGekq1Q8SHvarG3pptzYJ8tvC6XP2b8frlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789976434; c=relaxed/simple;
	bh=iawen9VWp2Aat3aBOIMR5vHAdF+n9+wxohRqhj42EpA=;
	h=To:Subject:From:Message-Id:Date; b=LCa/upB36PbiOlfMuHNf0SrmHRUiDSF4gyVGpUO4071PhBxEn3048BuSzXdkcpFwS0UfOVtUIMkVR6oK0GaWRzN9Dq1XRrecP6mRHMRMBK0YsAU8tee93PrJ9YWrcAuGMrNkxVG8yHHDxOIY4oPwl4uiWxIh5rNIs6mDxcSKAnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i9QVFemF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i9QVFemF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE304C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789976433;
	bh=iawen9VWp2Aat3aBOIMR5vHAdF+n9+wxohRqhj42EpA=;
	h=To:Subject:From:Date:From;
	b=i9QVFemFwd9EZYJtNOiP8G19KOrapoBc3vEA69wpzEESrYw/1rUVNrapQzlzHr9Cm
	 sEoDS9/BOuB+lhZGOESrQ5IBSWc3s7Dhf9Z+5LL7Pr6X1+I1ZP2pIPDXZkJVErk0wX
	 +txVJ2KllrYf1dLpLo6sjv4opPe3XM86hZQnowLyQCoUdpO8wI9aoTlIL9yeNwKWbL
	 xpxgJYQ1KRW+n+sZs3w//NAIsEHPgt3q6Ug64wdLI+Ce3GP/4bLzw/nFZ2T2NafHi6
	 TEcAcKtjcJ+6HDKLbHxIytS/3meKr6z59+ZeVjlOiutWIzJNiBgqgf1Q+iaLO9Q2zD
	 khzwHfCKA3RaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF62C982E1
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178997643369.4967.2399529150839761908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec1999b4c0b0d3133e4d8673936096686de63d63b0068d71f9136ad378e01a0d
Date: Mon, 21 Sep 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789976433
