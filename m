Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FA10134AC
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737836754; cv=none; b=S7IsDuKZKUb6fX1fuC9nis7nWA9s+jQgZmuiIzTpaA/5Jf5cqx1/BG9VS304GIMiQg+a+tKBzIS/51W9FlsyTlVssi0aT6XYKfvPe6ocJ3JxEZtnSI5D7yBMZ4/x3Yr0nJZX5CEIjjIYoGI7rvi9Y5rnF8fGCTZvven/3Gt4o5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737836754; c=relaxed/simple;
	bh=Jb1ucRKYENyG5I3OQvmDlK1B5biCnQdRUqEiZfXMjlo=;
	h=To:Subject:From:Message-Id:Date; b=KQzrjobqKv1QIiwUvPXzJKv22Tosm3aNP7xcnnlSJiqrWumHPum2t7DmDZRq3lYjc3boAw6fX0b5D7haAH2AAKD6v7ZQPK8AXcENAHeh7SJFVOUMiKj+qcpEOlxskyj3bzkgxBj1p+nUEEdBvADf47yiq0FCMZ7dDMd6q5vJjU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aBdnYZQ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aBdnYZQ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB36C4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737836753;
	bh=Jb1ucRKYENyG5I3OQvmDlK1B5biCnQdRUqEiZfXMjlo=;
	h=To:Subject:From:Date:From;
	b=aBdnYZQ2/0TGdxTxVOay6mXkr9ziC1IySrZVHwDyDw7jgZoIMSHcY6o+LmahpZIPy
	 +QuO8tWB77c72VaFRwSfPWSR8eIiLeI4hAeI6yKFgJiba//d4oLOkdLFgkwxpSYx/I
	 eIAoRPmCpmISmxcBjm3IowkUGCMeTImNZidkxh25O1crHy+KoQAocKSdhrt8UE5UA3
	 Epb+FLnym5aIby7QfLIfFXbHQzg0UUMC+A0CavrK6QqkKP/M0uK8cgGFrRRzSVTpyx
	 UPGeuNcNI7OgK4pe2jxMkWV7HgFC1Ini9506s22jts/qI1GZW8tSjtrLobeSKaMOhB
	 a4vwjUZdjojyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 971FAC0218C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173783675358.12686.12343948430583899379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05664393de4e853a61908446b6f1e88ca1f66406eac6d89f3c844ad509a69249
Date: Sat, 25 Jan 2025 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737836753
