Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B26113EFE3
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 13:53:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716386003; cv=none; b=bhanKpoiGudTpZTWN4DssLyl4UY6TicWoEXkifMYXnBbxGWITGjTnlQNeTbsgmcR974u2yqS6+GqazByJhLsxu0he5Tee/C2ihyqeW6rEoJQIdqv8XCcjzHEYhXtf4dL3kLSP0kWAx+eaOymu500Eh/S0EVJgbaxbrwN+JVy4Nk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716386003; c=relaxed/simple;
	bh=KgljZzgE1xPSkQtR8gMfRs1IY6+L+FF60LI+suePRbk=;
	h=To:Subject:From:Message-Id:Date; b=YYfMvg0dqnj8Mnkah4+vSXUZaV+aCjbF8qssLmCQakHcOZyLJzCAB1km/PubOEXQkusX4GJjKH+63r1OYrpsYlE3Sjw2IRRwqckMAjyv1lARkbcznLI40NtNYUlgYVbpV0pgiODOn4Y1bNXYBefHHkTLDH0gC9Mfej9/sFfjuN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AtgNoIW+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AtgNoIW+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5795C2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 13:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716386002;
	bh=KgljZzgE1xPSkQtR8gMfRs1IY6+L+FF60LI+suePRbk=;
	h=To:Subject:From:Date:From;
	b=AtgNoIW+ShkllleojvBDss8beVeh6Y+xO4XYoYM7YQ+Bhp0oTOe6J97HS0RHjVejd
	 JiOlyNTSCZGUXde22OjBxI4z6rwt7diOYH8BcW0KbcK+0bn/Aswze8OzjNDHLgOqEH
	 bLC3FDfVNxwG3IboQWLV2RUDd7EJART3NvGglaEiTWHmE/cLAw6oavHKFYOgnvnQDf
	 3h5A6u3fM2Km743z2zcx9C0p+ze4CZteYOvOveeGYnex35ojnKK45VxroQ7DUVPvh1
	 igR7CzWGRWqC5zOM67+SUjD0j3tIokPNF3WuthsOV6n3uzUHJV9TWan0ql+yA+qOT7
	 iMPkY1q1jtTtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0AC8C25B7A
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 13:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171638600278.16011.1494827061031958954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d56303c6765239996a75002e26826266f9aeb7e2d5fc7d127350115bfc2a14fe
Date: Wed, 22 May 2024 13:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716386002
