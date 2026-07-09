Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3102D2773CA
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 01:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783561716; cv=none; b=hW2b4Egtg310LgW1GhudebUKgj+JRtlY0cx/JjxtghpnRF14Q1eZJgksQ7NuvWUFX+3o97kM8mpLIPHtSugYUvnSzCmz7wmCbsLPZipVD9bF7DJHdxiyJSe5vNPryqrGJ+oooy0/TB3WJtME7Ol28JrKBFChX5GY2f6/JZ/nK0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783561716; c=relaxed/simple;
	bh=MtuVuEdQpyNnXdjmxNnvOVEy+KNN26pjCilqyRBmYgw=;
	h=To:Subject:From:Message-Id:Date; b=ZacP6h7NGbYABH8+tp0fhKreU10/lOae5cnYaBqIJpcEmtUQ2RLysqfWL3u2NRmVAphOT6HuOt5DJWsqLaCKzjgpbWrw8ow4hOmSnQ75PwxCDiZ15b9it7pPVG1rIdNJj9h2JzGVeVjTHEu2wlkcbud/sNpO4JJSVdWOhk3MJ1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SPtgzeb2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SPtgzeb2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9C45C2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 01:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783561713;
	bh=MtuVuEdQpyNnXdjmxNnvOVEy+KNN26pjCilqyRBmYgw=;
	h=To:Subject:From:Date:From;
	b=SPtgzeb2JTgYJ+dLjRsrHMUFaqnkogETvoQCTsLvB5CL3Cz8+KGXeCXZdWcME/9B9
	 VWi2ro/9HZ2xQYHfc3EEGkbKuLyawVXy0eXxYnQB7K+P5I47/x+HCjrUu4jMh+BYEz
	 KAwA32/m+qBtCyStXmkjdkiyLgULiH5S2+4RY3AsbKTAQA9zsF2IMEkAkp2Bnx9LYo
	 03jP80JSQKbT0xbWnS6w/V4cxvVaUi+d5opuPIXUJb4hH5AdcHUzLt3z9G2lZocld9
	 dS6amyi+Kh5sYkuU3NIG81VMyqtRYe2s6eQUJclUQ4ng9JVbmY50k+3xvdxFIwC0He
	 Mg5GHO0LsNdHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B1FC43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 01:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178356171368.973.3332655485022147404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 028a90694000cec6fbb7c86d5d8584d70a75006edcd3fed12f3755495f503d8f
Date: Thu, 09 Jul 2026 01:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783561713
