Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1285B282F33
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 05:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774328694; cv=none; b=dzs06ySGAPTqlwlJnLxPbo784aGjn+umTXrfzUFk7bHrfekpHi7Fo1WDqP9QFl7ss6l7UtaLkMm4F9fOVcxeLEZceN5gG2E6kPfEk6m4uZJJ4ctATyjS/UgIm4uSQ9YIpkNXSYJ6w0Nlqb0Pn8cY2pqQ0872pWcYvIHY8iGlUaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774328694; c=relaxed/simple;
	bh=fXwv5RkNmje3lf4AjCZwg8gz+vQqCS3i8OZRWnPKmTc=;
	h=To:Subject:From:Message-Id:Date; b=BzIRuGwTcviIzhtMRqKCBc8HqOE0fplKiqfTKRLGIfnspv3BkCHDb8YXx29BxtARUV+/7dpjYVkkwKlXGv0SSR/QKWwzZrpXMUuRYVeZ+9M3ndVeiKgPeZcunGwi007UkuVI+H6S2pZZjQulqac6l1BDodiq6dx2TRUyna34HA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SRhI0Vip; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SRhI0Vip"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6139C2BC87
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 05:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774328693;
	bh=fXwv5RkNmje3lf4AjCZwg8gz+vQqCS3i8OZRWnPKmTc=;
	h=To:Subject:From:Date:From;
	b=SRhI0VipSVQZqT9cIX8FhI4U6jlzaW6n+OR5q4bvfrFDhFnvRiqTc9Pd+acJIOVfR
	 Q23kPR28DwO6MbjdKlY+bqocAMBt9EUh37X0gVmf1wL3x4pWZtKQdYgkw9U+y5ItUp
	 py7RMbTP2E8s/2D7MKeUnuxZEm6NZZbO31BQhKAq7NbQou/0GM01P/LoNwdBfGdZN/
	 Q41SE9Hnl13lhyr9DUYwjS8J14/ifdq50f9bmO/WijDoTrJkSxEJZiTsQqLRiUeJ2b
	 Xx6LfoADEcUt9Yb5rqQGhq6BKu6jpQfpRM7NsbHKe0lFcvfr31t657e5f8di2Dp5Mb
	 LiXopvqWcYJTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932E4F532D6
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 05:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177432869358.13069.10363492290393819345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb71653274dde07f29a207aee8ee0d111caa8ffb18d72d5c1e8c7b1e9c4c1bfa
Date: Tue, 24 Mar 2026 05:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774328693
