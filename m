Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65C7E35C6B1
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 21:28:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784669315; cv=none; b=nUb5492m1LUzsEE1jO3cCohCIKvRvROfinZZ1KAx03F/sSNl5z42GEPG0DtzRDVZ6aAr5pfD+cdDGGBBVLqY5dAtRxdjjL1MWLm/L3/Rs4mRfTf0LcKaT0SED3po4H/Ubg1duowdGNBAwZ7ReEUEy5J7nnbUDkHQHXWcwIol7Xk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784669315; c=relaxed/simple;
	bh=8tYIULlWRQBwFr+jNrM0U5w7moEsOq/3kFfhf+cBsFI=;
	h=To:Subject:From:Message-Id:Date; b=MHoxdxArXBzEKJyWnZHeTdAwYI8IFFyx5jnns/BZt9lfdH4TJlzlASbWnHNLsKqYJrvtLDG78GZ7dj1rXzlqv1sMvPS5g8yLuCfScvnqizLc4F+QYxNFGHFSAJIsm935kUlUTtNnmjijI5iKoaUlXe0alExtfKsTHvbJf3qu7eA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZVtuIvwk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZVtuIvwk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEF33C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 21:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784669313;
	bh=8tYIULlWRQBwFr+jNrM0U5w7moEsOq/3kFfhf+cBsFI=;
	h=To:Subject:From:Date:From;
	b=ZVtuIvwkpF7IbGSC+2Low7h52JjxqrzPmPqyq7uM9lMhIFgo+yI49hSEyZ1tOMu49
	 2JnV4gM5qXrOdSgEsC69EpRZOdUKCc0Gxln75M1S6slqbEef87T68D4jcmbjP7+KH8
	 eE21Sze/9nPO2gzHyY1wL/Umf04dbG5S6LZLNsk1YYWluVTev9lVnFZeTJXNj/fOvN
	 T9JDWQOGtsmgobjVzcC4pih6vjX4x2TONMdA7w2aUln0WnqO62GtI15KEMOc3OtEM+
	 W27m72gJxEWUJi40siaGqj8TZDf12J/U87PJGya6NF3s8gm3Z4L4kSp9TqZWG2AW5d
	 Rtt5wCEiSFXIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3708C4452D
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 21:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178466931369.10689.16587237683092663859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c258c0d2d27d81700a96e41c775526fba746eb368691db2756fffb116add5872
Date: Tue, 21 Jul 2026 21:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784669313
