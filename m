Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 949832F44
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 03:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716001343; cv=none; b=sLUjreTwlIX1Rls9EdxUljaLqrlPYFAFa4CMYg9K8eXvajE6pAtDMc8KZ5HenUXJaly1TVT2Ev41WjnR7K2efN0ocpsN9O0DQe6CxaWWWhXFdkClwRzSitcYsFOo2Jf+tSfWHIqp5N+m91ucYueydQZ6f+mhPYLRcXmsORgRTVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716001343; c=relaxed/simple;
	bh=Xomj6YhU7tXyr2tNf+e5NyBIffCJUtJxLaNTG5oNBBI=;
	h=To:Subject:From:Message-Id:Date; b=Ora9qgF6bu3uQNBu+Kr13pjRmRFWZZNaxBim6Fym6bw/CqEhX54tzG85V7Y0xWQ6N78R96zmhj9S8Z8Iq9l3ir6UvA07WhmPgZgHub7e6GKyBLwq9AoV1EMz9LKQdOd2LI8+JCpj+NiWekczpyrn3v6u2BQZn2BuUgmIL2fpxLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BOFlUc4A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BOFlUc4A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFD42C2BD10
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 03:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716001342;
	bh=Xomj6YhU7tXyr2tNf+e5NyBIffCJUtJxLaNTG5oNBBI=;
	h=To:Subject:From:Date:From;
	b=BOFlUc4AZ2dfyaKOqRkpfFmc1E1vZNX1eKsmXMjVsToTg6BZPgAieCN2bBS3hG0+E
	 eaWOy7nKtA/3DrR4+wtQM/fwG9aKvn+b1ADIrOsjjribRxGLcwvSmdeQ98Yb6V053Y
	 aQfWC7KD3ldLCNGVVCxQQpuuU+6pjHCiheSRgr61k7tALxF+y6S2ol8qbUfJpvpA01
	 zs3bO/XkuColmMgiCafX7tfGmdTH3eoLWLjK8bGQJYQDHdARhWmjxn3lyQhVBoGgQN
	 jMLb6Jy/fB+TaUhsEQRTZsc2pmyXxPJX7Vg+YlaLhsZVUvWA2LjZqJsQMz2YHRKZul
	 Xzx57arORxtQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C72E0C04FFE
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 03:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171600134277.30424.1198077402842797851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d9379ada70b715f3cc5f5fbe7ec83dd276153854619a8373dadfb25780f2ab5
Date: Sat, 18 May 2024 03:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716001342
