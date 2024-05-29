Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54B6F14A09F
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 00:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716942263; cv=none; b=Jz7ar34YsK+eGg/oqoYfpdZjvL8AdnUwmV1pfyX1KlFqEA0tk8nUK7p6jVPhw+KpkMkFMWOJJE+JoRpWoWDjJOWgxQXI1O5epYvLpsP6Mszm38LAXGVlWyqcGw4hCFXpfPTCnEFfrfgQBRT4DXLCaajwf8kIaf79g0mNuNvo5pE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716942263; c=relaxed/simple;
	bh=pPDqTJU24eM38dLtoCMA6PXkxd96ME/9yr/V+HRl8qg=;
	h=To:Subject:From:Message-Id:Date; b=R0umm+rrcEow6LHFVD5GJt3f1v2NHDJx8kTdhQmYduXGF40iVZBhgx8SFMqo1knhT34IXduMQEjXxfI+/Ey/F8q4NjJjvl832JEuolrDYa0dMnWzWPR0lgKz+YBk6aL201EyYiOtgPNc4aOJXvMCEWVKepMd54E+DzoUdUpB7o4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LWMF/Pxx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LWMF/Pxx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D88A3C3277B
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 00:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716942262;
	bh=pPDqTJU24eM38dLtoCMA6PXkxd96ME/9yr/V+HRl8qg=;
	h=To:Subject:From:Date:From;
	b=LWMF/PxxT2YijDkLrwEUbZ9FN45Jmps06uCmkjgjZsyPho9DRCKR2aSnvIaVkgw4x
	 p+2+n2eLbcdzT5fMif6MviMJgTA2+5wiNoXXx2prvXQXcus8d40OvOr3H2qTAKL0yz
	 79ZuaKjvR35iRejKmBlHfjtv9NWSk+lVYCdP8mhoEizSRDoOXBOXdHuvxODSUjq4Wq
	 wrQMW5IiRP1IlJ+/Ng3prQMofmwb/HyZE0XrzO4S0Siczyl6XZ7PTOh7tK8HYztd1N
	 LFxOhS4fsVR/STj+VvtAYmCFu6F6QcMW+WVqk8dyTJ19bIRl4yuA8f2uvuvo/olQga
	 qhCsG+h8q4V3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF1E9C25B78
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 00:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171694226277.21108.16451412155043779603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55d8c5ca8a0fd7d4ca756c59ed4f7990100383cbb285d4ce698deb5977897456
Date: Wed, 29 May 2024 00:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716942262
