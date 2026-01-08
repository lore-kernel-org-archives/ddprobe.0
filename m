Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3A36347FD7
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 13:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767878635; cv=none; b=WZzIHPnyFkjJYJq1r2c86Hdn8+VyuPEZT8VdcHkm157OI3kLbb4CkjCKft6p//J1kbiFe+8j1vBslT6/BUr7qY4t4TX7JLNrJb2I5QwrHq6qT9IJvlfzw8l04iypaon5ZTcaXqw4l6pESXEe6/QhTjt9iNtGa7Glzk+Tyf6An0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767878635; c=relaxed/simple;
	bh=DpiBqx2ISFx/TRNJuenpSh+NCnr9JTrRppKEeD6vu1c=;
	h=To:Subject:From:Message-Id:Date; b=q3sEHxwk7O8B6kHP34Mv9DOG8Zqee1lNazVepxlj99MRdhchxN26WwOsQvnkMNgyrvny+m5V1r2F1Ba9PXpTVY1HpNa8Uej+nUI7FtYEeBaFiuY9hX5L2sC+IicI0MoUapEhtleAlBsjvodl8Ag7E6kkHdJLE7JhApcVVLWpJ8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oQmNByUe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oQmNByUe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C065C116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 13:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767878633;
	bh=DpiBqx2ISFx/TRNJuenpSh+NCnr9JTrRppKEeD6vu1c=;
	h=To:Subject:From:Date:From;
	b=oQmNByUeliCSRDLjIp2DO76ZZN5fWAbr+k7336rpaOItoEW4OlDa0r9NXYU8OGBPg
	 A2wWl59EzwPxHZX2ezO71v+NdKgYLGp+tG7GZXy1vU+smuFnE2BMliunAgoWXBGvVC
	 wI501q1hUdgpDBc8S7bOtMgiC8MfRE76bKdFYq121j20PQDmeB+sSfoduRjWURmjq+
	 aBc+r/IyMXvGMk4D+RM4GU5KwTatEbOeB7mSlNkpPHMj74ev+K85ZU47nP8xdRdiho
	 UTmBNN1Qs0xERNzKbEcQR7BatKuaLdnOEb0EOTdGUYHU0wzJjV+iFK5YkAZsWwMwMp
	 0j1Yj2G6QLvFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F069D185F0
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 13:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176787863357.28344.3628689437678529185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f3cdecc6f3fc02f62dd2d6b3c57e25fd22d9cfee28b0a5f0f4366a6f1d65ebd
Date: Thu, 08 Jan 2026 13:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767878633
