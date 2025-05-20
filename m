Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF8F242D9E
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747747794; cv=none; b=GwglLYcZym4ULNMYar664pS47kYEojdUm/SioJ3EeWy91Q4ypTlkfIJJxUD7icLTLVUTXJ4aX7N7TqldstgEm7ZT7B9sg4Y/tvJ0kpK1OOtpU5yBlEzOHaE1ICFflg1yAJHnE+nB0sT9brNoy0DGoahSww91MQkFezYFOyw1eS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747747794; c=relaxed/simple;
	bh=5P9mKW1qC7CyzY0/B1vPKk/dG5zwl3qIeOeKJ3xZrRs=;
	h=To:Subject:From:Message-Id:Date; b=nzlF4KJe7zznlJm83SqFE1+qPjyQn598rSPLiVmb0KAy/hc1O/lXzdJFW6+qjI3EwUnQDBLPg8Mp1DmxqLm9dSCGOO/v6APq2ZO3IOkLsL5R7eCCYahBSGZ6ES2bM3JRAdc2cEFzl71JXc/abeE4B3esN0/8wWAApbFbCssQ6eM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kokB0Yzx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kokB0Yzx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9682FC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747747793;
	bh=5P9mKW1qC7CyzY0/B1vPKk/dG5zwl3qIeOeKJ3xZrRs=;
	h=To:Subject:From:Date:From;
	b=kokB0YzxAnyhLyrt8UJ0xlCOAK1DxfIi60d98fmvfme0IWJs4J2SveOkM/s+ZMz4Z
	 wxWh6WC2ZWcsUb6xdqmNybYKdRfbRyHusWBAayxg5u4Ir65uWxyHXY82PgO1OVOLxK
	 6JUgbOTHFBuupXXu5G8k+fwH1iZqlNma1qwRrU/vJGW6QZGdsV8X0ln72mZhTu0WIx
	 MtJ3Vf+qXEUlMWozxJAooWd6gZwuGTlQ8AZbVHyXATsksd9RMyF4MQCAJFwLhktNdt
	 NhIG5TOhgGb+gWXXxtvpmqwdLHCrPgAq+GYccd3mGuCsDrWHQm4B/wXXpJrKS33Ql6
	 61EO2Zx6V/EUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E807C3DA6D
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174774779357.7369.5348197796475110526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6b5cf894e72c770a5d7d4bf90ba62fd5410afe07b66742e703734b3435875e9
Date: Tue, 20 May 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747747793
