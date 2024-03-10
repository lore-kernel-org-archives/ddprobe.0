Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1220EEDD
	for <ddprobe@lists.linux.dev>; Sun, 10 Mar 2024 10:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710068297; cv=none; b=ohjw19ZMGuZahKhB73Le6v4DFi2KTASCX6ToFHWEe1O9AUneFNcGbHZYLYQKGYV6ax9NKq3UPhNY45jy6uTLppMKr+hox9gC+Y6zbsxaVRpwf4Oiw6NRTUt+ThDCKGKci8shgjx1rVfV0GmExg37+ws3cRSppicB/YO/i8sK7QA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710068297; c=relaxed/simple;
	bh=ZaFD2kfrKaBLRDKqCSJiBRFLOVbbudADpjpviTYS124=;
	h=To:Subject:From:Message-Id:Date; b=QHZ2lAc3+lNLPXo/HoUJl0hgUYZYjzaUBZ2EWnm6uCjOYH6Nc8odkbp+UjvaaA6fl1Hetbg/5jxn6jTmn/sHzfSRzqOSb6K/MdhiuWWK2eT9raTSpz8ev5Vf6xkwhYn3g+iwfpOuhfuSFEfV+x2dwaB+1HNh9HuVFrUKIxi1hlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XgI4uMOE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XgI4uMOE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80EE8C433C7
	for <ddprobe@lists.linux.dev>; Sun, 10 Mar 2024 10:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710068296;
	bh=ZaFD2kfrKaBLRDKqCSJiBRFLOVbbudADpjpviTYS124=;
	h=To:Subject:From:Date:From;
	b=XgI4uMOEnhgLu6pLeCtXBOMr9kTQaRpRH8ksmwKw5neTpklek++hhfQbDi5hM/7CS
	 JHZl5zKXB76uuDJ4KW+9BPEDCw5sq+A1a7hauzJ2qwF6aP+8BPUntWdjn9jxyngZdg
	 4UoCyb+dV3AUg3794/fMr9U9AK+e6B4uWtlunLJ2KF10rHQfNLsXn8wTNjRBDDS6eJ
	 cDdpCIv1CojOhRlmnzYJSt9EzfcArJa3121gfhloO9RM1KxAe9kK9zbg3wT+GrPCs2
	 08VpQvUEuQ7kb2L/NbEaZW3ZKo1ahSnGkdRmwM4ac/qnqYAslKR/wz32oiD1/XhXWp
	 43cAcxeCtHc6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 659DEC54791
	for <ddprobe@lists.linux.dev>; Sun, 10 Mar 2024 10:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171006829638.28958.13566470341615418280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ba4dac682dd4135d7baa2687dd37311e237e5e1a6c95bc11de0e1ecfb034f35
Date: Sun, 10 Mar 2024 10:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710068296
