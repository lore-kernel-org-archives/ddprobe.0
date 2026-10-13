Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 423F04AE128
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791872434; cv=none; b=FRgPqEIjf/d5BkqHJfxJQIbB73bdYHcWh5yp981Uv7ldE3fH4ZP2aAh5A0ks09L173gk8vx22jIHb5sw473PhevCGxUQoBzpRwqVAxU3N6/v2tvjMhoJEcMxirNwpHYXDwGbBQynwDxRnqbp18uuv/07TeOvy19dYKPyigdpyp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791872434; c=relaxed/simple;
	bh=J14ZZIm2ySlT0mnEVehNVXz8a/Pkg5MnFEAlK2rNx5s=;
	h=To:Subject:From:Message-Id:Date; b=s8UuWbf5xy68GTx6AL9D/9VWu8NppCtfKvUYINCozHe8sSXkFBQPPOdL1cUYgYs/dou58ZR4rt1ViO5PcBfAoIIabUrNInElQNXNkti45tVd96aspVMWGhXuyXWoEV4UvMvliGbUo5y9cWmuENIQxonVliKAflvg/e8A1o+vHZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BxEcFV4M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BxEcFV4M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBBABC2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791872433;
	bh=J14ZZIm2ySlT0mnEVehNVXz8a/Pkg5MnFEAlK2rNx5s=;
	h=To:Subject:From:Date:From;
	b=BxEcFV4MGMMNxqwSAcglkQCaPUtL/gLQnN3c1B7Nniw490W2JJh6Vj1IEv1js/f9q
	 xEGNkIOMdfvVMHzAuj1XgNaRB44HknrTQrOg9JqhTXtmqeyitycuH7SUwsT+zyt8UE
	 dqcH0WtN6pFI7mKIKGfilrH/KBsTpshSomVVjFx/rf4ywlSWq/CewKj8xHQkByLR7f
	 A7TgOHUaQ+Rlk2h2FvXv+HFdOq9PkSqKAQN2BkByOMFgfNL5N3LbUB7jUvpw6lyzjw
	 eskHMuGJtVa/Lndhw4iFqme0oTTDgT9c2jd2L69Ajh0sVTZdXjfkHT+bnNnD5+yBjG
	 W6QYdOcbghFBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B46ACCC6B03
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179187243372.22536.17850588125274957352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b99963cf77a2b8f8bbc1e0e4bafc37c0e4c07c1515930d33715dc9aeeafd6d44
Date: Tue, 13 Oct 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791872433
