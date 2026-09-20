Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BB75368D4B
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789884634; cv=none; b=LNeeDit/9CIoRGGGqOKDGvg7YqWE6RWe8vBOtC5YhRybbb9vsWgq7Dav63COkIcp+A0ptV+f4LJZZqjv6c5+aqkHwGIYnyHlEP2NHVPXCARSuX0uHeCacxPzfbAYiy9pCVxR/defYwnnZpFev2ZqhuJwNybRXNA8oCBV7b9SL30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789884634; c=relaxed/simple;
	bh=ahJmIE+ASGGauCORi0EEgNThOJhTRLFx+lNCJTOO6Tw=;
	h=To:Subject:From:Message-Id:Date; b=or8DHkiWmW5B9RsOSiWHicE+fAlh3yiN1lJxfZGgPKdVWzsKKnYZsavY7tWI9vCh6oEg5pordeXJSV5R5EUB7PNlSkfTXZcvUQ++1lY2DooOKagB9HV0cOtZhwmx/X5UGDbtPAj1gjg6LS1dCOku8/r9cxTyaKiHSbWnV58aldk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l8K5egIf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l8K5egIf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D14CCC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789884633;
	bh=ahJmIE+ASGGauCORi0EEgNThOJhTRLFx+lNCJTOO6Tw=;
	h=To:Subject:From:Date:From;
	b=l8K5egIf3RiXTqKGjDqt6FQZyWe/G2VZZcIsQ5r7KGUWwXMYUcgU4mL4/zCqGRRVz
	 fjdHuwDl9Guh5GUfuAY7RZH9rU31wFKRbVnNwZOBGPtL1LtfXD/+A9v5G3GkxPjSg5
	 IFRFNgQm91pop5uVZRwvLKxSS7GXjBRWvG63bTmbMV3PHCwlLZNBp94mA8bSy6g6jM
	 /8a9xU6HkwAB96vZdXW4nsuJk7YNXR/RihBin7IpMhdY56n+qnUHFjXJ1wzWmde/4t
	 LypvnC6G/8O84DGxCrbRcWQTVva7nHn/x1DYuGi5MsPbRXyV2ilTCzICiZmdBUQ89x
	 gjzsUP9i255jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD5FC982CC
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178988463369.29650.12201582790199522195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d387f9ed5a45f3196d5571c92e84ea8d78e70bad8ac2cb45def4378389a4554b
Date: Sun, 20 Sep 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789884633
